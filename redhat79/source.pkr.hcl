source "amazon-ebs" "rhel" {
  ami_name      = "${var.ami_name_prefix}-{{timestamp}}"
  instance_type = var.instance_type
  region        = var.aws_region
  source_ami    = data.amazon-ami.rhel.id
  ssh_username  = "ec2-user"

  vpc_id    = var.vpc_id
  subnet_id = var.subnet_id

  associate_public_ip_address = true

  tags = {
    Name        = "${var.ami_name_prefix}-{{timestamp}}"
    Environment = "production"
    OS          = "RHEL 7.9"
    Created_By  = "Packer"
  }
}
