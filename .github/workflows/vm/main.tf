provider "google" {
  region="us-central1"
  zone="us-central1-a"
}
resource "google_compute_instance" "default" {
  name         = "my-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

 

  metadata_startup_script = "echo hi > /test.txt"


}
