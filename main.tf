resource "aws_dynamodb_table" "c10-sankari-short_ids" {
  name         = "short-ids"
  billing_mode = "PAY_PER_REQUEST"  # auto-scaling, no need to set read/write capacity
  hash_key = "short_id"  # primary key
  attribute {
    name = "short_id"
    type = "S" # string
  }
  # Optional: TTL to expire short links (e.g., after 30 days)
  ttl {
    attribute_name = "expire_at"
    enabled        = true
  }
  tags = {
    Name        = "short-ids"
    Environment = "dev"
  }
}