# HLD_GCP_233
resource "google_vertex_ai_index_endpoint" "main" {
  project                 = var.project_id
  region                  = var.region
  display_name            = var.index_endpoint_display_name
  public_endpoint_enabled = false
  network                 = var.network
  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
