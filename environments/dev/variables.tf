variable "project_id" {
  description = "Project Id"
  type = string
}

variable "project_region" {
  default = "Region"
  type = string
}

variable "topic_name" {
  description = "Topic name"
  type = string
}

variable "environment" {
  description = "Environment"
  type = string
  default = "dev"
}

variable "project" {
  description = "Project name"
  type = string
  default = "weather-analysis"
}

variable "schema_name" {
  description = "Schema name"
  type = string
}

variable "schema_type" {
  description = "Schema type"
  type = string
  default = "AVRO"
}

variable "schema_definition" {
  description = "Schema definition"
  type = string
}

variable "schema_encoding" {
  description = "Schema encoding"
  type = string
  default = "JSON"
}

variable "email_address" {
  description = "Email address for notifications"
  type        = string
}