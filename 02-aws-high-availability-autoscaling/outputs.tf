output "alb_dns_name" {
  description = "Open this hostname in your browser after apply"
  value       = aws_lb.web.dns_name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.web.name
}
