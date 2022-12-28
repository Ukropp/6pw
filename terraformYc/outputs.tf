# Внутренний ip виртуалки vm1
output "internal_ip_address_vm1" {
  value = module.vm1.internal_ip_address_vm
}
# Внешний ip виртуалки vm1
output "external_ip_address_vm1" {
  value = module.vm1.external_ip_address_vm
}

# Внутренний ip виртуалки vm2
output "internal_ip_address_vm2" {
  value = module.vm2.internal_ip_address_vm
}
# Внешний ip виртуалки vm2
output "external_ip_address_vm2" {
  value = module.vm2.external_ip_address_vm
}

# Внутренний ip виртуалки vm3
output "internal_ip_address_vm3" {
  value = module.vm3.internal_ip_address_vm
}
# Внешний ip виртуалки vm3
output "external_ip_address_vm3" {
  value = module.vm3.external_ip_address_vm
}