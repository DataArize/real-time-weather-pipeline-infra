module "pubsub" {
  source = "../../modules/pubsub"
  project_id = var.project_id
  project_region = var.project_region
  topic_name = var.topic_name
  schema_name = var.schema_name
  schema_definition = var.schema_definition
  schema_encoding = var.schema_encoding
}

module "notification-channels" {
  source = "../../modules/monitoring/notification_channels"
  email_address = var.email_address
  project_id = var.project_id
}

module "alerts" {
  source = "../../modules/monitoring/alerts"
  project_id = var.project_id
  environment = var.environment
  project = var.project
  topic_name = var.topic_name
  email_notification_channel_id = module.notification-channels.email_notification_channel_id

}