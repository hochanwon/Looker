- view: order_new
  sql_table_name: hpcom.order_new
  fields:

  - dimension: customer_age
    type: int
    sql: ${TABLE}.customer_age

  - dimension: customer_email
    sql: ${TABLE}.customer_email

  - dimension: customer_id
    type: int
    sql: ${TABLE}.customer_id

  - dimension: customer_twitter_tag
    sql: ${TABLE}.customer_twitter_tag

  - dimension: customer_zip
    sql: ${TABLE}.customer_zip

  - dimension_group: order
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.order_date

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension: purchaseid
    sql: ${TABLE}.purchaseid

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - measure: count
    type: count
    drill_fields: [order.order_id]

