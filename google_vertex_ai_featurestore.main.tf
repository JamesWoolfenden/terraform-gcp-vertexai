# HLD_GCP_228
resource "google_vertex_ai_featurestore" "main" {
  project = var.project_id
  region  = var.region
  name    = var.featurestore_name

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
