include: "inventory_items.view.lkml"


view: custom_inventory {
  extends: [inventory_items]
  
  
  dimension: field4 {   type: string }
  dimension: field5 {   type: string }
  dimension: field6 {   type: string }
  
  
  }
