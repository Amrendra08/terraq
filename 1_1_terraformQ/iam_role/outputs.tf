output "iam_role" {
  value = "${aws_iam_role.test_role.*.id}"
}