resource "azurerm_key_vault" "kv" {
  name                = local.kv-name
  resource_group_name = var.rg-name
  location            = var.location
  sku_name            = var.kv-conf.sku_name
  tenant_id           = var.tenant_id

  soft_delete_retention_days      = var.kv-conf.soft_delete_retention_days
  enabled_for_deployment          = var.kv-conf.enabled_for_deployment
  enable_rbac_authorization       = var.kv-conf.enable_rbac_authorization
  enabled_for_template_deployment = var.kv-conf.enabled_for_template_deployment
  enabled_for_disk_encryption     = var.kv-conf.enabled_for_disk_encryption
  purge_protection_enabled        = var.kv-conf.purge_protection_enabled

  access_policy {
    tenant_id           = var.tenant_id
    object_id           = var.object_id
    key_permissions     = var.kv-conf.access_policy.key_permissions
    secret_permissions  = var.kv-conf.access_policy.secret_permissions
    storage_permissions = var.kv-conf.access_policy.storage_permissions
    certificate_permissions = var.kv-conf.access_policy.certificate_permissions
  }

  network_acls {
    bypass = var.kv-conf.network_acls.bypass
    default_action = var.kv-conf.network_acls.default_action
    ip_rules = var.kv-conf.network_acls.ip_rules
  }

  tags = var.tags
}