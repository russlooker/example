connection: "demo_bq"

include: "/views/*.view.lkml"

explore: order_items {
  join: customer1 {
    view_label: "Inventory Items"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.inventory_item_id} = ${customer1.id} ;;
  }
}
