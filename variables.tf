variable "s3_backend" {
    type = "string"
    default = "terra-backed-s3"
}

variable "aws_region" {
    type = "string"
    default = "us-east-1"
}

variable "state_lock" {
    type = "string"
    default = "terraform-state-lock-dynamo"
}

variable "state_file" {
    type = "string"
    default = "state/terraform.tfstate"
}


