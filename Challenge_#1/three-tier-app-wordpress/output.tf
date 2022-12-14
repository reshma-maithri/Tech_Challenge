output "name_of_vpc" {
  value = google_compute_network.vpc-network-wp.name

}

output "db_instance_info" {
  value = google_sql_database_instance.database
  sensitive = true
}