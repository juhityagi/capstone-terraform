resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = var.vpc_name
  auto_create_subnetworks = true
}
resource "google_compute_firewall" "firewall" {
  name    = var.firewall_name
  network = google_compute_network.vpc_network.name
  allow {
    protocol = "tcp"
    ports    = ["80", "22", "8080", "8081"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["master-vm-instance"]
}
resource "google_compute_firewall" "firewalls" {
  name    = var.firewalls_name
  network = google_compute_network.vpc_network.name
  allow {
    protocol = "tcp"
    ports    = ["22", "8080", "80", "8081"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["node-vm-instance"]
}
