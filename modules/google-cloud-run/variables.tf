variable "region" {
  type        = string
  description = "GCP Region"
}

variable "service_name" {
  type        = string
  description = "Name for the Cloud Run service"
}

variable "image" {
  type        = string
  description = "Docker image URL"
}

variable "container_port" {
  type        = number
  default     = 8080
  description = "Container port"
}

variable "env_vars" {
  type        = map(string)
  default     = {}
  description = "Environment variables"
}

variable "cpu_limit" {
  type        = string
  default     = "1"
}

variable "memory_limit" {
  type        = string
  default     = "512Mi"
}

variable "min_instance_count" {
  type        = number
  default     = 0
}

variable "max_instance_count" {
  type        = number
  default     = 10
}

variable "is_public" {
  type        = bool
  default     = false
  description = "Whether to allow unauthenticated access"
}
