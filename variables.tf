variable "cloudfront_monitoring_subscriptions" {
  description = <<EOT
Map of cloudfront_monitoring_subscriptions, attributes below
Required:
    - distribution_id
    - monitoring_subscription (block):
        - realtime_metrics_subscription_config (required, block):
            - realtime_metrics_subscription_status (required)
EOT

  type = map(object({
    distribution_id = string
    monitoring_subscription = object({
      realtime_metrics_subscription_config = object({
        realtime_metrics_subscription_status = string
      })
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

