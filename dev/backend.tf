terraform {
  backend "gcs" {
    bucket = "my-unique-bucket-eng-artifact-453305-g4"  # The bucket you created
    prefix = "terraform/state"            # Prefix for state file in the bucket
  }
}
