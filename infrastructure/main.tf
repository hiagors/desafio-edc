

resource "aws_s3_bucket" "bucket" {
  bucket = var.base_bucket_name
  acl    = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

}

provider "aws" {
  region = "us-east-2"
}