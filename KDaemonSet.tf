resource "kubernetes_daemonset" "ravikuber" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "ravikuber"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravikuber"
      }
    }
  }
}
