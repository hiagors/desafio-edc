resource "aws_s3_bucket_object" "bucket" {
    for_each = fileset("data/", "*")
    bucket = aws_s3_bucket.bucket.region_id
    key = each.value
    sourse = "data/${each.value}"
    etag = filemd5("data/${each.value}")

}