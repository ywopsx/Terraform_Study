resource "aws_subnet" "public_subnet1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.10.10.0/24"

    availability_zone = "ap-northeast-1a"

    tags = {
        Name = "tf-sbn-an1-yewon-pub-1a"
    }
  
}

resource "aws_subnet" "public_subnet2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.10.11.0/24"

    availability_zone = "ap-northeast-1c"

    tags = {
        Name = "tf-sbn-an1-yewon-pub-1c"
    }
  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "tf-igw-an1-yewon"
    }
}
