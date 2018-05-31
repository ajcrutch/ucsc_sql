connection: "ucsc_postgres"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project
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
