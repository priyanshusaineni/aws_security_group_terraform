name        = "newtest-sg"
vpc_id      = "vpc-00c77f79f94607dbf"
description = "Test security group"

ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTP"
    }
  ]
egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    }
  ]
tags = {
    owner       = "ARCH-Platform",
    cost_center = "615110",
    environment = "DEV1",
    scc_jenkins = "T"
}