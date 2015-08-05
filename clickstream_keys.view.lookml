- view: clickstream_keys
  sql_table_name: hpcom.clickstream_keys
  fields:

  - dimension: data_type_guess
    sql: ${TABLE}.data_type_guess

  - dimension: frequency
    type: int
    sql: ${TABLE}.frequency

  - dimension: key_name
    sql: ${TABLE}.key_name

  - measure: count
    type: count
    drill_fields: [key_name]

