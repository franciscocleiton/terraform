output "instance_ami" {
    value = "aws_instance.web.ami"
}

output "instance_arn" {
    value = "aws_instance.web.arn"
}

output "instance_public_ip" {
    description = "O endereco Ip publico da instancia"
    value       = aws_instance.web.public_ip
}
