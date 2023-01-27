resource "aws_codecommit_repository" "analysis" {
  repository_name = "${local.name}-repo"
}

