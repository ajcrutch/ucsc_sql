view: medicare {
  derived_table: {
    sql: SELECT * FROM `bigquery-public-data.medicare.part_d_prescriber_2014`
      ;;
  }

  measure: count {
    label: "Count(*)"
    type: count
    drill_fields: [detail*]
  }

  dimension: npi {
    type: number
    sql: ${TABLE}.npi ;;
  }

  dimension: nppes_provider_last_org_name {
    type: string
    sql: ${TABLE}.nppes_provider_last_org_name ;;
  }

  measure: count_nppes_provider_last_org_name {
    type: count_distinct
    sql: ${nppes_provider_last_org_name} ;;
  }

  dimension: nppes_provider_first_name {
    type: string
    sql: ${TABLE}.nppes_provider_first_name ;;
  }

  measure: count_nppes_provider_first_name {
    type: count_distinct
    sql: ${nppes_provider_first_name} ;;
  }

  dimension: nppes_provider_city {
    type: string
    sql: ${TABLE}.nppes_provider_city ;;
  }

  measure: count_nppes_provider_city {
    type: count_distinct
    sql: ${nppes_provider_city} ;;
  }

  dimension: nppes_provider_state {
    type: string
    sql: ${TABLE}.nppes_provider_state ;;
  }

  measure: count_nppes_provider_state {
    type: count_distinct
    sql: ${nppes_provider_state} ;;
  }

  dimension: specialty_description {
    type: string
    sql: ${TABLE}.specialty_description ;;
  }

  measure: count_specialty_description {
    type: count_distinct
    sql: ${specialty_description} ;;
  }

  dimension: description_flag {
    type: string
    sql: ${TABLE}.description_flag ;;
  }

  measure: count_description_flag {
    type: count_distinct
    sql: ${description_flag} ;;
  }

  dimension: drug_name {
    type: string
    sql: ${TABLE}.drug_name ;;
  }

  measure: count_drug_name {
    type: count_distinct
    sql: ${drug_name} ;;
  }

  dimension: generic_name {
    type: string
    sql: ${TABLE}.generic_name ;;
  }

  measure: count_generic_name {
    type: count_distinct
    sql: ${generic_name} ;;
  }

  dimension: bene_count_dim {
    type: number
    sql: ${TABLE}.bene_count ;;
  }

  measure: bene_count {
    type: sum
    sql: ${bene_count_dim} ;;
  }

  dimension: total_claim_count_dim {
    type: number
    sql: ${TABLE}.total_claim_count ;;
  }

  measure: total_claim_count {
    type: sum
    sql: ${total_claim_count_dim} ;;
  }

  dimension: total_day_supply_dim {
    type: number
    sql: ${TABLE}.total_day_supply ;;
  }

  measure: total_day_supply {
    type: sum
    sql: ${total_day_supply_dim} ;;
  }

  dimension: total_drug_cost_dim {
    type: number
    sql: ${TABLE}.total_drug_cost ;;
  }

  measure: total_drug_cost {
    type: sum
    sql: ${total_drug_cost_dim} ;;
  }

  dimension: bene_count_ge65_dim {
    type: number
    sql: ${TABLE}.bene_count_ge65 ;;
  }

  measure:bene_count_ge65 {
    type: sum
    sql: ${bene_count_ge65_dim} ;;
  }

  dimension: bene_count_ge65_suppress_flag {
    type: string
    sql: ${TABLE}.bene_count_ge65_suppress_flag ;;
  }

  dimension: total_claim_count_ge65_dim {
    type: number
    sql: ${TABLE}.total_claim_count_ge65 ;;
  }

  measure: total_claim_count_ge65 {
    type: sum
    sql: ${total_claim_count_ge65_dim} ;;
  }

  dimension: ge65_suppress_flag {
    type: string
    sql: ${TABLE}.ge65_suppress_flag ;;
  }

  measure: count_ge65_suppress_flag {
    type: count_distinct
    sql: ${ge65_suppress_flag} ;;
  }

  dimension: total_day_supply_ge65_dim {
    type: number
    sql: ${TABLE}.total_day_supply_ge65 ;;
  }

  measure: total_day_supply_ge65 {
    type: sum
    sql: ${total_day_supply_ge65_dim} ;;
  }

  dimension: total_drug_cost_ge65_dim {
    type: number
    sql: ${TABLE}.total_drug_cost_ge65 ;;
  }

  measure: total_drug_cost_ge65 {
    type: sum
    sql: ${total_drug_cost_ge65_dim} ;;
  }

  set: detail {
    fields: [
      npi,
      nppes_provider_last_org_name,
      nppes_provider_first_name,
      nppes_provider_city,
      nppes_provider_state,
      specialty_description,
      description_flag,
      drug_name,
      generic_name,
      bene_count,
      total_claim_count,
      total_day_supply,
      total_drug_cost,
      bene_count_ge65,
      bene_count_ge65_suppress_flag,
      total_claim_count_ge65,
      ge65_suppress_flag,
      total_day_supply_ge65,
      total_drug_cost_ge65
    ]
  }
}
