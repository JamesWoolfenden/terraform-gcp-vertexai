# HLD_GCP_229
resource "google_vertex_ai_tensorboard" "main" {
  project      = var.project_id
  region       = var.region
  display_name = var.tensorboard_display_name

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
