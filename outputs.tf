output "dataset_id" {
  value       = google_vertex_ai_dataset.main.id
  description = "ID of the Vertex AI dataset"
}

output "endpoint_id" {
  value       = google_vertex_ai_endpoint.main.id
  description = "ID of the Vertex AI endpoint"
}

output "featurestore_id" {
  value       = google_vertex_ai_featurestore.main.id
  description = "ID of the Vertex AI featurestore"
}

output "index_endpoint_id" {
  value       = google_vertex_ai_index_endpoint.main.id
  description = "ID of the Vertex AI index endpoint"
}

output "metadata_store_id" {
  value       = google_vertex_ai_metadata_store.main.id
  description = "ID of the Vertex AI metadata store"
}

output "tensorboard_id" {
  value       = google_vertex_ai_tensorboard.main.id
  description = "ID of the Vertex AI tensorboard"
}
