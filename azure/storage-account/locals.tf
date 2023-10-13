locals {
  locationShort = {
    uksouth = "uks"
        centralus = "usc"
  }

  str-name = join("", [
    "str",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
