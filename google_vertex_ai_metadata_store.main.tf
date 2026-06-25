# HLD_GCP_226
resource "google_vertex_ai_metadata_store" "main" {
  project = var.project_id
  region  = var.region
  name    = "default"

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
