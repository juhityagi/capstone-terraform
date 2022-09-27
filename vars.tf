variable "instancecheck" {
  default = true
}
variable "project_name" {
  default = "capstone-project"
}
variable "vpc_name" {
  default = "capstone-vpc-network"
}
variable "firewall_name" {
  default = "firewallapp"
}
variable "firewalls_name" {
  default = "firewallsapp"
}
variable "m_type" {
  default = "e2-medium"
}
variable "zone" {
  default = "us-west1-b"
}
variable "project_id" {
}
variable "path" {
}
variable "image" {
  type = map(string)
  default = {
    "us-west1-b" = "ubuntu-os-cloud/ubuntu-2004-lts"
  }
}
