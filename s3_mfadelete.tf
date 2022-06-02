resource "aws_s3_bucket" "mfadelete" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled = false
    mfa_delete = false
  }
}

resource "aws_s3_bucket" "mfadeletefail" {
  bucket = "examplebuckettftest2"
  acl    = "private"
}

resource "aws_s3_bucket" "mfadeletefail2" {
  bucket = "examplebuckettftest3"
  acl    = "private"
  versioning {
    enabled = false
    mfa_delete = fasle
  }
}
