# Название образа для получения его id
data "yandex_compute_image" "image" {
  family = var.instance_family_image
}
# Создание VM
resource "yandex_compute_instance" "vm" {
  name        = var.instance_family_image
  platform_id = "standard-v3"
  zone        = var.zone

  resources {
    core_fraction = 20
    cores         = 2
    memory        = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.id
    }
  }

  network_interface {
    subnet_id = var.vpc_subnet_id
    nat       = true
  }

  metadata = {
    user-data = "#cloud-config\nusers:\n  - name: roman\n    groups: sudo\n    shell: /bin/bash\n    sudo: ['ALL=(ALL) NOPASSWD:ALL']\n    ssh-authorized-keys:\n      - ${file("C:/Users/User/.ssh/yacl.pub")}"
  }
}