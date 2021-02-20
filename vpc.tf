resource "aws_vpc" "ravi-dev" {
  cidr_block = var.cidr
  tags = {
    Name = "ravi-dev"
  }

}

