resource "google_compute_network" "private" {
  name                    = "vertexai-private"
  auto_create_subnetworks = false
}
