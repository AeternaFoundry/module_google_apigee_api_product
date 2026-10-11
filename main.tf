resource "google_apigee_api_product" "apigee_api_products" {
  for_each = var.apigee_api_products

  display_name        = each.value.display_name
  name                = each.value.name
  org_id              = each.value.org_id
  api_resources       = each.value.api_resources
  approval_type       = each.value.approval_type
  deletion_policy     = each.value.deletion_policy
  description         = each.value.description
  environments        = each.value.environments
  proxies             = each.value.proxies
  quota               = each.value.quota
  quota_counter_scope = each.value.quota_counter_scope
  quota_interval      = each.value.quota_interval
  quota_time_unit     = each.value.quota_time_unit
  scopes              = each.value.scopes
  space               = each.value.space

  dynamic "attributes" {
    for_each = each.value.attributes != null ? each.value.attributes : []
    content {
      name  = attributes.value.name
      value = attributes.value.value
    }
  }

  dynamic "graphql_operation_group" {
    for_each = each.value.graphql_operation_group != null ? [each.value.graphql_operation_group] : []
    content {
      operation_config_type = graphql_operation_group.value.operation_config_type
      dynamic "operation_configs" {
        for_each = graphql_operation_group.value.operation_configs != null ? graphql_operation_group.value.operation_configs : []
        content {
          api_source = operation_configs.value.api_source
          dynamic "attributes" {
            for_each = operation_configs.value.attributes != null ? operation_configs.value.attributes : []
            content {
              name  = attributes.value.name
              value = attributes.value.value
            }
          }
          dynamic "operations" {
            for_each = operation_configs.value.operations != null ? operation_configs.value.operations : []
            content {
              operation       = operations.value.operation
              operation_types = operations.value.operation_types
            }
          }
          dynamic "quota" {
            for_each = operation_configs.value.quota != null ? [operation_configs.value.quota] : []
            content {
              interval  = quota.value.interval
              limit     = quota.value.limit
              time_unit = quota.value.time_unit
            }
          }
        }
      }
    }
  }

  dynamic "grpc_operation_group" {
    for_each = each.value.grpc_operation_group != null ? [each.value.grpc_operation_group] : []
    content {
      dynamic "operation_configs" {
        for_each = grpc_operation_group.value.operation_configs != null ? grpc_operation_group.value.operation_configs : []
        content {
          api_source = operation_configs.value.api_source
          dynamic "attributes" {
            for_each = operation_configs.value.attributes != null ? operation_configs.value.attributes : []
            content {
              name  = attributes.value.name
              value = attributes.value.value
            }
          }
          methods = operation_configs.value.methods
          dynamic "quota" {
            for_each = operation_configs.value.quota != null ? [operation_configs.value.quota] : []
            content {
              interval  = quota.value.interval
              limit     = quota.value.limit
              time_unit = quota.value.time_unit
            }
          }
          service = operation_configs.value.service
        }
      }
    }
  }

  dynamic "operation_group" {
    for_each = each.value.operation_group != null ? [each.value.operation_group] : []
    content {
      operation_config_type = operation_group.value.operation_config_type
      dynamic "operation_configs" {
        for_each = operation_group.value.operation_configs != null ? operation_group.value.operation_configs : []
        content {
          api_source = operation_configs.value.api_source
          dynamic "attributes" {
            for_each = operation_configs.value.attributes != null ? operation_configs.value.attributes : []
            content {
              name  = attributes.value.name
              value = attributes.value.value
            }
          }
          dynamic "operations" {
            for_each = operation_configs.value.operations != null ? operation_configs.value.operations : []
            content {
              methods  = operations.value.methods
              resource = operations.value.resource
            }
          }
          dynamic "quota" {
            for_each = operation_configs.value.quota != null ? [operation_configs.value.quota] : []
            content {
              interval  = quota.value.interval
              limit     = quota.value.limit
              time_unit = quota.value.time_unit
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

