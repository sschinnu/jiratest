resource "aws_s3_bucket" "mfadeleteadd" {
  bucket = "mfadeleteadd"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}
