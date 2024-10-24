provider "aws" {
  region = var.REGION
}

#CREATE DYNAMO DB TABLE
resource "aws_dynamodb_table" "dynamodb" {
  name         = "${var.DYNAMODBNAME}-${terraform.workspace}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name        = "${var.DYNAMODBNAME}-${terraform.workspace}"
    Environment = terraform.workspace
  }
}

#CREATE EC2 USING MODULE
module "ec2_instance" {
  source = "./ec2_module"
  # ami           = var.AMI["ubuntu"]
  instance_type = var.instance_type
  instance_name = "${var.instance_name}-${terraform.workspace}"
  # key_name      = var.KEY_PAIR_NAME
  # environment   = terraform.workspace
}