include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "git::github.com/Suryavanshiaditya1999/network-skeleton-terraform//modules/network_skeleton?ref=main"
}

inputs = {
  vpc_cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  vpc_name = "my-vpc"
  subnet_cidr_block = "10.0.0.0/24"
  subnet_name = "my-subnet"
}
