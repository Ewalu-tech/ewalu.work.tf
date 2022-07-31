variable "instance_profile_name" {
  
}


resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "vamsi-chunduru"
  iam_instance_profile = var.instance_profile_name

  tags = {
    Name = "web-server"
  }

}





