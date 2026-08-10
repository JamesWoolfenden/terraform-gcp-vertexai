data "google_project" "current" {}

resource "google_project_service_identity" "vertexai" {
  provider = google-beta
  project  = data.google_project.current.project_id
  service  = "aiplatform.googleapis.com"
}

resource "google_kms_crypto_key_iam_member" "vertexai" {
  crypto_key_id = google_kms_crypto_key.vertexai.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member        = "serviceAccount:${google_project_service_identity.vertexai.email}"
}
