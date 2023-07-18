provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "myUser" {
  name = "TJ"
}

resource "aws_iam_policy" "CustomPolicy" {
  name = "GlacerEFSEC2"

  policy = <<EOF

  EOF
}

resource "aws_iam_policy_attachment" "policyBind" {
  name   = "attachment"
  users = aws_iam_user.myUser.name
  policy_arn = aws_iam_policy.CustomPolicy.arn
}