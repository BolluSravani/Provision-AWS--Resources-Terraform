resource "aws_s3_bucket" "terraform_state" {
  bucket = "Bollu297-terraformtest-state"  # Ensure this bucket name is globally unique
  acl    = "private"
  tags = {
    Name = "Terraform State Bucket"
  }
}

resource "aws_dynamodb_table" "terraform_statelocks" {
  name           = "terraform-statelocks"
  billing_mode    = "PAY_PER_REQUEST"  # Use on-demand pricing
  hash_key        = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "Terraform State Lock Table"
  }
}
