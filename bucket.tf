provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_s3_bucket" "backed_bucket" {
  bucket = "${var.s3_backend}"
  acl = "private"
  versioning {
    enabled = true
  }
  lifecycle {
     prevent_destroy = true
  }
  	
  tags = {
    Name = "${var.s3_backend}"
  }

}

# create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "terraform-state-lock" {
  name = "${var.state_lock}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags = {
    Name = "${var.state_lock}"
  }
}




