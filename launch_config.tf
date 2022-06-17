resource "aws_launch_configuration" "launchconfig" {
  name            = "instance-launch"
  image_id        = "ami-09439f09c55136ecf"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.securitygroup.id]
  user_data       = file("./script.sh")

  lifecycle {
    create_before_destroy = true
  }
}