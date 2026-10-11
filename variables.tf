variable "apigee_api_products" {
  description = <<EOT
Map of apigee_api_products, attributes below
Required:
    - display_name
    - name
    - org_id
Optional:
    - api_resources
    - approval_type
    - deletion_policy
    - description
    - environments
    - proxies
    - quota
    - quota_counter_scope
    - quota_interval
    - quota_time_unit
    - scopes
    - space
    - attributes (block):
        - name (optional)
        - value (optional)
    - graphql_operation_group (block):
        - operation_config_type (optional)
        - operation_configs (optional, block):
            - api_source (optional)
            - attributes (optional, block):
                - name (optional)
                - value (optional)
            - operations (optional, block):
                - operation (optional)
                - operation_types (optional)
            - quota (optional, block):
                - interval (optional)
                - limit (optional)
                - time_unit (optional)
    - grpc_operation_group (block):
        - operation_configs (optional, block):
            - api_source (optional)
            - attributes (optional, block):
                - name (optional)
                - value (optional)
            - methods (optional)
            - quota (optional, block):
                - interval (optional)
                - limit (optional)
                - time_unit (optional)
            - service (optional)
    - operation_group (block):
        - operation_config_type (optional)
        - operation_configs (optional, block):
            - api_source (optional)
            - attributes (optional, block):
                - name (optional)
                - value (optional)
            - operations (optional, block):
                - methods (optional)
                - resource (optional)
            - quota (optional, block):
                - interval (optional)
                - limit (optional)
                - time_unit (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name        = string
    name                = string
    org_id              = string
    api_resources       = optional(set(string))
    approval_type       = optional(string)
    deletion_policy     = optional(string)
    description         = optional(string)
    environments        = optional(set(string))
    proxies             = optional(set(string))
    quota               = optional(string)
    quota_counter_scope = optional(string)
    quota_interval      = optional(string)
    quota_time_unit     = optional(string)
    scopes              = optional(list(string))
    space               = optional(string)
    attributes = optional(list(object({
      name  = optional(string)
      value = optional(string)
    })))
    graphql_operation_group = optional(object({
      operation_config_type = optional(string)
      operation_configs = optional(list(object({
        api_source = optional(string)
        attributes = optional(list(object({
          name  = optional(string)
          value = optional(string)
        })))
        operations = optional(list(object({
          operation       = optional(string)
          operation_types = optional(set(string))
        })))
        quota = optional(object({
          interval  = optional(string)
          limit     = optional(string)
          time_unit = optional(string)
        }))
      })))
    }))
    grpc_operation_group = optional(object({
      operation_configs = optional(list(object({
        api_source = optional(string)
        attributes = optional(list(object({
          name  = optional(string)
          value = optional(string)
        })))
        methods = optional(set(string))
        quota = optional(object({
          interval  = optional(string)
          limit     = optional(string)
          time_unit = optional(string)
        }))
        service = optional(string)
      })))
    }))
    operation_group = optional(object({
      operation_config_type = optional(string)
      operation_configs = optional(list(object({
        api_source = optional(string)
        attributes = optional(list(object({
          name  = optional(string)
          value = optional(string)
        })))
        operations = optional(list(object({
          methods  = optional(set(string))
          resource = optional(string)
        })))
        quota = optional(object({
          interval  = optional(string)
          limit     = optional(string)
          time_unit = optional(string)
        }))
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

