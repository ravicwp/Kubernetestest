resource "kubernetes_cron_job" "ravitest2" {
  metadata {
    name      = "terraform-example"
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
