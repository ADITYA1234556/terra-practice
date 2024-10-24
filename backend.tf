terraform {
  backend "s3" {
    bucket         = "111-aditya-kms"
    key            = "terraform/state/terraform.tfstate"
    region         = "eu-west-2"
    # dynamodb_table = "adi-terraform-db-prod"
  }
}