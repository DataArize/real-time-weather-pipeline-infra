resource "google_monitoring_alert_policy" "pubsub_latency_alert" {
  project = var.project_id
  display_name = var.pubsub_latency_alert
  combiner = var.combiner_or
  user_labels = {
    environment = var.environment
    project = var.project
  }
  conditions {
    display_name = var.latency_condition_name
    condition_threshold {
      comparison = var.comparison_greater
      duration   = var.alert_duration
      filter     = replace(replace(var.alert_filter_latency, var.topic_id_placeholder, var.topic_name), var.project_id_placeholder, var.project_id)
      aggregations {
        alignment_period = var.alignment_period
        cross_series_reducer = var.cross_series_reducer
        per_series_aligner = var.align_percentile
      }
      trigger {
        count = var.trigger_count
      }
      threshold_value = 1000
    }
  }
  alert_strategy {
    auto_close = var.alert_auto_close
  }
  enabled = true
  notification_channels = [var.email_notification_channel_id]
  severity = var.severity_critical

}