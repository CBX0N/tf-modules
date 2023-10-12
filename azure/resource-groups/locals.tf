locals {
  locationShort = {
    uksouth = "uks"
  }

  rg-name = join("-",[
    "rg",
    var.rg-name,
    var.service,
    var.env,
    local.locationShort(var.location),
    var.index
  ])
}
