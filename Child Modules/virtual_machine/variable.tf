variable "vms" {
  type = map(object({
      nic_name           = string
      vm_name            = string
      resource_group_name = string
      location           = string
      vm_size           = string
    }
   ))
}