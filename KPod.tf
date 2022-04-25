resource "kubernetes_pod" "example" {
  metadata {
    name      = "terraform-example"
    namespace = "something"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
  }
}
