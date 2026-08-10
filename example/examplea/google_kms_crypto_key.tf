resource "google_kms_crypto_key" "vertexai" {
  name     = "vertexai-key"
  key_ring = google_kms_key_ring.vertexai.id
  # Configure automatic key rotation (e.g. 90 days)
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = true
  }
}
