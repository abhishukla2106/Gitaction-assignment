resource "aws_instance" "web" {
  ami           = var.ami[count.index]
  instance_type = "t2.micro"
  count = length(var.ami)

  tags = {
    Name = var.ins_name[count.index],
   
    Owner = "Abhishek kumar Shukla"
  }
}