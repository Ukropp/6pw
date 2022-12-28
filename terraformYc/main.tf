# Модули серверов
# vm1
module "vm1" {
  source                = "./modules/instance"
  instance_family_image = "lamp"
  vpc_subnet_id         = yandex_vpc_subnet.subnet.id
}
# vm2
module "vm2" {
  source                = "./modules/instance"
  instance_family_image = "lemp"
  vpc_subnet_id         = yandex_vpc_subnet.subnet.id
}
# vm3
module "vm3" {
  source                = "./modules/instance"
  instance_family_image = "lemp"
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


# Установка Ansible на VM1

# Генерируем hosts
data "template_file" "ansible_inventory" {
  template = file("${path.module}/templates/hosts.tpl") # Путь до шаблона на локальном компьютере
  vars = {
    vm2 = module.vm2.internal_ip_address_vm
    vm3 = module.vm2.internal_ip_address_vm
  }
}

# Записываем сгенерированный шаблон в файл
resource "null_resource" "update_inventory" {
  triggers = { // Код будет выполнен, когда inventory будет сгенерирован
    template = data.template_file.ansible_inventory.rendered
  }
  provisioner "local-exec" { // выполняем команду на локальной машине
    command = "echo '${data.template_file.ansible_inventory.rendered}' > inventory.ini"
  }
}