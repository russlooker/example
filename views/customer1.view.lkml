include: "inventory_items.view.lkml"


view: customer1 {
  extends: [inventory_items]
  
  
  dimension: field1 {   type: string }
  dimension: field2 {   type: number }
  dimension: field3 {   type: string }
  
  
  }
