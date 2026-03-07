resource "google_cloud_run_v2_service" "service" {
  name     = var.service_name
  location = var.region

  template {
    containers {
      image = var.image
      ports {
        container_port = var.container_port
      }
      dynamic "env" {
        for_each = var.env_vars
        content {
          name  = env.key
          value = env.value
        }
      }
      resources {
        limits = {
          cpu    = var.cpu_limit
          memory = var.memory_limit
        }
      }
    }
    scaling {
      min_instance_count = var.min_instance_count
      max_instance_count = var.max_instance_count
    }
  }

  traffic {
    type    = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
    percent = 100
  }
}

resource "google_cloud_run_v2_service_iam_member" "public_access" {
  count    = var.is_public ? 1 : 0
  name     = google_cloud_run_v2_service.service.name
  location = var.region
  role     = "roles/run.invoker"
  member   = "allUsers"
}
