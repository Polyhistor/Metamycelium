# resource "helm_release" "mm_kubernetes_ingress" {
#   name       = "mm-ingress-helm-release"
#   repository = "https://kubernetes.github.io/ingress-nginx"
#   chart      = "ingress-nginx"
#   version    = "4.7.0" # ensure you use the correct version here
#   wait       = false
# }

resource "helm_release" "mm_kafka" {
  name       = "mm-kafka"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "kafka"
}

# resource "helm_release" "vault" {
#   name       = "vault"
#   repository = "https://helm.releases.hashicorp.com"
#   chart      = "vault"

#   set {
#     name  = "server.dev.enabled"
#     value = "true"
#   }

#   set {
#     name  = "ui.enabled"
#     value = "true"
#   }
# }

# resource "helm_release" "keycloak" {
#   name       = "keycloak"
#   repository = "https://charts.bitnami.com/bitnami"
#   chart      = "keycloak"
#   set {
#     name  = "postgresql.auth.postgresPassword"
#     value = "mysecretpassword" # Updated password value
#   }

#   set {
#     name  = "postgresql.auth.username"
#     value = "pouya"
#   }

#   set {
#     name  = "postgresql.auth.password"
#     value = "authpassword"
#   }

#   set {
#     name  = "postgresql.postgresqlDatabase"
#     value = "bitnami_keycloak" # If necessary, update the database name
#   }

#   set {
#     name  = "postgresql.postgresqlPassword"
#     value = "mysecretpassword" # Same as the new password value
#   }

#   set {
#     name  = "postgresql.postgresqlUsername"
#     value = "pouya" # Same as the username
#   }
# }

# resource "helm_release" "node_temeletry_processor" {
#   name       = "mm-telemetry-processor"
#   repository = "https://polyhistor.github.io/helmChartsRepoForMetamycelium/nodejs-telemetry-processor"
#   chart      = "mm-telemetry-processor"
# }
