terraform {
  required_version = "1.2.3"

  required_providers {
    aws = "4.19.0"
  }

  backend "s3" {
    bucket  = "analysis-tfstate-s3"
    key     = "terraform.tfstate"
    region  = "eu-west-3"
    encrypt = true
  }
}

provider "aws" {
  region  = var.region
}

locals {
  function_name = "${var.app_name}-func"
  function_name_crawler = "${var.app_name}-crawler"
  name = var.app_name
}
