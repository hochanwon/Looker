- view: customer_dimension
  sql_table_name: smartmeter.customer_dimension
  fields:

  - dimension: meter_id
    type: int
    primary_key: true
    # hidden: true
    sql: ${TABLE}.meterID

  - dimension: region
    sql: ${TABLE}.region

  - dimension: state
    sql: ${TABLE}.state

  - measure: count
    type: count
    drill_fields: [meters.meter_id]

