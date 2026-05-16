variable "region" {
  default = "eu-north-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "devops-key"
}

variable "ami_id" {
  type        = string
  default     = "ami-0c55b159cbfafe1f0" #  Amazon Linux
}
