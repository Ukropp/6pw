# [Проектная работа 6](https://lms.skillfactory.ru/courses/course-v1:SkillFactory+DEVOPS-3.0+2021/courseware/1818f1e4a2fa4e2aace76827bb5ed460/16464aa2386641fb9f326ae307b580c4/1?activate_block_id=block-v1%3ASkillFactory%2BDEVOPS-3.0%2B2021%2Btype%40vertical%2Bblock%40c9071b004cc3489482c5f5a1eaac931b)

### TODO list
___
- [x] Создать 3 ВМ в Я.Облаке (минимальная конфигурация: 2vCPU, 2GB RAM, 20 GB HDD): vm1 и vm2 (Ubuntu 20.04), vm3 (Centos 8).
- [ ] Установить на vm1 Ansible.
- [ ] Создать на vm1 пользователя для Ansible.
- [ ] Настроить авторизацию по ключу для этого пользователя с vm1 на vm2 и vm3.
- [ ] Добавить в inventory информацию о созданных машинах. vm2 и vm3 должны быть в группе app, vm1 — в группе database и web.
- [ ] Написать плейбук, реализующий следующее:
    - [x] на машинах группы app выполняется установка и запуск Docker;
    - [ ] на машинах группы database выполняется установка и запуск postgresql-server (версия и data-директория должны быть переменными, задающимися в inventory).
- [ ] Протестировать написанный плейбук.
- [x] Выложить плейбук и inventory в GitHub. Создайте отдельный репозиторий Ansible.
- [ ] Прислать ментору ссылку на репозиторий с плейбуком.
- [ ] Проверено, оценка n/n

___

#### links:
* ansible installation: <https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html>
* ansible inventory: <https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html>
* ansible role: <https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_reuse_roles.html>
* ansible playbooks: <https://docs.ansible.com/ansible/latest/playbook_guide/playbooks.html>
* terraform copy file: <https://developer.hashicorp.com/terraform/language/resources/provisioners/file>
* terraform file provisoner: <https://developer.hashicorp.com/terraform/language/resources/provisioners/file>
* terraform template file: <https://registry.tfpla.net/providers/hashicorp/template/latest/docs/data-sources/file>
* terraform templates: <https://www.cloudbolt.io/terraform-best-practices/terraform-template/>
* ansible docker install ubuntu: <https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-docker-on-ubuntu-20-04>
* ansible docker install centos: <https://www.ansiblepilot.com/articles/install-docker-in-redhat-like-systems-ansible-module-rpm_key-yum_repository-and-yum/>
* ansible apt module: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html>
* ansible apt_key module: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_key_module.html>
* ansible apt_repository module: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_repository_module.html>
* ansible pip module: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/pip_module.html>
* ansible yam module: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/yum_module.html>
* ansible package moduel: <https://docs.ansible.com/ansible/latest/collections/ansible/builtin/package_module.html>
* ansible confitionals: <https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_conditionals.html>
* ansible postgresql role: <https://github.com/geerlingguy/ansible-role-postgresql>
* ansible install  postgresql:
    * <https://stribny.name/blog/ansible-postgresql/>
    * <https://www.ansiblepilot.com/articles/install-postgresql-in-debian-like-systems-ansible-modules-apt-stat-shell-service/>
