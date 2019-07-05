resource "aws_s3_bucket" "default" {
  bucket = "${var.bucket_name}"
  acl = "${var.acl}"

  versioning{
    enabled = "${var.version_enabled}"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "${aws_kms_key.mykey.arn}"
        sse_algorithm     = "${var.sse_algorithm}"
      }
    }
  }
}


