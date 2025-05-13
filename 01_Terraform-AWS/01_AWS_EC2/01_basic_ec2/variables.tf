variable "region" {
    description = "region name"
    type = string
    default = "ap-south-1"
}
variable "ami_id" {
    type = string
    default = "ami-0c02fb55956c7d316"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "aws_access_key" {
    type = string
}
variable "aws_secret_key" {
    type = string
}
variable "vpc_id" {
    type = string
}