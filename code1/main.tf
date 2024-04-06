resource "aws_iam_group" "developers" {
  name = "developers"
  lifecycle {
    prevent_destroy = false
    }
  }

resource "aws_iam_user" "usr1" {
  name = "victor"
  depends_on = [ aws_iam_group.developers ]
}