connection: "demo_bq"

include: "/views/*.view.lkml"
include: "default.dashboard.lookml"

explore: order_items {
  join: custom_inventory {
    view_label: "Inventory Items"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.inventory_item_id} = ${custom_inventory.id} ;;
  }
}
