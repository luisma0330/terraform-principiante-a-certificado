resource "aws_instance" "public_instance" {
  ami                    = var.ec2_specs.ami
  instance_type          = var.ec2_specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  provisioner "local-exec" {
    command = "echo instancia creada con IP ${aws_instance.public_instance.public_ip} >> datos_instancia.txt"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo Instancia ${self.public_ip} destruida >> datos_instancia.txt"

  }



  # provisioner "remote-exec" {
  #   inline = [ 
  #     "echo 'hola mundo' > ~/saludo.txt"
  #    ]
  #    connection {
  #      type = "ssh"
  #      host = self.public_ip
  #      user = "ec2-user"
  #      private_key = file("mykey.pem")
  #    }
  # }

  # lifecycle {
  #   #create_before_destroy = true
  #   #prevent_destroy = true
  #   # ignore_changes = [ 
  #   #   ami,
  #   #   subnet_id 
  #   #   ]
  #   # replace_triggered_by = [ 
  #   #   aws_subnet.private_subnet 
  #   #   ]
  # }
}

# resource "aws_instance" "mywebserver" {
#     ami                                  = "ami-08a0d1e16fc3f61ea"
#     instance_type                        = "t2.micro"
#     key_name                             = data.aws_key_pair.key.key_name
#     subnet_id                            = aws_subnet.public_subnet.id
#     tags                                 = {
#         "Name" = "myServer"
#     }
#     vpc_security_group_ids               = [
#         aws_security_group.sg_public_instance.id
#     ]
# }

