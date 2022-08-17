resource "aws_s3_bucket" "elana" {
  bucket = "elana"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}


