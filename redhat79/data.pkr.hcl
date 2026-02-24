# Use the same data source as your Terraform to find base RHEL AMI
data "amazon-ami" "rhel" {
  filters = {
    name                = "RHEL-7.9_HVM-*-x86_64-*"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = [var.source_ami_owner]
  region      = var.aws_region
}
