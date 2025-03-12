provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_compute_instance" "example" {
  name         = "example-instance-${terraform.workspace}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Define public IP
    }
  }

  tags = ["${terraform.workspace}"]
}

resource "google_storage_bucket" "example" {
  name     = "example-bucket-${terraform.workspace}"
  location = "US"

  versioning {
    enabled = true
  }
}
