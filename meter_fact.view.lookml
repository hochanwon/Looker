- view: meter_fact
  sql_table_name: smartmeter.meter_fact
  fields:

  - dimension: customer_type
    sql: ${TABLE}.customer_type

  - dimension: day
    type: int
    sql: ${TABLE}.day

  - dimension: meter_id
    type: int
    # hidden: true
    sql: ${TABLE}.meterID

  - dimension: month
    type: int
    sql: ${TABLE}.month

  - dimension: totalpower
    type: int
    sql: ${TABLE}.totalpower

  - measure: count
    type: count
    drill_fields: [meters.meter_id]

  - measure: sum
    type: sum
    sql: ${totalpower}