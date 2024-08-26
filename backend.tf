terraform {
  backend "s3" {
    bucket         = "sravaniBterraformtest-state"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-statelocks"
    encrypt        = true
  }
}
