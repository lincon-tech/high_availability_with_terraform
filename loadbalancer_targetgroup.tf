resource "aws_lb_target_group" "alb-target-group-lab3" {
  name     = "alb-target-group-lab3"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.custom.id

  health_check {
    enabled             = true
    interval            = 30
    path                = "/health.html"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}