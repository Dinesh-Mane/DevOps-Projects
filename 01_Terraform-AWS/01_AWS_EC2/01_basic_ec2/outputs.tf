output "instance_id" {
    description = "The id of our EC2 instace is: "
    value = aws_instance.ec2.id
}
output "instace_public_ip" {
    description = "Public ip of our Ec2 instance is: "
    value = aws_instance.ec2.public_ip
}