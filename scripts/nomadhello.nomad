# ----------------------------------------------------------
# nomad/hello.nomad
# ----------------------------------------------------------
# DevOps Final Assessment
# Nomad job definition for deploying the Dockerized app
# built from the GitHub Actions workflow.
#
# The job runs the image:
#   ghcr.io/<your_github_username>/devops-final-assessment:latest
# ----------------------------------------------------------

job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        # Replace <your_github_username> with your actual GitHub username
        image = "ghcr.io/<your_github_username>/devops-final-assessment:latest"
        force_pull = true
      }

      resources {
        cpu    = 100      # 100 MHz CPU allocation
        memory = 128      # 128 MB RAM allocation
      }

      # Logging configuration
      log {
        max_files = 5
        max_file_size_mb = 10
      }

      # Optional: Define how long to wait for health before restart
      restart {
        attempts = 2
        interval = "30s"
        delay    = "10s"
        mode     = "fail"
      }
    }
  }
}
