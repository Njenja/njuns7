resource "aws_vpc" "day1VPC" {
    cidr_block = "10.0.0.0/16"
}

#Creation of subnet
resource "aws_subnet" "privSub1" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.day1VPC.id
    tags = {
        "Name" = "privSub1"
    }
}