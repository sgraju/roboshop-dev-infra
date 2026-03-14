resource "aws_lb" "frontend_alb" {
  name  = "${local.common_name_suffix}-frontend-alb"
  internal  = false
  load_balancer_type = "application"
  security_groups    = [local.frontend_alb_sg_id]

  # it shoubd be private subnet ids
  subnets            = local.public_subnet_ids

  enable_deletion_protection = false # prevents accidental deletion from UI

  tags = merge (
    local.common_tags,
    {
      Name = "${var.project_name}-${var.environment}-frontend-alb"
    }
  )
}
