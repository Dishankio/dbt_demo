import snowflake.snowpark.functions as F

def model(dbt, session):
    fruits = {"apple", "banana", "cherry"}
    fruits.add("orange")
    print(fruits)
    my_sql_model_df = dbt.ref("dishank_incremental_test")
    return my_sql_model_df