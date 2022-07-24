connection: "marcos_db"

# include all the views
include: "/views/**/*.view"

# include all the dashboards
include: "/**/*.dashboard"

datagroup: marcosdb_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: marcosdb_default_datagroup

explore: fb_account_insights {
  join: fb_account_insights__website_ctr {
    view_label: "Fb Account Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${fb_account_insights.website_ctr}) as fb_account_insights__website_ctr ;;
    relationship: one_to_many
  }
}

explore: shopify_orders {}

explore: fb_ad_insights {
  join: fb_ad_insights__website_ctr {
    view_label: "Fb Ad Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${fb_ad_insights.website_ctr}) as fb_ad_insights__website_ctr ;;
    relationship: one_to_many
  }
}

explore: fb_campaign_insights {
  join: fb_campaign_insights__website_ctr {
    view_label: "Fb Campaign Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${fb_campaign_insights.website_ctr}) as fb_campaign_insights__website_ctr ;;
    relationship: one_to_many
  }
}

explore: fb_adsets_insights {
  join: fb_adsets_insights__website_ctr {
    view_label: "Fb Adsets Insights: Website Ctr"
    sql: LEFT JOIN UNNEST(${fb_adsets_insights.website_ctr}) as fb_adsets_insights__website_ctr ;;
    relationship: one_to_many
  }
}
