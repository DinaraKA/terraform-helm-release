module "helm-app" {
  source      = "./appmodule"
  name        = "terraform-helm-app"
  namespace   = "default"
  values_yaml = <<EOF

replicaCount: 1

image:
  repository: bitnami/wordpress
  pullPolicy: IfNotPresent
  tag: "latest"



  EOF
}