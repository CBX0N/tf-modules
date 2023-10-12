locals {
  locationShort = {
    uksouth = "uks"
  }

  str-name = join("", [
    "str",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
