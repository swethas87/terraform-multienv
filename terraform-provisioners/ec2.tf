resource "aws_instance" "db" {

  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0433e256572e383aa"]

  #   provisioner "local-exec" {
  #     command = "ansible-playbook -i private_ips.txt web.yaml"
  #   }

  #   provisioner "local-exec" {
  #     command = "echo ${self.private_ip} >> private_ips.txt"
  #   }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
}
