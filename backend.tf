terraform {
  backend "s3" {
    bucket         = "bollusterraform-jenkinstest-state"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-statelocks"
    encrypt        = true
  }
}
