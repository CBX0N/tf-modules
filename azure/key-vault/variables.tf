variable "rg-name" {
  type    = string
  default = ""
}

variable "tenant_id" {
  type    = string
  default = ""
}

variable "object_id" {
  type    = string
  default = ""
}

variable "location" {
  type    = string
  default = ""
}

variable "service" {
  type    = string
  default = ""
}

variable "env" {
  type    = string
  default = ""
}

variable "index" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(any)
  default = {}
}


#####

variable "kv-conf" {
  type = object({
    sku_name                        = string
    soft_delete_retention_days      = number
    enabled_for_disk_encryption     = optional(bool, false)
    enabled_for_deployment          = optional(bool, false)
    enable_rbac_authorization       = optional(bool, false)
    enabled_for_template_deployment = optional(bool, false)
    purge_protection_enabled        = optional(bool, false)
    access_policy = optional(object({
      certificate_permissions = list(string)
      key_permissions     = list(string)
      secret_permissions  = list(string)
      storage_permissions = list(string)
    }))
    network_acls = optional(object({
      bypass = string
      default_action = string
      ip_rules = list(string)
    }))
  })
}