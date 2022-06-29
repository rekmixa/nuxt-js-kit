# nuxt-js-kit

> Nuxt JS Kit

## Установка

```bash
make cp-env
```

##### Далее меняем .env

```bash
make install
```

Смотрим логи контейнера nginx:

```bash
make logs
```

Смотрим логи сборки:

```bash
make logs-pm2
```

## Запуск + Логи сборки

```bash
make
```

### Сборка для продакшна

Меняем следующие переменные в .env  

```
COMPOSE_FILEdocker-compose.prod.yml
PM2_COMMAND_ARGS=start
```
