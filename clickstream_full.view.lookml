- view: clickstream_full
  sql_table_name: hpcom.clickstream_full
  fields:

  - dimension: campaign
    type: int
    sql: ${TABLE}.campaign

  - dimension: cart_add_flag
    sql: ${TABLE}.cart_add_flag

  - dimension: cart_view
    sql: ${TABLE}.cart_view

  - dimension: click_action
    sql: ${TABLE}.click_action

  - dimension: event_list
    sql: ${TABLE}.event_list

  - dimension: page_event
    type: int
    sql: ${TABLE}.page_event

  - dimension: post_campaign
    type: int
    sql: ${TABLE}.post_campaign

  - dimension: product_list
    sql: ${TABLE}.product_list

  - dimension: product_view
    sql: ${TABLE}.product_view

  - dimension: purchase_flag
    sql: ${TABLE}.purchase_flag

  - dimension: purchaseid
    type: int
    sql: ${TABLE}.purchaseid

  - dimension: session_id
    sql: ${TABLE}.session_id

  - dimension: unique_event_list
    sql: ${TABLE}.unique_event_list

  - measure: count
    type: count
    drill_fields: []

