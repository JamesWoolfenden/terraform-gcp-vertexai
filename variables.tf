
variable "project_id" {
  type        = string
  description = "Project that owns the Vertex AI resources"

  validation {
    condition     = length(trimspace(var.project_id)) > 0
    error_message = "var.project_id must be a non-empty string"
  }
}

variable "region" {
  type        = string
  description = "Region for the Vertex AI resources"
  default     = "europe-west2"

  validation {
    condition     = length(trimspace(var.region)) > 0
    error_message = "var.region must be a non-empty string"
  }
}

variable "kms_key_name" {
  type        = string
  description = "ID of the KMS crypto key used to encrypt Vertex AI resources"
  sensitive   = true

  validation {
    condition     = length(trimspace(var.kms_key_name)) > 0
    error_message = "var.kms_key_name must be a non-empty string"
  }
}

variable "network" {
  type        = string
  description = "Full resource path of the VPC network used for private endpoints, e.g. projects/<num>/global/networks/<name>"

  validation {
    condition     = length(trimspace(var.network)) > 0
    error_message = "var.network must be a non-empty string"
  }
}

variable "dataset_display_name" {
  type        = string
  description = "Display name for the Vertex AI dataset"
  default     = "training-dataset"

  validation {
    condition     = length(trimspace(var.dataset_display_name)) > 0
    error_message = "var.dataset_display_name must be a non-empty string"
  }
}

variable "endpoint_name" {
  type        = string
  description = "Name and display name for the Vertex AI endpoint"
  default     = "model-endpoint"

  validation {
    condition     = length(trimspace(var.endpoint_name)) > 0
    error_message = "var.endpoint_name must be a non-empty string"
  }
}

variable "featurestore_name" {
  type        = string
  description = "Name for the Vertex AI featurestore"
  default     = "featurestore"

  validation {
    condition     = length(trimspace(var.featurestore_name)) > 0
    error_message = "var.featurestore_name must be a non-empty string"
  }
}

variable "index_endpoint_display_name" {
  type        = string
  description = "Display name for the Vertex AI index endpoint"
  default     = "index-endpoint"

  validation {
    condition     = length(trimspace(var.index_endpoint_display_name)) > 0
    error_message = "var.index_endpoint_display_name must be a non-empty string"
  }
}

variable "metadata_store_name" {
  type        = string
  description = "Name for the Vertex AI metadata store"
  default     = "default"

  validation {
    condition     = length(trimspace(var.metadata_store_name)) > 0
    error_message = "var.metadata_store_name must be a non-empty string"
  }
}

variable "tensorboard_display_name" {
  type        = string
  description = "Display name for the Vertex AI tensorboard"
  default     = "tensorboard"

  validation {
    condition     = length(trimspace(var.tensorboard_display_name)) > 0
    error_message = "var.tensorboard_display_name must be a non-empty string"
  }
}
