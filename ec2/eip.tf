resource "aws_eip" "this" {
    instance = aws_instance.web.id

    tags = {
      "Name" = "Demo-eip"
    }

}