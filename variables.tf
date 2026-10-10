variable "ecs_cluster_capacity_providers" {
  description = <<EOT
Map of ecs_cluster_capacity_providers, attributes below
Required:
    - cluster_name
Optional:
    - capacity_providers
    - region
    - default_capacity_provider_strategy (block):
        - base (optional)
        - capacity_provider (required)
        - weight (optional)
EOT

  type = map(object({
    cluster_name       = string
    capacity_providers = optional(set(string))
    region             = optional(string)
    default_capacity_provider_strategy = optional(list(object({
      base              = optional(number)
      capacity_provider = string
      weight            = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ecs_cluster_capacity_providers : (
        v.default_capacity_provider_strategy == null || alltrue([for item in v.default_capacity_provider_strategy : (item.base == null || (item.base >= 0 && item.base <= 100000))])
      )
    ])
    error_message = "must be between 0 and 100000"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

