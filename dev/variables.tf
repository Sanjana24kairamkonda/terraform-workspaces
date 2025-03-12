variable "credentials_file" {
  description = "The path to the service account credentials JSON file."
  type        = string
}

variable "project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "region" {
  description = "The Google Cloud region for resources."
  type        = string
}

variable "zone" {
  description = "The zone for the compute instance."
  type        = string
  default     = "us-central1-a"
}
