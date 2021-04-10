variable "region" {
  default = "eu-central-1"
  type    = string
}

variable "owner" {
  default = "Anonymous"
  type    = string
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "allowed_ports" {
  default = [80, 443]
  type    = list(number)
}
