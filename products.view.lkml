view: products {
  sql_table_name: public.products ;;

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
