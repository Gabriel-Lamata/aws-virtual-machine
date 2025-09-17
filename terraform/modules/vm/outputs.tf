output "public_dns" {
  value = aws_instance.instance.public_dns
}

output "public_ip" {
  value = aws_instance.instance.public_ip
}
