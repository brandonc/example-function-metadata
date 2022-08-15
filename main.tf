locals {
  a = join(["foo"], "bar")
  b = max([1, 2, 3])
  c = abs("minus five")
  d = jsondecode("[1, 2, 3")
}
