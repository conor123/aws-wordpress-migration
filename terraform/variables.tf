variable "aws_key_path" {}

variable "aws_key_name" {}

variable "aws_credentials" {}

variable "chef_user" {}

variable "chef_user_key" {}

variable "chef_server_url" {}

//variable "chef_secret_key" {}

variable "vpc_region" {
    default = "eu-west-1"
}

variable "vpc_amis" {
    type = "map"
    description = "VPC AMIs"
    default = {
        # ubuntu xenial 16.04 LTS - not HVM supported! 'ami-06d11e7f'

        #Amazon Linux AMI 2017.09.0 (HVM), SSD Volume Type - ami-acd005d5
        eu-west-1 = "ami-acd005d5"
    }
}

variable "vpc_cidr_block" {
    description = "VPC CIDR block"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
    description = "Public Subnet CIDR block"
    default = "10.0.0.0/24"
}

variable "private_subnet_cidr_block" {
    description = "Private Subnet CIDR block"
    default = "10.0.1.0/24"
}