
#output "sg_id" {
 # value = aws_security_group.securitygroup.id
#}

output "asg_arn" {
  value = aws_autoscaling_group.asg.arn
}
output "dns_elb" {
  value = aws_elb.loadbalancer.dns_name
}
#output "instance_id" {

# value = ["${aws_instance.ec2-web.*.id}"]

#}

#output "public_ip" {
#value = ["${aws_instance.ec2-web.*.public_ip}"]
#}