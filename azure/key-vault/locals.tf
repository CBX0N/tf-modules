locals {
  locationShort = {
    uksouth = "uks"
  }

  kv-name = join("-", [
    "kv",
    var.service,
    var.env,
    local.locationShort[var.location],
    var.index
  ])
}
