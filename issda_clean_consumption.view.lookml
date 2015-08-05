- view: issda_clean_consumption
  sql_table_name: smartmeter.issda_cleanConsumption
  fields:

  - dimension_group: date_utc
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.dateUTC

  - dimension: meter_id
    type: int
    # hidden: true
    sql: ${TABLE}.meterID

  - dimension: value
    type: int
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: [meters.meter_id]

