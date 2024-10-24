resource "google_pubsub_topic" "pubsub-weather-analysis-topic" {
  name = var.topic_name
  project = var.project_id
  depends_on = [google_pubsub_schema.pubsub-weather-analysis-schema]
  schema_settings {
    schema = "projects/${var.project_id}/schemas/${var.schema_name}"
    encoding = var.schema_encoding
  }
  labels = {
    environment = var.environment
    project = var.project
  }
  message_retention_duration = "86600s"

}

resource "google_pubsub_schema" "pubsub-weather-analysis-schema" {
  project = var.project_id
  name = var.schema_name
  type = var.schema_type
  definition = var.schema_definition
}