resource "aws_cloudfront_monitoring_subscription" "cloudfront_monitoring_subscriptions" {
  for_each = var.cloudfront_monitoring_subscriptions

  distribution_id = each.value.distribution_id

  monitoring_subscription {
    realtime_metrics_subscription_config {
      realtime_metrics_subscription_status = each.value.monitoring_subscription.realtime_metrics_subscription_config.realtime_metrics_subscription_status
    }
  }
}

