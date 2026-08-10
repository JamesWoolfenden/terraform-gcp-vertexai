output "dataset_id" {
  description = "ID of the Vertex AI dataset"
  value       = module.vertexai.dataset_id
}

output "endpoint_id" {
  description = "ID of the Vertex AI endpoint"
  value       = module.vertexai.endpoint_id
}

output "featurestore_id" {
  description = "ID of the Vertex AI featurestore"
  value       = module.vertexai.featurestore_id
}

output "index_endpoint_id" {
  description = "ID of the Vertex AI index endpoint"
  value       = module.vertexai.index_endpoint_id
}

output "metadata_store_id" {
  description = "ID of the Vertex AI metadata store"
  value       = module.vertexai.metadata_store_id
}

output "tensorboard_id" {
  description = "ID of the Vertex AI tensorboard"
  value       = module.vertexai.tensorboard_id
}
