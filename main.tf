locals {
  a = join(["foo"], "bar")
  b = max([1, 2, 3])
  c = abs("minus five")
  d = jsondecode("[1, 2, 3")
}

resource "random_pet" "dog" {
  lifecycle {
    precondition {
      condition     = 101 == 100
      error_message = "length must be exactly 100"
    }
  }
}
