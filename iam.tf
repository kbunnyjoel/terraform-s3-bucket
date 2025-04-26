resource "aws_iam_role" "s3_access_role" {
  name               = "s3-access-role"
  assume_role_policy = file("${path.module}/sts_s3_role.json")
}


resource "aws_iam_policy" "s3_access_policy" {
  name        = "s3-access-policy"
  description = "Policy to allow access to S3 bucket and objects"
  policy      = file("${path.module}/s3_iam_policy.json")
}

# Attach the policy to the role
resource "aws_iam_role_policy_attachment" "s3_access_attachment" {
  role       = aws_iam_role.s3_access_role.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}
