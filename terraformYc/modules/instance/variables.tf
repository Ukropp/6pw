variable "instance_family_image" {
  description = "Instance image"
  type        = string
  default     = "ubuntu-2004"
}

variable "vm_name" {
  description = "Name of virtual machine"
  type        = string
  default     = "vm"
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}

variable "zone" {
  description = "Default zone for resurces"
  type        = string
  default     = "ru-central1-a"
}