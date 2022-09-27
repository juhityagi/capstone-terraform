provider "google" {
  credentials = file(var.path)
  project     = var.project_id
  zone        = var.zone
}
