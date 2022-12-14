##compute engine
machine_type	= "e2-small"
region			= "asia-south1"
zone  			= "asia-south1-a"
project_name	= "test_project"
minimum_instances	= "1"
maximum_instances   = "3"

##database
data_base_version	= "MYSQL_8_0"
db_password		= "admin"
db_username		= "Admin@123#$"
db_name			= "wp_app_db"
availability_type	= "ZONAL"

##network
vpc_subnetip_range = "192.168.10.0/24"
vpc_subnet_name 	= "wp-vpc-subnet"