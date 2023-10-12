locals {
  locationShort = {
    uksouth = "uks"
  }

  vnet-name = join("-", [
    "vnet",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
