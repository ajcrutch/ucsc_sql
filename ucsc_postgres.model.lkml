connection: "andyninja_postgres"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project
#
# explore: order_items {
#   join: inventory_items {
#     type: full_outer
#     sql_on: ${order_items.serialnumber}=${inventory_items.serialnumber} ;;
#   }
#   join: products {
#     sql_on:  ;;
#   }
# }


# explore: order {
#   join: customers {
#     type: left_outer
#     sql_on: ${order.customer_id} = ${customers.customer_id} ;;
#     relationship: many_to_one
#   }
# }
