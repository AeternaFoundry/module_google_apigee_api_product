output "apigee_api_products_id" {
  description = "Map of id values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no id are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_api_products_api_resources" {
  description = "Map of api_resources values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no api_resources are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.api_resources if v.api_resources != null && length(v.api_resources) > 0 }
}
output "apigee_api_products_approval_type" {
  description = "Map of approval_type values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no approval_type are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.approval_type if v.approval_type != null && length(v.approval_type) > 0 }
}
output "apigee_api_products_attributes" {
  description = "Map of attributes values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no attributes are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "apigee_api_products_created_at" {
  description = "Map of created_at values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no created_at are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "apigee_api_products_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_api_products_description" {
  description = "Map of description values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no description are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_api_products_display_name" {
  description = "Map of display_name values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no display_name are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigee_api_products_environments" {
  description = "Map of environments values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no environments are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.environments if v.environments != null && length(v.environments) > 0 }
}
output "apigee_api_products_graphql_operation_group" {
  description = "Map of graphql_operation_group values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no graphql_operation_group are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => one(v.graphql_operation_group) if v.graphql_operation_group != null && length(v.graphql_operation_group) > 0 }
}
output "apigee_api_products_grpc_operation_group" {
  description = "Map of grpc_operation_group values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no grpc_operation_group are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => one(v.grpc_operation_group) if v.grpc_operation_group != null && length(v.grpc_operation_group) > 0 }
}
output "apigee_api_products_last_modified_at" {
  description = "Map of last_modified_at values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no last_modified_at are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.last_modified_at if v.last_modified_at != null && length(v.last_modified_at) > 0 }
}
output "apigee_api_products_name" {
  description = "Map of name values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no name are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_api_products_operation_group" {
  description = "Map of operation_group values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no operation_group are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => one(v.operation_group) if v.operation_group != null && length(v.operation_group) > 0 }
}
output "apigee_api_products_org_id" {
  description = "Map of org_id values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_api_products_proxies" {
  description = "Map of proxies values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no proxies are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.proxies if v.proxies != null && length(v.proxies) > 0 }
}
output "apigee_api_products_quota" {
  description = "Map of quota values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no quota are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.quota if v.quota != null && length(v.quota) > 0 }
}
output "apigee_api_products_quota_counter_scope" {
  description = "Map of quota_counter_scope values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no quota_counter_scope are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.quota_counter_scope if v.quota_counter_scope != null && length(v.quota_counter_scope) > 0 }
}
output "apigee_api_products_quota_interval" {
  description = "Map of quota_interval values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no quota_interval are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.quota_interval if v.quota_interval != null && length(v.quota_interval) > 0 }
}
output "apigee_api_products_quota_time_unit" {
  description = "Map of quota_time_unit values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no quota_time_unit are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.quota_time_unit if v.quota_time_unit != null && length(v.quota_time_unit) > 0 }
}
output "apigee_api_products_scopes" {
  description = "Map of scopes values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no scopes are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "apigee_api_products_space" {
  description = "Map of space values across all apigee_api_products, keyed the same as var.apigee_api_products except keys with no space are omitted"
  value       = { for k, v in google_apigee_api_product.apigee_api_products : k => v.space if v.space != null && length(v.space) > 0 }
}

