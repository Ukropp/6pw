# [Проектная работа 6](https://lms.skillfactory.ru/courses/course-v1:SkillFactory+DEVOPS-3.0+2021/courseware/1818f1e4a2fa4e2aace76827bb5ed460/16464aa2386641fb9f326ae307b580c4/1?activate_block_id=block-v1%3ASkillFactory%2BDEVOPS-3.0%2B2021%2Btype%40vertical%2Bblock%40c9071b004cc3489482c5f5a1eaac931b)

___

- [ ] Создать 3 ВМ в Я.Облаке (минимальная конфигурация: 2vCPU, 2GB RAM, 20 GB HDD): vm1 и vm2 (Ubuntu 20.04), vm3 (Centos 8).
- [ ] Установить на vm1 Ansible.
- [ ] Создать на vm1 пользователя для Ansible.
- [ ] Настроить авторизацию по ключу для этого пользователя с vm1 на vm2 и vm3.
- [ ] Добавить в inventory информацию о созданных машинах. vm2 и vm3 должны быть в группе app, vm1 — в группе database и web.
- [ ] Написать плейбук, реализующий следующее:
    - [ ] на машинах группы app выполняется установка и запуск Docker;
    - [ ] на машинах группы database выполняется установка и запуск postgresql-server (версия и data-директория должны быть переменными, задающимися в inventory).
- [ ] Протестировать написанный плейбук.
- [ ] Выложить плейбук и inventory в GitHub. Создайте отдельный репозиторий Ansible.
- [ ] Прислать ментору ссылку на репозиторий с плейбуком.

