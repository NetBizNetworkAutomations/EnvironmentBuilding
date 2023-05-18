terraform {
 backend "gcs" {
   bucket  = "nw-automation-materials"
   prefix  = "20_environment/10_terraform"
 }
}