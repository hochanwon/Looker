- view: nl_meter_data
  sql_table_name: smartmeter.nl_meter_data
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
    
  - measure: avg_power
    type: avg
    sql: ${TABLE}.powerWatts

