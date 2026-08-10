# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "vertexai" {
  source       = "../../"
  project_id   = "pike-477416"
  region       = "europe-west2"
  kms_key_name = google_kms_crypto_key.vertexai.id
  network      = google_compute_network.private.id

  depends_on = [google_kms_crypto_key_iam_member.vertexai]
}
