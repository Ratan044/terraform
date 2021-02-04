provider "aws" {
	access_key = "AKIAT5MMT54M7WZV2PWW"
	secret_key = "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"
	region = "ap-south-1"
}

terraform {
  required_version = "= 0.14.5"
}

resource "aws_instance" "my_ec2" {
	ami = "ami-02873c20871a40c65"
	instance_type = "t2.micro"
}
