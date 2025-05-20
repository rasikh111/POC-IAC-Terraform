resource "aws_instance" "server" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_name]
  subnet_id = var.pub_sub

  connection {
    type= "ssh"
    user = "ubuntu"
    private_key = file("/home/ubuntu/.ssh/test-app-key.pem")
    host = self.public_ip
}

# File provisioner to copy a file from localto remote ec2 instance

  provisioner "file" {
    source = "./app.py"
    destination = "/home/ubuntu/app.py"
}

  provisioner "remote-exec" {
    inline = [
       "echo 'Hello from the remote instance'",
       "sudo apt-get update -y",
       "sudo apt-get install -y python3-pip",
       "cd /home/ubuntu",
       "sudo pip3 install venv",
       "python3 -m venv .",
       "source bin/activate",
       "sudo pip3 install flask",
       "nohup sudo python3 app.py > /dev/null 2>&1 &",
  ]
 }
}
