terraform {
  backend "gcs" {
    bucket = "gcs_bucket_terraform_state"
    prefix = "terraform/app/state"
  }
}
  
