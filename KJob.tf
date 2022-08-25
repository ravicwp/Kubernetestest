resource "kubernetes_job" "ravitest2" {
  metadata {
    name      = "ravitest2"
    namespace = "default"
    labels = {
      test = "ravitest2"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravitest2"
      }
    }
  }
}
