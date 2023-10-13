locals {
  locationShort = {
    uksouth = "uks"
    centralus = "usc"
  }

  vm-name = join("", [
    "vm",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
