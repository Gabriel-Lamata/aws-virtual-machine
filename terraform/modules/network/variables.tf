variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "az" {
  default = "us-east-1a"
}

variable "allowed_ssh_cidr" {
  description = "Faixa de IPs permitidos para acessar via SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Ajuste para o seu IP público depois
}
