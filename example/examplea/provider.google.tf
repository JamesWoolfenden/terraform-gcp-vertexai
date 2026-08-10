# holden:ignore:HLD_GCP_059 — per-repo WIF SA with attribute.repository scoping
# provides equivalent least-privilege without impersonation.
provider "google" {
  default_labels = {
    "owner"    = "holden"
    module     = "terraform-gcp-vertexai"
    created_by = "terraform"
  }
}

# google_vertex_ai_metadata_store requires the google-beta provider
provider "google-beta" {
  default_labels = {
    "owner"    = "holden"
    module     = "terraform-gcp-vertexai"
    created_by = "terraform"
  }
}
