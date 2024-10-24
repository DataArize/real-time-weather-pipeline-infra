variable "project_id" {
  description = "The project ID for Google Cloud"
  type        = string
}

variable "pubsub_publish_failed_alert" {
  description = "Display name for the publish failed alert"
  type        = string
  default = "Pubsub publish failure alert"
}

variable "combiner_or" {
  description = "Combiner for alert policy"
  type        = string
  default     = "OR"
}

variable "environment" {
  description = "Environment label (e.g., development, production)"
  type        = string
}

variable "project" {
  description = "Project label"
  type        = string
}

variable "pubsub_publish_failed" {
  description = "Display name for the publish failed condition"
  type        = string
  default = "Failure to publish above threashold"
}

variable "comparison_greater" {
  description = "Comparison operator for threshold"
  type        = string
  default     = "COMPARISON_GT"
}

variable "alert_duration" {
  description = "Duration for alert condition"
  type        = string
  default     = "0s"  # Or whatever default makes sense for your use case
}

variable "topic_name" {
  description = "topic name"
  type = string
}

variable "topic_id_placeholder" {
  default = "TOPIC_ID_PLACEHOLDER"
  description = "Placeholder"
  type = string
}

variable "project_id_placeholder" {
  default = "PROJECT_ID_PLACEHOLDER"
  description = "Placeholder"
  type = string
}

variable "alert_filter_publish_failure" {
  description = "Filter for alert condition"
  type        = string
  default     = "resource.type = \"pubsub_topic\" AND resource.labels.topic_id = \"TOPIC_ID_PLACEHOLDER\" AND metric.type = \"pubsub.googleapis.com/topic/send_request_count\""
}

variable "threshold_value" {
  description = "Threshold value for alert"
  type        = number
  default     = 1
}

variable "alert_auto_close" {
  description = "Auto close duration for alerts in seconds"
  type        = string
  default     = "3600s"
}

variable "alignment_period" {
  description = "Alignment period for metrics aggregation"
  type        = string
  default     = "300s"  # Default alignment period, can be adjusted as needed
}

variable "cross_series_reducer" {
  description = "Cross series reducer for metrics aggregation"
  type        = string
  default     = "REDUCE_NONE"  # Default value, can be changed if necessary
}

variable "per_series_aligner" {
  description = "Per series aligner for metrics aggregation"
  type        = string
  default     = "ALIGN_DELTA"  # Default aligner, can be modified as per requirements
}

variable "align_percentile" {
  description = "Per series aligner for metrics aggregation"
  default = "ALIGN_PERCENTILE_99"
  type = string
}

variable "severity_critical" {
  default = "CRITICAL"
  description = "Notification severity"
  type = string
}

variable "trigger_count" {
  default = "1"
  description = "Trigger count"
  type = string
}

variable "email_notification_channel_id" {
  description = "Email notification channel id"
  type = string
}

variable "pubsub_latency_alert" {
  default = "Pubsub latency alert"
  description = "Display name"
  type = string
}

variable "latency_condition_name" {
  default = "Cloud Pub/Sub Topic - Publish request latency"
  description = "Condition name"
  type = string
}

variable "alert_filter_latency" {
  description = "Filter for alert condition"
  type        = string
  default     = "resource.type = \"pubsub_topic\" AND (resource.labels.topic_id = \"TOPIC_ID_PLACEHOLDER\" AND resource.labels.project_id = \"PROJECT_ID_PLACEHOLDER\") AND metric.type = \"pubsub.googleapis.com/topic/send_request_latencies\""
}

