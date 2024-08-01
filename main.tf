# Configure the AWS provider
provider "aws" {
  region  = "us-east-1"  # Replace with your desired region
  access_key = youraccesskey
  secret_key = yoursecretkey
  # Add your AWS credentials if not using environment variables or shared credentials file
}

resource "aws_dynamodb_table" "GuestBook" {
  name         = "GuestBook"
  attribute    = [
    { name = "email", type = "S" },
    { name = "country", type = "S" },
    { name = "name", type = "S" },
  ]

  resource "aws_dynamodb_table_item" "item1" {
  table_name = aws_dynamodb_table.my_table.name
  item = {
    email = "naomi@yahoo.com"
    country = "Kenya"
    name = "Naomi"
  }
}

resource "aws_dynamodb_table_item" "item2" {
  table_name = aws_dynamodb_table.my_table.name
  item = {
    email = "brian@yahoo.com"
    country = "Kenya"
    name = "Brian"
  }
}

resource "aws_dynamodb_table_item" "item3" {
  table_name = aws_dynamodb_table.my_table.name
  item = {
    email = "janet@yahoo.com"
    country = "Ghana"
    name = "Janet"
  }
}

resource "aws_dynamodb_table_item" "item4" {
  table_name = aws_dynamodb_table.my_table.name
  item = {
    email = "ayobami@yahoo.com"
    country = "Nigeria"
    name = "Ayobami"
  }
}

  hash_key     = "email"
  range_key    = "country"
  billing_mode = "PAY_PER_REQUEST"
  read_capacity = 5
  write_capacity = 5
}
