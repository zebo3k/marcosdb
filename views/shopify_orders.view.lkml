view: shopify_orders {
  sql_table_name: `user_1james_8143.shopify_orders`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}.cancelReason ;;
  }

  dimension_group: cancelled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.cancelledAt ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.createdAt ;;
  }

  dimension: current_total_discounts_set_amount {
    type: number
    sql: ${TABLE}.currentTotalDiscountsSet_amount ;;
  }

  dimension: current_total_discounts_set_currency {
    type: string
    sql: ${TABLE}.currentTotalDiscountsSet_currency ;;
  }

  dimension: current_total_price_set_amount {
    type: number
    sql: ${TABLE}.currentTotalPriceSet_amount ;;
  }

  dimension: current_total_price_set_currency {
    type: string
    sql: ${TABLE}.currentTotalPriceSet_currency ;;
  }

  dimension: customer_average_order_amount_amount {
    type: number
    sql: ${TABLE}.customer_averageOrderAmount_amount ;;
  }

  dimension: customer_average_order_amount_currency {
    type: string
    sql: ${TABLE}.customer_averageOrderAmount_currency ;;
  }

  dimension: customer_default_address_city {
    type: string
    sql: ${TABLE}.customer_defaultAddress_city ;;
  }

  dimension: customer_default_address_country {
    type: string
    sql: ${TABLE}.customer_defaultAddress_country ;;
  }

  dimension: customer_journey_days_to_conversion {
    type: number
    sql: ${TABLE}.customerJourney_daysToConversion ;;
  }

  dimension: customer_journey_first_visit_landing_page {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_landingPage ;;
  }

  dimension: customer_journey_first_visit_marketing_event_channel {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_channel ;;
  }

  dimension_group: customer_journey_first_visit_marketing_event_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_startedAt ;;
  }

  dimension: customer_journey_first_visit_marketing_event_type {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_type ;;
  }

  dimension: customer_journey_first_visit_marketing_event_utm_campaign {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_utmCampaign ;;
  }

  dimension: customer_journey_first_visit_marketing_event_utm_medium {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_utmMedium ;;
  }

  dimension: customer_journey_first_visit_marketing_event_utm_source {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_marketingEvent_utmSource ;;
  }

  dimension_group: customer_journey_first_visit_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customerJourney_firstVisit_occurredAt ;;
  }

  dimension: customer_journey_first_visit_referral_code {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_referralCode ;;
  }

  dimension: customer_journey_first_visit_source {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_source ;;
  }

  dimension: customer_journey_first_visit_source_type {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_sourceType ;;
  }

  dimension: customer_journey_first_visit_utm_parameters_campaign {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_utmParameters_campaign ;;
  }

  dimension: customer_journey_first_visit_utm_parameters_content {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_utmParameters_content ;;
  }

  dimension: customer_journey_first_visit_utm_parameters_medium {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_utmParameters_medium ;;
  }

  dimension: customer_journey_first_visit_utm_parameters_source {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_utmParameters_source ;;
  }

  dimension: customer_journey_first_visit_utm_parameters_term {
    type: string
    sql: ${TABLE}.customerJourney_firstVisit_utmParameters_term ;;
  }

  dimension: customer_journey_last_visit_landing_page {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_landingPage ;;
  }

  dimension: customer_journey_last_visit_marketing_event_channel {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_channel ;;
  }

  dimension_group: customer_journey_last_visit_marketing_event_started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_startedAt ;;
  }

  dimension: customer_journey_last_visit_marketing_event_type {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_type ;;
  }

  dimension: customer_journey_last_visit_marketing_event_utm_campaign {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_utmCampaign ;;
  }

  dimension: customer_journey_last_visit_marketing_event_utm_medium {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_utmMedium ;;
  }

  dimension: customer_journey_last_visit_marketing_event_utm_source {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_marketingEvent_utmSource ;;
  }

  dimension_group: customer_journey_last_visit_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.customerJourney_lastVisit_occurredAt ;;
  }

  dimension: customer_journey_last_visit_referral_code {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_referralCode ;;
  }

  dimension: customer_journey_last_visit_source {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_source ;;
  }

  dimension: customer_journey_last_visit_source_type {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_sourceType ;;
  }

  dimension: customer_journey_last_visit_utm_parameters_campaign {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_utmParameters_campaign ;;
  }

  dimension: customer_journey_last_visit_utm_parameters_content {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_utmParameters_content ;;
  }

  dimension: customer_journey_last_visit_utm_parameters_medium {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_utmParameters_medium ;;
  }

  dimension: customer_journey_last_visit_utm_parameters_source {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_utmParameters_source ;;
  }

  dimension: customer_journey_last_visit_utm_parameters_term {
    type: string
    sql: ${TABLE}.customerJourney_lastVisit_utmParameters_term ;;
  }

  dimension: customer_journey_summary_moments_count {
    type: string
    sql: ${TABLE}.customerJourneySummary_momentsCount ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.discountCode ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: total_discounts_set_amount {
    type: number
    sql: ${TABLE}.totalDiscountsSet_amount ;;
  }

  dimension: total_discounts_set_currency {
    type: string
    sql: ${TABLE}.totalDiscountsSet_currency ;;
  }

  dimension: total_price_set_amount {
    type: number
    sql: ${TABLE}.totalPriceSet_amount ;;
  }

  dimension: total_price_set_currency {
    type: string
    sql: ${TABLE}.totalPriceSet_currency ;;
  }

  dimension: total_refunded_set_amount {
    type: number
    sql: ${TABLE}.totalRefundedSet_amount ;;
  }

  dimension: total_refunded_set_currency {
    type: string
    sql: ${TABLE}.totalRefundedSet_currency ;;
  }

  dimension: total_shipping_price_set_amount {
    type: number
    sql: ${TABLE}.totalShippingPriceSet_amount ;;
  }

  dimension: total_shipping_price_set_currency {
    type: string
    sql: ${TABLE}.totalShippingPriceSet_currency ;;
  }

  dimension: total_tax_set_amount {
    type: number
    sql: ${TABLE}.totalTaxSet_amount ;;
  }

  dimension: total_tax_set_currency {
    type: string
    sql: ${TABLE}.totalTaxSet_currency ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
