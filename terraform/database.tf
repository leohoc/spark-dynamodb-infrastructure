resource "aws_dynamodb_table" "citation-dynamodb-table" {
  name           = "Covid19Citation"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "citationCode"
  range_key      = "title"

  attribute {
    name = "citationCode"
    type = "S"
  }

  attribute {
    name = "title"
    type = "S"
  }

  tags = {
    Name        = "dynamodb-covid19citation-table"
  }
}

resource "aws_s3_bucket" "spark-dynamodb-example" {
  bucket = "spark-dynamodb-example"
  acl    = "private"

  tags = {
    Name        = "spark-dynamodb-example"
  }
}
