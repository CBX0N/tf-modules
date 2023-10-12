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
      address_prefixes = list(string)
      }))
  ) })
  default = {
    address_space = []
  }
}
