- view: clickstream
  sql_table_name: hpcom.clickstream
  fields:

  - dimension: __identity__
    type: int
    sql: ${TABLE}.__identity__

  - dimension: __raw__
    sql: ${TABLE}.__raw__

  - measure: count
    type: count
    drill_fields: []

