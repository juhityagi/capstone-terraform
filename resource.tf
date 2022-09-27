resource "google_compute_instance" "node-instances" {
  name         = "${var.project_name}-node-${count.index + 1}"
  machine_type = var.m_type
  count        = var.instancecheck == true ? 2 : 0
  tags         = ["node-vm-instance"]
  boot_disk {
    initialize_params {
      image = var.image[var.zone]
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
resource "google_compute_instance" "master_instance" {
  name         = "${var.project_name}-master-${count.index + 1}"
  machine_type = var.m_type
  count        = var.instancecheck == true ? 1 : 0
  tags         = ["master-vm-instance"]
  boot_disk {
    initialize_params {
      image = var.image[var.zone]
    }
  }
  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
