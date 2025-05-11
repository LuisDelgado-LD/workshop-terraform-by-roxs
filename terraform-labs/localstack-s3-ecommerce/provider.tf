terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  # Configuration options
  profile                  = "localstack"
  shared_credentials_files = ["$HOME/.aws/credentials"]
  shared_config_files      = ["$HOME/.aws/config"]

}
