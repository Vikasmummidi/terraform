provider "aws"{
alias = "us_east_1"
region = "us-east-1"
access_key =""
secret_key =""
}


resource "aws_instance" one{
provider = aws.us_east_1
tags = {
Name = "terraform-instance"
Environment = "Dev"
Project = "Zomato"
}
ami = "ami-0d94353f7bad10668"
instance_type = "t2.micro"
key_name ="instance_01"
}




provider "aws"{
alias="ap_south_1"
region = "ap-south-1"
access_key =""
secret_key =""
}


resource "aws_instance" two{
provider=aws.ap_south_1
tags = {
Name = "terraform-instance"
Environment = "Dev"
Project = "Swiggy"
}
ami = "ami-08ebc9e780cde07dd"
instance_type = "t2.micro"
key_name = "myy_keypari"
}
