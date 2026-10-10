output "cloudfront_monitoring_subscriptions_id" {
  description = "Map of id values across all cloudfront_monitoring_subscriptions, keyed the same as var.cloudfront_monitoring_subscriptions"
  value       = { for k, v in aws_cloudfront_monitoring_subscription.cloudfront_monitoring_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_monitoring_subscriptions_distribution_id" {
  description = "Map of distribution_id values across all cloudfront_monitoring_subscriptions, keyed the same as var.cloudfront_monitoring_subscriptions"
  value       = { for k, v in aws_cloudfront_monitoring_subscription.cloudfront_monitoring_subscriptions : k => v.distribution_id if v.distribution_id != null && length(v.distribution_id) > 0 }
}
output "cloudfront_monitoring_subscriptions_monitoring_subscription" {
  description = "Map of monitoring_subscription values across all cloudfront_monitoring_subscriptions, keyed the same as var.cloudfront_monitoring_subscriptions"
  value       = { for k, v in aws_cloudfront_monitoring_subscription.cloudfront_monitoring_subscriptions : k => one(v.monitoring_subscription) if v.monitoring_subscription != null && length(v.monitoring_subscription) > 0 }
}

