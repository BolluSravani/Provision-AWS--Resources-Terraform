terraform {
  backend "s3" {
    bucket         = "sravani-jenkins-terraform-state"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
