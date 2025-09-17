module "network" {
  source           = "./modules/network"
  vpc_cidr         = "10.0.0.0/16"
  subnet_cidr      = "10.0.1.0/24"
  az               = "us-east-1a"
  allowed_ssh_cidr = ["0.0.0.0/0"] # Troque pelo seu IP
}

module "vm" {
  source        = "./modules/vm"
  subnet_id     = module.network.subnet_id
  sg_id         = module.network.sg_id
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
}
