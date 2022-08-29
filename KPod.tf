resource "kubernetes_pod" "ravitest" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "ravi"
      }
    }
  }
}
