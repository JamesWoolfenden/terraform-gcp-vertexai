
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
}

variable "kms_key_name" {
  type        = string
  description = "ID of the KMS crypto key used to encrypt Vertex AI resources"

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
