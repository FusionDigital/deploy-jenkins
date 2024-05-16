
  resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  version    = "4.12.1"
  namespace = "cicd"
  create_namespace = true
  timeout = 400

  values = [
    "${file("./chart_values.yaml")}"
  ]

  set {
    name  = "cluster.enabled"
    value = "true"
  }

  set {
    name  = "metrics.enabled"
    value = "true"
  }

  depends_on = [local_file.kubeconfig_EKS_Cluster]

}
