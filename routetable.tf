resource "aws_route_table" "rtb" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "tf-rtb-an1-yewon"
    }
}

resource "aws_route_table_association" "rtassociation1" {
    subnet_id = aws_subnet.public_subnet1.id
    route_table_id = aws_route_table.rtb.id
}

resource "aws_route_table_association" "rtassociation2" {
    subnet_id = aws_subnet.public_subnet2.id
    route_table_id = aws_route_table.rtb.id
}

resource "aws_route" "defaultroute" {
    route_table_id = aws_route_table.rtb.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id  
}