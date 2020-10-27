view: inventory_items {
  sql_table_name: looker-private-demo.ecomm.inventory_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: created_at {
    type: date
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: sold {
    type: time
    sql: ${TABLE}.sold_at ;;
    timeframes: [date, month, day_of_week, week]
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: profit {
    type: number
    sql:  ${product_retail_price} - ${cost} ;;
  }

  dimension: product_retail_price {
    type: number
    sql: ${TABLE}.product_retail_price ;;
  }

  measure: total_profit {
    type: sum
    sql: ${profit} ;;
  }

}
