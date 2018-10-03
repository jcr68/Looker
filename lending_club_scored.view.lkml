view: lending_club_scored {
  sql_table_name: "LENDINGTREE"."PUBLIC"."LendingTree_Scored" ;;

  dimension: addr_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}."addr_state" ;;
  }

  dimension: annual_inc {
    type: string
    sql: CASE WHEN ${TABLE}."annual_inc" = 'NA' THEN NULL ELSE ${TABLE}."annual_inc" END ;;
  }

  dimension: annual_income_brackets {
    type: tier
    sql: ${annual_inc} ;;
    tiers: [10000,40000,60000,100000]
    style: integer
  }

  dimension: delinq_2yrs {
    type: string
    sql: ${TABLE}."delinq_2yrs" ;;
  }

  dimension: desc {
    type: string
    sql: ${TABLE}."desc" ;;
  }

  dimension: dti {
    type: string
    sql: ${TABLE}."dti" ;;
  }

  dimension: dti_tiers {
    type: tier
    sql: ${dti} ;;
    tiers: [5,10,15,20]
    style: integer
  }

  measure: average_dti {
    type: average
    sql: ${dti} / 100 ;;
    value_format_name: percent_2
  }

  dimension: earliest_cr_line {
    type: string
    sql: ${TABLE}."earliest_cr_line" ;;
  }

  dimension: emp_length {
    type: string
    sql: ${TABLE}."emp_length" ;;
  }

  dimension: emp_title {
    type: string
    sql: ${TABLE}."emp_title" ;;
  }

  dimension: funded_amnt {
    type: string
    sql: ${TABLE}."funded_amnt" ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}."grade" ;;
  }

  dimension: home_ownership {
    type: string
    sql: ${TABLE}."home_ownership" ;;
  }

  dimension: initial_list_status {
    type: string
    sql: ${TABLE}."initial_list_status" ;;
  }

  dimension: inq_last_6mths {
    type: string
    sql: ${TABLE}."inq_last_6mths" ;;
  }

  dimension: installment {
    type: string
    sql: ${TABLE}."installment" ;;
  }

  dimension: int_rate {
    type: string
    sql: ${TABLE}."int_rate" ;;
  }

  dimension: loan_amnt {
    type: string
    sql: ${TABLE}."loan_amnt" ;;
  }

  dimension: mths_since_last_delinq {
    type: string
    sql: ${TABLE}."mths_since_last_delinq" ;;
  }

  dimension: mths_since_last_major_derog {
    type: string
    sql: ${TABLE}."mths_since_last_major_derog" ;;
  }

  dimension: mths_since_last_record {
    type: string
    sql: ${TABLE}."mths_since_last_record" ;;
  }

  dimension: open_acc {
    type: string
    sql: ${TABLE}."open_acc" ;;
  }

  dimension: policy_code {
    type: string
    sql: ${TABLE}."policy_code" ;;
  }

  dimension: positive_probability {
    type: number
    sql: ${TABLE}."Positive Probability" ;;
  }

  dimension: risk_tiers {
    type: tier
    sql: ${positive_probability}*100 ;;
    tiers: [5,10,20,30,50]
    style: integer
  }

  dimension: prediction {
    type: yesno
    sql: ${TABLE}."Prediction" ;;
  }

  dimension: pub_rec {
    type: string
    sql: ${TABLE}."pub_rec" ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}."purpose" ;;
  }

  dimension: pymnt_plan {
    type: string
    sql: ${TABLE}."pymnt_plan" ;;
  }

  dimension: reason_1_feature {
    type: string
    sql: ${TABLE}."Reason 1 Feature" ;;
  }

  dimension: reason_1_strength {
    type: string
    sql: ${TABLE}."Reason 1 Strength" ;;
  }

  dimension: reason_1_strength_numeric {
    type: number
    sql: ${TABLE}."Reason 1 Strength (numeric)" ;;
  }

  dimension: reason_1_value {
    type: string
    sql: ${TABLE}."Reason 1 Value" ;;
  }

  dimension: reason_2_feature {
    type: string
    sql: ${TABLE}."Reason 2 Feature" ;;
  }

  dimension: reason_2_strength {
    type: string
    sql: ${TABLE}."Reason 2 Strength" ;;
  }

  dimension: reason_2_strength_numeric {
    type: number
    sql: ${TABLE}."Reason 2 Strength (numeric)" ;;
  }

  dimension: reason_2_value {
    type: string
    sql: ${TABLE}."Reason 2 Value" ;;
  }

  dimension: reason_3_feature {
    type: string
    sql: ${TABLE}."Reason 3 Feature" ;;
  }

  dimension: reason_3_strength {
    type: string
    sql: ${TABLE}."Reason 3 Strength" ;;
  }

  dimension: reason_3_strength_numeric {
    type: number
    sql: ${TABLE}."Reason 3 Strength (numeric)" ;;
  }

  dimension: reason_3_value {
    type: string
    sql: ${TABLE}."Reason 3 Value" ;;
  }

  dimension: revol_bal {
    type: string
    sql: ${TABLE}."revol_bal" ;;
  }

  dimension: balance_percentage_of_annual_income {
    type: number
    sql:  ${revol_bal}/NULLIF(${annual_inc},0);;
    value_format_name: percent_2
  }

  dimension: balance_percentage_of_annual_income_tiers {
    type: tier
    sql:  ${balance_percentage_of_annual_income}*100;;
    tiers: [1,5,10,20,50,100]
    style: integer
  }

  dimension: revol_util {
    type: string
    sql: ${TABLE}."revol_util" ;;
  }

  dimension: sub_grade {
    type: string
    sql: ${TABLE}."sub_grade" ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}."term" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: total_acc {
    type: string
    sql: ${TABLE}."total_acc" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."url" ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}."verification_status" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."zip_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [loan_amnt,desc,positive_probability,reason_1_feature,reason_1_strength,reason_1_strength_numeric,reason_1_value,dti,revol_bal,prediction]
  }

  measure: average_loan_amount {
    type: average
    sql: ${loan_amnt} ;;
    value_format_name: usd
  }

  measure:average_revolving_balance {
    type: average
    sql: ${revol_bal} ;;
    value_format_name: usd
  }

  measure: average_probability {
    type: average
    sql: ${positive_probability} ;;
    value_format_name: percent_2
  }

}
