#-----networking/outputs.tf

output "public_subnets" {
  value = "${aws_subnet.tf_public_subnet.*.id}"
}

output "private_subnets" {
  value = "${aws_subnet.tf_private_subnet.*.id}"
}

output "public_sg" {
  value = "${aws_security_group.tf_public_sg.id}"
}

output "public_subnet_ips" {
  value = "${aws_subnet.tf_public_subnet.*.cidr_block}"
}

output "private_subnet_ips" {
  value = "${aws_subnet.tf_private_subnet.*.cidr_block}"
}

output "nat_gateway" {
  value = "${aws_nat_gateway.nat_gateway.*.id}"
}