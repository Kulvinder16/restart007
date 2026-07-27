variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    address_prefixes     = list(string)
  }))
  
}