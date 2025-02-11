resource "aws_instance" "db" {

  //count                  = length(var.instance_names)
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-0433e256572e383aa"]



}
