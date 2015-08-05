- view: meters
  sql_table_name: smartmeter.meters
  fields:

  - dimension: meter_id
    primary_key: true
    type: int
    sql: ${TABLE}.meterID

  - dimension: latitude
    type: number
    sql: ${TABLE}.latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.longitude

  - dimension: residence_type
    type: int
    sql: ${TABLE}.residenceType

  - measure: count
    type: count
    drill_fields: [meter_id, consumption.count, issda_clean_consumption.count]

