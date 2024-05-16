#data "terraform_remote_state" "eks" {
#  backend = "local"
#  config = {
#    path = "/code/terraform.tfstate"
#  }
#}

data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "terraform-dpozzi-eks-cluster-tfstate-state"
    key = "terraform.tfstate"
    region = "${local.region}"
    profile = "${var.AWS_PROFILE}"
  }
}
