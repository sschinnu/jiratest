resource "google_compute_instance" "confidential" {
  name         = var.gcp_name
  machine_type = var.machine_type
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }

  zone         = var.zone
  confidential_instance_config {
     enable_confidential_compute = false
  }
}
resource "google_compute_instance" "integrity" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }

    shielded_instance_config {
        enable_integrity_monitoring = false
        enable_vtpm                 = false
        }
}

resource "google_compute_instance" "ipforwarding" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }

  can_ip_forward = true
        }

resource "google_compute_instance" "projectssh" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }
  metadata= {
    block-project-ssh-keys = true
  
        }
}
resource "google_compute_instance" "publicip" {
  provider     = google
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  
  access_config {
        nat_ip       = "192.168.0.0"
    }
  }
}
resource "google_compute_instance" "serialport" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }
 metadata={
  serial-port-enable = true
}
}
resource "google_compute_instance" "serviceaccount" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    auto_delete = false # Keep disk after shutdown (game data)
  }
  network_interface {
    network = "default"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    email  = "[PROJECT_NUMBER]-compute@developer.gserviceaccount.com"
  }
}
