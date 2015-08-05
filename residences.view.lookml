- view: residences
  sql_table_name: smartmeter.residences
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: description
    sql: ${TABLE}.description

  - measure: count
    type: count
    drill_fields: [id]

