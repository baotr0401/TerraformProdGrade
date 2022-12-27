/* output "all_arns" {
  value       = aws_iam_user.example[*].arn
  description = "The ARNs for all users"
}
*/

output "all_arns" {
  value = values(aws_iam_user.example)[*].arn
}

output "all_users" {
  value = aws_iam_user.example
}

output "upper_names" {
  value = [for name in var.user_names : upper(name)]
}

output "short_upper_names" {
  value = [for name in var.user_names : upper(name) if length(name) < 5]
}