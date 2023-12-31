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

variable "net-conf" {
  type = object({
    address_space = list(string)
    subnet-conf = optional(map(object({
      name             = string
      nsg              = bool
      address_prefixes = list(string)
      }))
  ) })
  default = {
    address_space = []
  }
}

variable "nsg-conf" {
  type = map(object({
    name                         = string
    access                       = string
    description                  = optional(string, "")
    direction                    = string
    priority                     = string
    protocol                     = string
    source_address_prefix        = optional(string)
    source_port_range            = optional(string)
    destination_address_prefix   = optional(string)
    destination_port_range       = optional(string)
    source_address_prefixes      = optional(list(string))
    source_port_ranges           = optional(list(string))
    destination_address_prefixes = optional(list(string))
    destination_port_ranges      = optional(list(string))
  }))
}