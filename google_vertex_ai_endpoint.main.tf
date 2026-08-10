# HLD_GCP_205, HLD_GCP_232
resource "google_vertex_ai_endpoint" "main" {
  project      = var.project_id
  location     = var.region
  name         = var.endpoint_name
  display_name = var.endpoint_name
  network      = var.network

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
