provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  
}


#Create Security Group to allow port 22,80,443,3000,8080
resource "aws_security_group" "web" {
  name        = "allow_web_traffic"
  description = "Allow Web inbound traffic"
 
  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    description = "8080 jenkins port"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "3000 container port"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web"
  }
}
  

resource "aws_instance" "instance" {
ami="ami-052efd3df9dad4825"
instance_type = "t2.micro"
availability_zone = "us-east-1a"
 vpc_security_group_ids = [aws_security_group.web.id]

key_name = "server-key"

    count = 3

}  
