resource "google_container_cluster" "project-icarus-cluster" {
  name               = "project-icarus-cluster"
  network            = "default"
  location           = "us-central1-b"
  initial_node_count = 1
}
