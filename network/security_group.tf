resource "aws_security_group" "web_traffic" {
    name = "Allow Web Traffic"
    vpc_id = aws_vpc.this.id

    dynamic "ingress" {
        iterator = port
        for_each = var.ingress
        
        content {
            from_port = port.value
            to_port = port. value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

        dynamic "egress" {
        iterator = port
        for_each = var.egress
        content {
            from_port = port.value
            to_port = port. value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    tags = {
      "Name" = "Demo-SG-Web"
    }
}