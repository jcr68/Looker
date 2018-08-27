connection: "lendingtree_snowflake_mike"

# include all the views
include: "*.view"

datagroup: lendingclub_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lendingclub_snowflake_default_datagroup

explore: lendingtree {}
