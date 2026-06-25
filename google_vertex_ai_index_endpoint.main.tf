# HLD_GCP_233
resource "google_vertex_ai_index_endpoint" "main" {
  project                 = var.project_id
  region                  = var.region
  display_name            = "index-endpoint"
  public_endpoint_enabled = false
  network                 = var.network
}
