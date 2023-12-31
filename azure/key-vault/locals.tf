locals {
  locationShort = {
    uksouth = "uks"
        centralus = "usc"
  }

  kv-name = join("-", [
    "kv",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
