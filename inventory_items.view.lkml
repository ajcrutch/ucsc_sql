view: inventory_items {
  sql_table_name: public.inventory_items ;;

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: serialnumber {
    type: number
    sql: ${TABLE}.serialnumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
