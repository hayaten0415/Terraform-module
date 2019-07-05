variable "bucket_name" {
  
}


variable "acl" {
  default = "private"
  description = "private, public-read, pubilic-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write"
}


## S3バケットのバージョニングについて
variable "version_enabled" {
  default     = false
  description = "s3 versioning"
}

## S3バケットの暗号化アルゴリズム
variable "sse_algorithm" {
  default     = "AES256"
  description = "Valid values are AES256 and aws:kms"
}

# KMSで暗号化する場合のKMS master key
variable "kms_master_key_id" {
  default = ""
  description = "when 'aws:kms' is chosen case by sse_algorithm, you enter AWS KMS master key"
}
