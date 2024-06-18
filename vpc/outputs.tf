
output "vpc_id" {
    value = aws_vpc.main.id
    description = "returns the vpc unique id"
}

output "vpc_arn" {
    value = aws_vpc.main.arn
    description = "returns the aws resource name of the vpc"
}

output "public_subnet_1_id" {
    value = aws_subnet.public_subnet_1.id
    description = "subnet id of public subnet one"
}

output "public_subnet_2_id" {
    value = aws_subnet.public_subnet_2.id
    description = "subnet id of public subnet two"
}

output "private_subnet_1_id" {
    value = aws_subnet.private_subnet_1.id
    description = "subnet id of private subnet one"
}

output "private_subnet_2_id" {
    value = aws_subnet.private_subnet_2.id
    description = "subnet id of private subnet two"
}