- view: nl_staging_meter_data2
  sql_table_name: smartmeter.nl_staging_meter_data2
  fields:

  - dimension: meter_key
    type: int
    sql: ${TABLE}.meter_key

  - dimension: power_watts
    type: int
    sql: ${TABLE}.powerWatts

  - dimension_group: ts_key
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ts_key

  - measure: count
    type: count
    drill_fields: []

