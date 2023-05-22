resource "google_storage_bucket" "nw-automation-materials" {
  name          = "nw-automation-materials"
  location      = "asia-northeast1"
  
  force_destroy = false
  uniform_bucket_level_access = true
}