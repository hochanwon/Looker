- view: nl_md_vw
  derived_table:
    sql: |
      SELECT hour(ts_key), minute(ts_key), AVG(powerWatts) AS TotalPower
      FROM smartmeter.nl_meter_data
      WHERE ts_key >= '2012-1-01' AND ts_key < '2012-2-01'
      GROUP BY hour(ts_key), minute(ts_key)
      ORDER BY hour(ts_key), minute(ts_key) ASC

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: hour
    type: number
    sql: ${TABLE}.hour

  - dimension: minute
    type: number
    sql: ${TABLE}.minute

  - dimension: totalpower
    type: number
    sql: ${TABLE}.totalpower

  sets:
    detail:
      - hour
      - minute
      - totalpower

