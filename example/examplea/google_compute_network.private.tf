# holden:ignore:HLD_GCP_094: Sample code for example
# holden:ignore:HLD_GCP_303: Sample code for example
# holden:ignore:HLD_GCP_093: Sample code for example
resource "google_compute_network" "private" {
  name                    = "vertexai-private"
  auto_create_subnetworks = false
}
