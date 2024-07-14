data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-nami"]
  }

  filter {
    name = "virtualization-type"
    values = ["hmv"]
  }
  
  owners = ["799382823631"]
}

recourses "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t3.nano"

  tags = {
    Name = "ITTalent_"
  }
}
