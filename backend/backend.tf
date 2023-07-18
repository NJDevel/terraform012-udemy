terraform {
  backend "s3" {
    key = "terraform/tfstate.tfstate"
    bucket = ""
    region = "eu-west-2"
    access_key = ""
    secret_key = ""
  }
}