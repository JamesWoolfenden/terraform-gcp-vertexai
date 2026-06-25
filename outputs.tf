output "dataset_id" {
  value       = google_vertex_ai_dataset.main.id
  description = "ID of the Vertex AI dataset"
}

output "endpoint_id" {
  value       = google_vertex_ai_endpoint.main.id
  description = "ID of the Vertex AI endpoint"
}
