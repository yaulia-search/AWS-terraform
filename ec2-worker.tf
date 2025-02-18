resource "aws_instance" "ec2-control" {
    ami = "ami-00da1b811c2e3dc7d" # Ubuntu image
    instance_type = "t3.micro" 
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.sg_custom.id]
key_name = "nlb_keypair"
tags = {
    "Name" = "ec2-control"
}
}