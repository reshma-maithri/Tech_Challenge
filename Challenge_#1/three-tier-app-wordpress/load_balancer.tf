#module for the load balancer.

module "lb" {
  source       = "GoogleCloudPlatform/lb/google"
  version      = "2.2.0"
  region       = var.region
  name         = var.lb_name
  service_port = 80
  target_tags  = ["wordpress-firewall"]
  network      = google_compute_network.vpc-network-wp.name
}
