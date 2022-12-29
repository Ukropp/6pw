# Модули серверов
# vm1
module "vm1" {
  source                = "./modules/instance"
  instance_family_image = "ubuntu-2004-lts"
  vm_name               = "vm1"
  vpc_subnet_id         = yandex_vpc_subnet.subnet.id
}
# vm2
module "vm2" {
  source                = "./modules/instance"
  instance_family_image = "ubuntu-2004-lts"
  vm_name               = "vm2"
  vpc_subnet_id         = yandex_vpc_subnet.subnet.id
}
# vm3
module "vm3" {
  source                = "./modules/instance"
  instance_family_image = "centos-7"
  vm_name               = "vm3"
  vpc_subnet_id         = yandex_vpc_subnet.subnet.id
}

# Создание сети
resource "yandex_vpc_network" "network" {
  name = "tf-web-network"
}
# Подсеть
resource "yandex_vpc_subnet" "subnet" {
  name           = "tf-subnet-1"
  v4_cidr_blocks = ["192.168.10.0/24"]
  zone           = var.zone
  network_id     = yandex_vpc_network.network.id
}

# Генерируем hosts
data "template_file" "ansible_inventory" {
  template = file("${path.module}/templates/hosts.tpl") # Путь до шаблона на локальном компьютере
  vars = {
    vm2 = module.vm2.internal_ip_address_vm
    vm3 = module.vm2.internal_ip_address_vm
  }
}

# Генерация inventory.ini
resource "null_resource" "update_inventory" {
  triggers = {
    template = data.template_file.ansible_inventory.rendered
  }
  provisioner "local-exec" {
    command = "echo '${data.template_file.ansible_inventory.rendered}' > ~/inventory/b6pw.ini"
  }
}
