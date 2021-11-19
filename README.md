# Laramink Workstation
A tools to launch laramink project with docker and jwilder on your development stack.


## Requirements
- Docker
- Docker Compose
- [Kayak](https://github.com/MINKAgency/kayak)



## Installation

1. Clone this repo as submodule on your project on the folder `.docker` :
```bash
git submodule add https://github.com/MINKAgency/laramink-workstation.git .docker
```

2. Copy the `docker-compose.yml` at the root project :

```bash
cp .docker/docker-compose.yml .
```

3. Setup configuration in your `.env` :

```dotenv
APP_BASE_DOMAIN=your-base-domain-here
PHP_VERSION=8.0

DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=your-database-name
DB_USERNAME=your-database-username
DB_PASSWORD=your-database-password

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS="${APP_BASE_DOMAIN}@mailhog.test"
MAIL_FROM_NAME="${APP_NAME}"

```

* APP_BASE_DOMAIN accept only letters, numbers and hyphen
* DB_HOST must be set to `db`
* DB_PASSWORD is required and not empty


4. Run
```bash
docker compose up
```

Enjoy, your application is available ! 

App : `https://your-base-domain-here.mink.test`

Mailhog : `https://mailhog-your-base-domain-here.mink.test`

PhpMyAdmin : `https://pma-your-base-domain-here.mink.test`

