resource "kubernetes_daemonset" "ravibranch" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "ravibranch"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravibranch"
      }
    }
  }
}
