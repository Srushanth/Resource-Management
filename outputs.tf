output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.development_server_with_gpu.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.development_server_with_gpu.public_ip
}
