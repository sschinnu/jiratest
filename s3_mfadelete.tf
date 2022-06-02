resource "aws_s3_bucket" "mfadelete" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}

resource "aws_s3_bucket" "mfadeletefail" {
  bucket = "examplebuckettftest2"
  acl    = "private"
    versioning {
    enabled = true
    mfa_delete = true
  }
}

resource "aws_s3_bucket" "mfadeletefail2" {
  bucket = "examplebuckettftest3"
  acl    = "private"
  versioning {
    enabled = true
    mfa_delete = true
  }
}
