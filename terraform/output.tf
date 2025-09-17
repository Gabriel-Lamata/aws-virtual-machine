output "ec2_public_url" {
  value       = "http://${module.vm.public_dns}"
  description = "URL público da instância EC2"
}

output "ec2_public_ip" {
  value       = module.vm.public_ip
  description = "IP público da instância EC2"
}
