variable "rg-name" {
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

variable "snet-id" {
  type = string
}

variable "kv-id" {
  type = string
}

variable "vm-conf" {
  type = object({
    admin_username = string
    size = string
    nic = object({
      private_ip_address_allocation = string
      private_ip_address = string
      create_public_ip = bool
    })
    spot = optional(object({
      eviction_policy = string
      max_bid_price = string
    }))
  })
}

variable "custom_data" {
  type = string
  default = ""
}

variable "ssh_public_key" {
  type = string
  default = ""
}