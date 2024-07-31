include {
  path = find_in_parent_folders("common.hcl")
}

terraform {
  source = "git::github.com/Suryavanshiaditya1999/network-skeleton-terraform//modules/internet_gateway?ref=main"
}

dependencies {
  paths = ["../network_skeleton"]
}

dependency "network_skeleton" {
  config_path  = "../network_skeleton"
}

inputs = {
     vpc_id = dependency.network_skeleton.outputs.vpc_id
     igw_name_tag = "igw"
}
