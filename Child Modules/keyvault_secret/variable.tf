variable "secrets" {
    type = map(object({
        name  = string
        value = string
    }))
  
}