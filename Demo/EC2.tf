resource "aws_instance" "roboshop-server" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"
  # tell tearrform to get the sg from below  , terraform will get the id 

  vpc_security_group_ids = [aws_security_group.roboshop-sg.id]

  tags = {
    Name = "roboshop"
  }
}

resource "aws_security_group" "roboshop-sg" {
  name        = "roboshop-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
 


  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


tags = {
    Name = "roboshop-sg"
  }
}