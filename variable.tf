variable "mycidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "myreion" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "production"
}

variable "pvt_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "pvt_subnet_az" {
  type    = string
  default = "us-east-1a"
}

variable "pub_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "pubt_subnet_az" {
  type    = string
  default = "us-east-1b"
}