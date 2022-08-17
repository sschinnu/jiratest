resource "aws_s3_bucket" "elana" {
  bucket = "elana"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}

resource "aws_s3_bucket" "stephy1" {
  bucket = "stephy1"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}


