variable "amiId"{
    type =string
    default = "ami-0055977a6e828a4f4"

}

variable "instanceType"{
    type =string
    default = "t3.micro"

}
variable "fromPort"{
    type =number
    default = 0

}
variable "cidrBlocks"{
    type = list
    default = ["0.0.0.0/0"]

}
variable "ec2tags"{
    type = map
    default={
        Name = "RS-Mongodb"
        Environment = "prod"
        Owner =" sruthi"
        Terraform="true"
        Component ="mongodb"

    }
   

}