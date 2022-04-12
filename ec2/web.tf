resource "aws_instance" "web" {
    ami = "ami-04505e74c0741db8d"
    instance_type = "t3.micro"
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = [var.security_group_id]
    user_data = file("./ec2/server-script.sh")
    tags = {
        Name = "Web Server"
    }
}