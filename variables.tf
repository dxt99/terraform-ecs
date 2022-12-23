variable "region" {
  description = "name region"
  default     = "us-east-1"
}


variable "custom_vpc" {
  description = "VPC for testing environment"
  type        = string
  default     = "10.0.0.0/16"
}


variable "instance_tenancy" {
  description = "it defines the tenancy of VPC. Whether it's defsult or dedicated"
  type        = string
  default     = "default"
}

variable "ami_id" {
  description = "ami id"
  type        = string
  default     = "ami-087c17d1fe0178315"
}

variable "instance_type" {
  description = "Instance type to create an instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_access_key"{
    type    = string
}

variable "aws_secret_key"{
    type    = string
}

variable "ssh_private_key" {
  description = "pem file of Keypair we used to login to EC2 instances"
  type        = string
  default     = "./Keypair-01.pem"
}