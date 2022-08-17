locals {
  a = join(["foo"], "bar")
  b = max([1, 2, 3])
  c = abs("minus five")
  d = jsondecode("[1, 2, 3")
  e = 101
}

variable "name_length" {
  default = 4
}

resource "random_pet" "always_new" {
  lifecycle {
    precondition {
      condition     = var.name_length > 5 // false triggers error
      error_message = "Name length must be greater than 5."
    }

    # postcondition {
    #   condition     = var.name_length > 10 // false triggers error
    #   error_message = "Name length must be greater than 5."
    # }
  }

  keepers = {
    uuid = uuid() # Force a new name each time
  }
  length = var.name_length
}

output "pet" {
  value = random_pet.always_new.id
}
