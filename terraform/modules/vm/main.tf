data "template_file" "user_data" {
  template = file("${path.module}/../../scripts/user_data.sh")
}

resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  user_data_base64       = base64encode(data.template_file.user_data.rendered)
}
