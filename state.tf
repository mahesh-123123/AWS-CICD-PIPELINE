/*terraform{
    backend "s3" {
        bucket = "mahesh-aws-cicd-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "ap-south-1"
    }
}

provider "aws" {
    region = "ap-south-1"
    profile = "terraform-mahesh"
}*/


# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "mahesh-aws-cicd-pipeline"
    key       = "terraform.tfstate"
    region    = "ap-south-1"
    profile   = "terraform-mahesh"
  }
}
