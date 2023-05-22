resource "google_compute_instance" "vscode-server-1" {
    name         = "vscode-server-1"
    machine_type = "e2-medium"
    zone         = "us-central1-b"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }

    network_interface {
        network = "default"
        access_config {nat_ip = google_compute_address.nw-automation-vscode-server-1.address}
    }
}

resource "google_compute_address" "nw-automation-vscode-server-1" {
  name   = "nw-automation-vscode-server-1"
  region = "us-central1"
}