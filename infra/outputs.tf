output "vpc_id" {
  description = "ID du VPC créé"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs des subnets publics créés (un par instance)"
  value       = aws_subnet.public[*].id
}

output "security_group_id" {
  description = "ID du security group appliqué aux instances"
  value       = aws_security_group.web.id
}

output "instance_ids" {
  description = "IDs des 3 instances EC2"
  value = {
    compute1 = aws_instance.compute1.id
    compute2 = aws_instance.compute2.id
    compute3 = aws_instance.compute3.id
  }
}

output "instance_public_ips" {
  description = "IPs publiques des 3 instances (pour s'y connecter en SSH ou HTTP)"
  value = {
    compute1 = aws_instance.compute1.public_ip
    compute2 = aws_instance.compute2.public_ip
    compute3 = aws_instance.compute3.public_ip
  }
}

output "instance_private_ips" {
  description = "IPs privées des 3 instances"
  value = {
    compute1 = aws_instance.compute1.private_ip
    compute2 = aws_instance.compute2.private_ip
    compute3 = aws_instance.compute3.private_ip
  }
}
