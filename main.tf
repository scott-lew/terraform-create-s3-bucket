resource "aws_s3_bucket" "harness_demo" {
  bucket = "harness-demo-bucket"

  tags = {
    Name        = "harness-demo-bucket-scott"
    Environment = "Demo"
  }
}

resource "aws_s3_bucket_acl" "harness_demo" {
  bucket = aws_s3_bucket.harness_demo.id
  acl    = "private"
}