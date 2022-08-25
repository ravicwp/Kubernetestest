resource "kubernetes_stateful_set" "aktest" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "aktest"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "aktest1"
      }
    }
  }
}
