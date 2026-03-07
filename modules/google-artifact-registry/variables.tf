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
