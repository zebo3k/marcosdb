- dashboard: orders
  title: orders
  layout: grid
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Y32WznIjQTHsFcoPrpAaie
  elements:
  - title: orders
    name: orders
    model: tatti_lashes
    explore: orders
    type: looker_column
    fields: [orders.id, orders.created_at_date, orders.current_total_price]
    sorts: [orders.created_at_date]
    limit: 500
    query_timezone: Europe/London
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Orders by Date
    name: Orders by Date
    model: tatti_lashes
    explore: orders
    type: looker_area
    fields: [orders.created_at_date, orders.current_total_price]
    filters:
      orders.billing_address__city: "-NULL"
    sorts: [orders.created_at_date desc]
    limit: 500
    query_timezone: Europe/London
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: tatti_lashes
    explore: ads
    type: looker_grid
    fields: [adsets.created_date, adsets.name, adsets.daily_budget]
    filters:
      adsets.daily_budget: NOT NULL
    sorts: [adsets.created_date desc]
    limit: 500
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    series_column_widths:
      adsets.created_date: 255
      adsets.name: 403
    listen: {}
    row: 12
    col: 8
    width: 11
    height: 8
