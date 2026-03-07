output "repository_id" {
  value       = google_artifact_registry_repository.repo.repository_id
  description = "The ID of the created repository"
}

output "name" {
  value       = google_artifact_registry_repository.repo.name
  description = "The fully qualified name of the repository"
}
