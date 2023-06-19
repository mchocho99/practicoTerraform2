resource "aws_s3_bucket" "mys3bucket" {
  for_each = {
    dev  = "my-dapp-bucket"
    qa   = "my-qapp-bucket"
    stag = "my-sapp-bucket"
    prod = "my-papp-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    eachValue  = each.value
    Enviroment = each.key
    bucketname = "${each.key}-$each.value"
  }
}

resource "aws_iam_user" "myuser" {
  for_each = toset(["Jack", "James", "Madhu", "Dave"])
  name = each.key
}