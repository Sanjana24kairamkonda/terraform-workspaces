terraform {
  backend "gcs" {
    bucket = "backend_stage"  # The bucket you created
    prefix = "terraform/state"            # Prefix for state file in the bucket
  }
}
