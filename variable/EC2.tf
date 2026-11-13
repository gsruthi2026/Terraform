resource "aws_instance" "roboshop-mongodb" {
  ami           = var.amiId
  instance_type = var.instanceType
  # tell tearrform to get the sg from below  , terraform will get the id 

  vpc_security_group_ids = [aws_security_group.RS-mongodb.id]

  tags = var.ec2tags
}

resource "aws_security_group" "RS-mongodb" {
  name        = "RS-mongodb"
  description = "Allow TLS inbound traffic and all outbound traffic"
 


  ingress {
    from_port        = var.fromPort
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidrBlocks
    
  }

  egress {
    from_port        = var.fromPort
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidrBlocks
    
  }


tags = {
    Name = "RS-mongodb"
  }
}