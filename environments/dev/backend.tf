terraform {
    backend "gcs" {
        bucket = "terraform-state-weather-analysis-dev"
        prefix = "terraform/state"
    }
}