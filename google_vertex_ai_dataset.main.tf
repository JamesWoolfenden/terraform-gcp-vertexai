# HLD_GCP_172
resource "google_vertex_ai_dataset" "main" {
  project             = var.project_id
  region              = var.region
  display_name        = var.dataset_display_name
  metadata_schema_uri = "gs://google-cloud-aiplatform/schema/dataset/metadata/tabular_1.0.0.yaml"

  encryption_spec {
    kms_key_name = var.kms_key_name
  }
}
