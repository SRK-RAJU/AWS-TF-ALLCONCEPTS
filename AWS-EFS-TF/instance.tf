provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testinstance" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet[0].id
  associate_public_ip_address= true
  vpc_security_group_ids = [ aws_security_group.ec2.id ]
  key_name="zwaw"
  tags= {
    Name = "efs-raju"
  }
}