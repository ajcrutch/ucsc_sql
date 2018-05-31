view: order_items {
  sql_table_name: public.order_items ;;

  dimension: order_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: serialnumber {
    type: number
    sql: ${TABLE}.serialnumber ;;
  }

  measure: count {
    type: count
    drill_fields: [order_item_id]
  }
}
