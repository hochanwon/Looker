- view: top_consumer
  sql_table_name: smartmeter.top_consumer
  fields:

  - dimension: meter_key
    type: int
    sql: ${TABLE}.meter_key

  - dimension: total_power
    type: int
    sql: ${TABLE}.TotalPower

  - measure: count
    type: count
    drill_fields: []

