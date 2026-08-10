# HLD_GCP_226
# google_vertex_ai_metadata_store requires the google-beta provider
resource "google_vertex_ai_metadata_store" "main" {
  provider = google-beta
  project  = var.project_id
  region   = var.region
  name     = var.metadata_store_name

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
