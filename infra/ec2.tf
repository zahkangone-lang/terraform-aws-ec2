# ── Serveur 1 : Compute1 ────────────────────────────────────────────────
resource "aws_instance" "compute1" {
  ami                    = var.ami_id
  instance_type          = "t3.micro"       # 2 vCPU · 1 Go RAM
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_pair_name
  private_ip             = "10.10.1.10"     # doit appartenir au CIDR du subnet[0] (10.10.1.0/24)

  root_block_device {
    volume_size           = 15              # Go
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name      = "${var.project_name}-compute1"
    Role      = "My Server 1"
    ManagedBy = "terraform"
  }
}

# ── Serveur 2 : Compute2 ────────────────────────────────────────────────
resource "aws_instance" "compute2" {
  ami                    = var.ami_id
  instance_type          = "t3.micro"       # 2 vCPU · 1 Go RAM
  subnet_id              = aws_subnet.public[1].id
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_pair_name
  private_ip             = "10.10.2.10"     # doit appartenir au CIDR du subnet[1] (10.10.2.0/24)

  root_block_device {
    volume_size           = 20              # Go
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name      = "${var.project_name}-compute2"
    Role      = "My Server 2 (You can describe the utility of this server)"
    ManagedBy = "terraform"
  }
}

# ── Serveur 3 : Compute3 ────────────────────────────────────────────────
resource "aws_instance" "compute3" {
  ami                    = var.ami_id
  instance_type          = "t3.micro"       # 2 vCPU · 1 Go RAM
  subnet_id              = aws_subnet.public[2].id
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_pair_name
  private_ip             = "10.10.3.10"     # doit appartenir au CIDR du subnet[2] (10.10.3.0/24)

  root_block_device {
    volume_size           = 15              # Go
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name      = "${var.project_name}-compute3"
    Role      = "My Server 3"
    ManagedBy = "terraform"
  }
}
