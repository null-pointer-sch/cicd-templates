variable "region" {
  type        = string
  description = "GCP Region"
}

variable "repository_id" {
  type        = string
  description = "Artifact Registry repository ID"
}

variable "description" {
  type        = string
  description = "Description for the repository"
  default     = "Docker repository"
}

variable "readers" {
  type        = list(string)
  description = "List of IAM identities to grant roles/artifactregistry.reader"
  default     = []
}

variable "writers" {
  type        = list(string)
  description = "List of IAM identities to grant roles/artifactregistry.writer"
  default     = []
}
