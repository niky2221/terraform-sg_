resource "aws_security_group" "mysql_sg" {
  name        = "${var.project}-${var.environment}-mysql_sg"
  description = "mysql security group"
  vpc_id      = data.aws_ssm_parameter.vpc_id.id

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
    Name = "${var.project}-${var.environment}-mysql_sg"
  }
  )
}
