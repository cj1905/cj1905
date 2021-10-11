variable "ec2_count" {
  default = 1
}

variable "ami_id" {
  type = string
  validation {
    condition = length(var.ami_id) > 4 && substr(var.ami_id, 0, 4) == "ami-"
    error_message = "Image ID value is incorrect, please check."
  }
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "key_name_id" {
  default = "ec2-user"
}

variable "sg_name" {}


