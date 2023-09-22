provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2VDGXKWKKXQMJ7UE"
    secret_key = ""
}

resource "aws_instance" "ex" {
    ami           = "ami-0261755bbcb8c4a84"
    instance_type = "t2.micro"

    tags = {
        Name = "MyEC2"
    }
}

output "public_ip" {
    value = aws_instance.ex.public_ip
}