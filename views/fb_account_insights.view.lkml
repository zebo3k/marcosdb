view: fb_account_insights {
  sql_table_name: `user_1james_8143.fb_account_insights`
    ;;

  dimension: account_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.Account_ID ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.CPM ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }

  dimension_group: date_start {
    type: time
    description: "%E4Y-%m-%d"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_start ;;
  }

  dimension_group: date_stop {
    type: time
    description: "%E4Y-%m-%d"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_stop ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: inline_link_clicks {
    type: number
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.Objective ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.Reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.Spend ;;
  }

  dimension: website_ctr {
    hidden: yes
    sql: ${TABLE}.website_ctr ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}

view: fb_account_insights__website_ctr {
  dimension: action_type {
    type: string
    sql: action_type ;;
  }

  dimension: fb_account_insights__website_ctr {
    type: string
    hidden: yes
    sql: fb_account_insights__website_ctr ;;
  }

  dimension: value {
    type: number
    sql: value ;;
  }
}
