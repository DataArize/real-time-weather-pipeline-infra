variable "project_id" {
  description = "The project ID for Google Cloud"
  type        = string
}

variable "notification_channel_name" {
  default = "Email Notification Channel"
  description = "Notification channel name"
  type = string
}

variable "notification_type_email" {
  default = "email"
  description = "Notification type"
  type = string
}


variable "email_address" {
  description = "Email address for notifications"
  type        = string
}