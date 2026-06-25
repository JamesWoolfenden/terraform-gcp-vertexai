resource "google_kms_crypto_key" "vertexai" {
  name     = "vertexai-key"
  key_ring = google_kms_key_ring.vertexai.id

  lifecycle {
    prevent_destroy = true
  }
}
