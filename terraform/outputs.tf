output "bucket_name" {
  value = aws_s3_bucket.website_bucket.bucket
}

output "ec2_public_ip" {
  value = aws_instance.example.public_ip
}
