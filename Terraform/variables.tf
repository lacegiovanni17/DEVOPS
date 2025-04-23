variable "ipAddress" {
  description = "10.0.0.0/16"
  type        = string
}

variable "privateA-Ip" {
  description = "10.0.1.0/24"
  default = "10.0.1.0/24"
  type        = string
}

variable "publicA-Ip" {
  description = "10.0.2.0/24"
  default = "10.0.2.0/24"
  type        = string
}

