variable "aws_region" {
  description = "The AWS region to deploy resources"
  type = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type = string
}

variable "subnet_count" {
  description = "Number of subnets"
  type = map(number)
  default = {
    public = 2,
    private = 2
  }
}

variable "settings" {
  description = "Configuration settings"
  type = map(any)
  default = {
    # "database" = {
    #   allocated_storage = 10
    #   db_name           = "roger_db"
    #   engine            = "mysql"
    #   engine_version    = "8.0"
    #   instance_class    = "db.t3.micro"
    #   parameter_group_name = "default.mysql8.0"
    #   skip_final_snapshot = true
    # },
    "web_app" = {
      count         = 1
      instance_type = "t2.micro"
    }
  }
}


variable "public_subnet_cidr" {
  description = "Available CIDR-public subnets"
  type = list(string)
}

variable "private_subnet_cidr" {
  description = "Available CIDR-private subnets"
  type = list(string)
}

#terraform.tfvars
variable "my_ip" {
  description = "Your IP address"
  type = string
  sensitive = true
}

