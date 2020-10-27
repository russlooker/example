- dashboard: example_default_content
  title: Example Default Content
  layout: newspaper
  elements:
  - title: New Tile
    name: New Tile
    explore: order_items
    type: looker_line
    fields: [custom_inventory.total_profit, order_items.created_at]
    fill_fields: [order_items.created_at]
    sorts: [order_items.created_at desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row: 0
    col: 0
    width: 13
    height: 6
