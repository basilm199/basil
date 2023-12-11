terraform {
  backend "s3" {
    bucket = "nissanrace"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }
}
