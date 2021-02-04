terraform {

 backend "s3" {
	bucket = "terra-backed-s3"
	region = "us-east-1"
	key = "state/terraform.tfstate"
 	dynamodb_table = "terraform-state-lock-dynamo"
	encrypt = true
 }
 }