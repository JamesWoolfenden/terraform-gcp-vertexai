resource "google_kms_key_ring" "vertexai" {
  name     = "vertexai-keyring"
  location = "europe-west2"
}
