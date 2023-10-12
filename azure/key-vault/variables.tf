variable "rg-name" {
  type    = string
  default = ""
}

variable "tenant_id" {
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
    sku_name = string
  })
}