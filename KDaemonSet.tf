resource "kubernetes_daemonset" "ravitest1" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "ravitest1"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravitest1"
      }
    }
  }
}
