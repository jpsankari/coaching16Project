resource "aws_dynamodb_table" "c10-sankari-short_ids" {
  name         = "c10_short-ids"
  billing_mode = "PAY_PER_REQUEST"  # auto-scaling, no need to set read/write capacity
  hash_key = "c10_short_id"  # primary key
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
    Name        = "c10_sankari_short-ids"
    Environment = "dev"
  }
}
