locals {
  locationShort = {
    uksouth = "uks"
    centralus = "usc"
  }

  vnet-name = join("-", [
    "vnet",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])

  nsg-name = join("-", [
    "vnet",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
