output "web_public_ip" {
  description = "The public IP address of web server"
  value = aws_eip.roger_web_eip[0].public_ip
  depends_on = [ aws_eip.roger_web_eip ]
}

output "web_public_dns" {
  description = "The public DNS address of web server"
  value = aws_eip.roger_web_eip[0].public_dns
  depends_on = [aws_eip.roger_web_eip]
}

output "database_endpoint" {
  description = "The endpoint of database"
  value = aws_db_instance.roger_db.address
}

output "database_port" {
  description = "The port of database"
  value = aws_db_instance.roger_db.port
}

output "aws_iam_policy" {
  description = "aws_iam_policy_arn"
  value = aws_iam_policy.rds_access_policy.arn  
}