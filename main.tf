# Configure the GCP provider
provider "google" {
  project = "terraform-learning-371709"
  region  = "us-central1"
}

# Define the VM instance
resource "google_compute_instance" "my-vm" {
  name         = "my-vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Allocate a public IP address
    }
  }

  metadata_startup_script = "echo 'Hello, World!'"
}
