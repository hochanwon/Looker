- connection: demodb

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: clickstream

- explore: clickstream_full

- explore: clickstream_keys

- explore: consumption
  joins:
    - join: meters
      foreign_key: meter_id

- explore: customer_dimension

- explore: issda_clean_consumption
  joins:
    - join: meters
      foreign_key: meter_id


- explore: meters

- explore: meter_fact
  joins:
  - join: customer_dimension
    foreign_key: meter_id

- explore: nl_meter_data

- explore: nl_md_vw

- explore: nl_staging_meter_data1

- explore: nl_staging_meter_data2

- explore: nl_staging_meter_data3

- explore: nl_staging_meter_data4

- explore: order

- explore: order_new
  joins:
    - join: order
      foreign_key: order_id


- explore: order_org
  joins:
    - join: order
      foreign_key: order_id


- explore: residences

- explore: top_consumer
  joins:
    - join: meters
      foreign_key: meter_key

