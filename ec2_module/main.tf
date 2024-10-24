resource "aws_instance" "ec2" {
  ami = var.AMI["ubuntu"]
  instance_type = var.instance_type
  key_name = var.KEY_PAIR_NAME
  tags = {
    Name = "${var.instance_name}-${terraform.workspace}"
    Environment = var.ENVIRONMENT[terraform.workspace]
  }
}