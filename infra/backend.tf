# backend.tf

terraform {
  backend "s3" {
    bucket         = "mon-projet-terraform-state"
    key            = "mon-projet/ec2/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }
}
