variable "machine_type" {
  type        = string
  default     = "e2-small"
  description = "add your machine type"
}

variable "project_name" {
  type        = string
  default     = "infra-mod-training"
  description = "enter your project name"
}


variable "region" {
  type        = string
  default     = "us-central1"
  description = "add region"
}


variable "zone" {
  type        = string
  default     = "us-central1-a"
  description = "zone to deploy resource"
}

variable "minimum_instances" {
  type        = number
  default     = "2"
  description = "minimum desired instances running at a given point"
}

variable "maximum_instances" {
  type        = number
  default     = "5"
  description = "maximum desired instances running at a given point"
}

variable "data_base_version" {
  type        = string
  default     = "MYSQL_8_0"
}


variable "db_password" {
  type        = string
  default     = "admin"
  description = "description"
}

variable "db_username" {
  type        = string
  default     = "wpuser"
  description = "input the database authorized user "
}

variable "db_host" {
  type        = string
  default     = "%"
  description = "description"
  
}

variable "db_name" {
  type        = string
  default     = "wp-db"
  description = "description"
}

variable "vpc_subnetip_range" {
  type        = string
  default     = "192.168.10.0/24"
  description = "CIDR range of the VPC being created"
}

variable "vpc_subnet_name" {
  type        = string
  default     = "wp-vpc-subnet"
  description = "name of the vpc subnet being created"
}

variable "vpc_name" {
  type        = string
  default     = "wp-vpc-network"
  description = "desired name of the vpc being created"
}

variable "auto_scale_group_name" {
  type        = string
  default     = "wp-autoscale-group"
  description = "desired name for the autoscaling"
}

variable "template_name" {
  type        = string
  default     = "wp-instance-template"
  description = "desired name for the compute instance template" 
}

variable "targetpool_name" {
  type        = string
  default     = "wp-target-pool"
  description = "description"
}

variable "igm_name" {
  type        = string
  default     = "wp-igm"
}

variable "lb_name" {
  type        = string
  default     = "wp-lb"
  description = "LB name"
}

variable "fw_name" {
  type        = string
  default     = "wp-firewall"
  description = "Firewall name"
}


variable "dbinstance_name" {
  type        = string
  default     = "wp-db"
  description = "name of database instance"
}


variable "authorized_networks" {
  type        = string
  default     = "0.0.0.0/0"
  description = "authorized networks ip incoming to the database"
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size"
  type        = bool
  default     = true
}

variable "disk_autoresize_limit" {
  description = "The maximum size to which storage can be auto increased."
  type        = number
  default     = 0
}

variable "availability_type" {
  description = "The availability type for the master instance"
  type        = string
  default     = "ZONAL"
}

variable "disk_size" {
  description = "The disk size for the master instance"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the master instance."
  type        = string
  default     = "PD_SSD"
}

variable "pricing_plan" {
  description = "The pricing plan for the master instance."
  type        = string
  default     = "PER_USE"
}

variable "user_labels" {
  type        = map(string)
  default     = {}
  description = "The key/value labels for the master instances."
}


variable "secondary_zone" {
  type        = string
  description = "The preferred zone for the secondary/failover instance"
  default     = null
}

variable "maintenance_window_day" {
  description = "The day of week (1-7) for the master instance maintenance."
  type        = number
  default     = 1
}

variable "maintenance_window_hour" {
  description = "The hour of day (0-23) maintenance window for the master instance maintenance."
  type        = number
  default     = 23
}

variable "maintenance_window_update_track" {
  description = "The update track of maintenance window for the master instance maintenance."
  type        = string
  default     = "canary"
}
