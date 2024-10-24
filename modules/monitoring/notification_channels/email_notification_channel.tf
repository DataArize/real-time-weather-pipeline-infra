
resource "google_monitoring_notification_channel" "email-notification-channel" {
  project = var.project_id
  display_name = var.notification_channel_name
  type         = var.notification_type_email
  labels = {
    email_address = var.email_address
  }
  force_delete = false
}