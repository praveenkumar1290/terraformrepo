resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.launchconfig.id
  load_balancers       = ["${aws_elb.loadbalancer.name}"]
  availability_zones   = ["eu-central-1a", "eu-central-1b"]
  min_size             = 2
  max_size             = 5
  desired_capacity     = 3
  tag {
    key                 = "Name"
    value               = "autoscallingroup"
    propagate_at_launch = true
  }
}