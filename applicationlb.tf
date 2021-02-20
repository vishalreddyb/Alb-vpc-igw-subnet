resource "aws_lb_target_group" "test" {
  name     = var.alb_tg_name
  port     = var.port
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}
resource "aws_lb" "test" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.elb.id]
  subnets            = var.subnets
}
resource "aws_lb_listener" "back_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = var.port1
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = var.port2
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = var.port2
  protocol          = "HTTPS"
  ssl_policy        = var.ssl
  certificate_arn   = var.arn
default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}
