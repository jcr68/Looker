view: lending_club_scored {
  sql_table_name: "LENDINGTREE"."PUBLIC"."LendingTree_Scored" ;;

  dimension: addr_state {
    type: string
    sql: ${TABLE}."addr_state" ;;
  }

  dimension: annual_inc {
    type: string
    sql: ${TABLE}."annual_inc" ;;
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
    drill_fields: []
  }
}
