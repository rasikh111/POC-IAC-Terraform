resource "aws_vpc" "secondary" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Secondary_main"
  }
}

resource "aws_subnet" "secondary_main" {
  vpc_id     = aws_vpc.secondary.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "secondary-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.secondary.id

  tags = {
    Name = "secondary_igw"
  }
}

# Create a route table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.secondary.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "secondary-rt"
  }
}

# Associate the subnet with the route table
resource "aws_route_table_association" "rt_assoc" {
  subnet_id      = aws_subnet.secondary_main.id
  route_table_id = aws_route_table.rt.id
}


# Create an ec2 instance 
resource "aws_instance" "example" {
  subnet_id = aws_subnet.secondary_main.id
  ami = "ami-0a94c8e4ca2674d5a"
  instance_type = "t2.micro"
  tags = {
    Name = "mymachine"
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.example.id
  domain   = "vpc"
}
