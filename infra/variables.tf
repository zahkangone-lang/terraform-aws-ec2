variable "project_name" {
  description = "Préfixe appliqué à toutes les ressources"
  type        = string
  default     = "terraform-aws-ec2"
}

variable "environment" {
  description = "Nom de l'environnement (dev, staging, prod...) utilisé dans les tags"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "Région AWS de déploiement"
  type        = string
  default     = "eu-north-1"
}

variable "ami_id" {
  description = "AMI Ubuntu 22.04 LTS en eu-north-1"
  type        = string
  default     = "ami-0cc0615fa97a31072"
}

variable "key_pair_name" {
  description = "Nom de la paire de clés SSH déjà créée dans votre compte AWS"
  type        = string
  default     = "srvk"
}

variable "my_ip" {
  description = "Votre IP publique pour restreindre l'accès SSH (format x.x.x.x/32). Pas de valeur par défaut volontairement : ne committez jamais votre IP réelle sur un dépôt public, fournissez-la via terraform.tfvars local ou une variable d'environnement TF_VAR_my_ip."
  type        = string
}

variable "vpc_cidr" {
  description = "Bloc CIDR du VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Liste des blocs CIDR pour les subnets publics (un par AZ, un par instance)"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

