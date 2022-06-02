resource "aws_s3_bucket" "mfadelete" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled = false
    mfa_delete = false
  }
}

resource "aws_s3_bucket" "mfadeletefail" {
  bucket = "examplebuckettftest"
  acl    = "private"
}

resource "aws_s3_bucket" "mfadeletefail" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled = false
    mfa_delete = fasle
  }
}
