# locals {
#   a = join(["foo"], "bar")
#   b = max([1, 2, 3])
#   c = abs("minus five")
#   d = jsondecode("[1, 2, 3")
# }

resource "random_pet" "dog" {
  lifecycle {
    postcondition {
      condition     = self.length == 100
      error_message = "length must be exactly 100"
    }
  }
}
