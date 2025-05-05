resource "aws_s3_bucket" "mybucket" {
  bucket = "rasikh-bucket2322"
  tags = {
    Name = "mys3bucket"
}
}


#Store object in a s3 bucket

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.mybucket.id
  key = "rasikh/rasikh.txt"
  source = "./rasikh.txt"


  etag = filemd5("./rasikh.txt")
}
