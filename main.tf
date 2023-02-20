resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags       = merget(
    local.common_tags,
    { Name = "${var.env}-vpc" }
    )
}