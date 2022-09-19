resource "kubernetes_daemonset" "ravibranch" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "ravibranch1"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravibranch1"
      }
    }
  }
}
