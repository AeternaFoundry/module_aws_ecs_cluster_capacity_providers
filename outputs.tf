output "ecs_cluster_capacity_providers_id" {
  description = "Map of id values across all ecs_cluster_capacity_providers, keyed the same as var.ecs_cluster_capacity_providers"
  value       = { for k, v in aws_ecs_cluster_capacity_providers.ecs_cluster_capacity_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecs_cluster_capacity_providers_capacity_providers" {
  description = "Map of capacity_providers values across all ecs_cluster_capacity_providers, keyed the same as var.ecs_cluster_capacity_providers"
  value       = { for k, v in aws_ecs_cluster_capacity_providers.ecs_cluster_capacity_providers : k => v.capacity_providers if v.capacity_providers != null && length(v.capacity_providers) > 0 }
}
output "ecs_cluster_capacity_providers_cluster_name" {
  description = "Map of cluster_name values across all ecs_cluster_capacity_providers, keyed the same as var.ecs_cluster_capacity_providers"
  value       = { for k, v in aws_ecs_cluster_capacity_providers.ecs_cluster_capacity_providers : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "ecs_cluster_capacity_providers_default_capacity_provider_strategy" {
  description = "Map of default_capacity_provider_strategy values across all ecs_cluster_capacity_providers, keyed the same as var.ecs_cluster_capacity_providers"
  value       = { for k, v in aws_ecs_cluster_capacity_providers.ecs_cluster_capacity_providers : k => v.default_capacity_provider_strategy if v.default_capacity_provider_strategy != null && length(v.default_capacity_provider_strategy) > 0 }
}
output "ecs_cluster_capacity_providers_region" {
  description = "Map of region values across all ecs_cluster_capacity_providers, keyed the same as var.ecs_cluster_capacity_providers"
  value       = { for k, v in aws_ecs_cluster_capacity_providers.ecs_cluster_capacity_providers : k => v.region if v.region != null && length(v.region) > 0 }
}

