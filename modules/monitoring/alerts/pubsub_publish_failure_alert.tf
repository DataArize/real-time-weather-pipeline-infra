resource "google_monitoring_alert_policy" "pubsub-publish-alert" {
  project = var.project_id
  display_name = var.pubsub_publish_failed_alert
  combiner = var.combiner_or
  user_labels = {
    environment = var.environment
    project = var.project
  }
  conditions {
    display_name = var.pubsub_publish_failed
    condition_threshold {
      comparison = var.comparison_greater
      duration   = var.alert_duration
      filter = replace(var.alert_filter_publish_failure, var.topic_id_placeholder, var.topic_name)
      aggregations {
        alignment_period = var.alignment_period
        cross_series_reducer = var.cross_series_reducer
        per_series_aligner = var.per_series_aligner
      }
      trigger {
        count = var.trigger_count
      }
      threshold_value = var.threshold_value
    }
  }
  alert_strategy {
    auto_close = var.alert_auto_close
  }
  enabled = true
  notification_channels = [var.email_notification_channel_id]
  severity = var.severity_critical
}
