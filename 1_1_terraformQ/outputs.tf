#----root/outputs.tf-----

#----storage outputs------

output "Bucket_Name" {
  value = module.storage.bucketname
}

#---Networking Outputs -----

output "Public_Subnets" {
  value = join(", ", module.networking.public_subnets)
}

output "Public_Subnet_IPs" {
  value = join(", ", module.networking.public_subnet_ips)
}

output "Public_Security_Group" {
  value = module.networking.public_sg
}

output "Private_Subnets" {
  value = join(", ", module.networking.private_subnets)
}

output "Private_Subnet_IPs" {
  value = join(", ", module.networking.private_subnet_ips)
}

output "NAT_Gateway" {
  value = module.networking.nat_gateway
}

#---Compute Outputs ------

output "Public_Instance_IDs" {
  value = module.compute.server_id
}

output "Public_Instance_IPs" {
  value = module.compute.server_ip
}

#---IAM Outputs ----

output "IAM_Role" {
  value = module.iam_role.iam_role
}

