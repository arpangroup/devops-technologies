provider "aws" {
  region     = "ap-south-1_ABCDEFFGH"
  access_key = "ABCDEFFGH_AKIAWNP4RYDQTLM3V55A_ABCDEFFGH"
  secret_key = "ABCDEFFGH_59fhdspvL3mcQhnvfgITQp/VhOxRsSzY0hrNFbzL_ABCDEFFGH"
}


resource "aws_instance" "ec2_instance_1" {
    ami             = "ami-068257025f72f470d"
    instance_type   = "t2.micro"
    # key_name        = "${aws_key_pair.keypair.key_name}"
    key_name        = "main-access-key"
    # vpc_security_group_ids = [ aws_security_group.sg_allow_http.id,  aws_security_group.sg_allow_ssh.id]
    vpc_security_group_ids = [ "${aws_security_group.webSG.id}"]
    # user_data = "${file("script.sh")}"         

  # user_data = <<-EOF
  #               #!/bin/bash
  #               sudo su
  #               sudo apt-get update -y
  #               sudo apt-get install -y apache2 
  #               sudo systemctl start apache2
  #               sudo echo "hello world" > /var/www/html/index.html
  #               EOF


  # root_block_device {
  #   volume_size = 20 # in GB <<----- I increased this, default=8GB!
  #   volume_type = "gp2"
  # }

  tags = {
    Name = "PureEats-EC2"
  }
}



# resource "null_resource" "copyhtml" {
#     # depends_on = [
#     #   aws_instance.ec2_instance_1
#     # ]
#     # connection {
#     #     type = "ssh"
#     #     host = aws_instance.ec2_instance_1.public_ip
#     #     user = "ubuntu"
#     #     # private_key = file("C:\\Users\\Arpan\\.ssh\\backup\\ec2-access-key.ppk")    
#     #     private_key = file("./main-access-key.pem")
#     #     agent = false
#     #     timeout = "1m"
        
#     #     # The connection will use the local SSH agent for authentication.
#     #     # agent = false
#     # }

    
#     # provisioner "file" {   
#     #     # content = "hello world"
#     #     source = "script.sh"
#     #     destination = "/home/ubuntu/hello.txt"    
#     # }    

#     # provisioner "remote-exec" {
#     #   inline = [
#     #     "ls -a",
#     #     "mkdir DummyDirectory",
#     #     "sudo chmod +x bash.sh",
#     #     "sudo ./bash.sh"
#     #   ]
#     # }

  

# }







# resource "aws_key_pair" "keypair" {
#   key_name = "ec2-access-key"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkYoBz+JK0IWaSQYoTOaHdsDdA7Kb+u2G+tqEOv1+peWog2uK3Fwwao9o27sRM42QUz6E/mCVIq7v1LHzkY+BB+zOfAMEVqKiGbDv18FFEHUTA7gh8eMvCpUWAvc7ZX9J+QDvT8NyXejVuam3CXEjAfmqU2vuzl9uIQHRqsp1EktGLFH/tv928QV3Jc65NpBa15TV9fyT78fO0qBhZ71E/vokJsSUQJFZRqDLAOuN4dBUZO6UNTt2xFms/CFY7KDdRsRf3LIfN50gOG7qlrfROysPy0WLSp46+LndpkMjPksk+MIRz/5WT3Ur1ra+IvVZgDDscqJtYdinsW5M7NpS7 rsa-key-20220511"
  
# }

# resource "aws_key_pair" "keypair" {
#   key_name   = "ec2-access-key"
#   public_key = "${file(var.public_key_path)}"
# }

# resource "aws_key_pair" "auth" {
#   key_name   = "${var.key_name}"
#   public_key = "${file(var.public_key_path)}"
# }

output "my_console_output" {
  value = aws_instance.ec2_instance_1.public_ip
}


resource "aws_security_group" "webSG" {
  name        = "webSG"
  description = "Allow ssh  inbound traffic"

  ingress {
    from_port   = 21
    to_port     = 21
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    
  }
}

