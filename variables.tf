variable "domain_name" {
  default = "C10coaching16.sctp-sandbox.com"
}

variable "hosted_zone_name" {
  default = "sctp-sandbox.com."
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate in us-east-1"
  type        = string
}