resource "kubernetes_daemonset" "ravitest" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "ravitest"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravitest"
      }
    }
  }
}
