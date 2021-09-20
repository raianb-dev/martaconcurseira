# Instruções para configuração do projeto em Desenvolvimento

## Tecnologias usadas

- Python 3.9
- Django 3.2
- Bootstrap Twitter 4
- PostgreSQL 12 ou superior

# Preparação do ambiente Linux

## Instale as seguintes dependências

Obs: as instruções serão repassadas considerando o Ubuntu ou outro sistema operacional baseado no Debian.

`sudo apt update`
`sudo apt upgrade -y`
`sudo apt install build-essential -y`
`sudo apt install python3-dev python3-venv python3-pip libssl-dev libffi-dev libpq-dev libjpeg8-dev zlib1g-dev -y`

Caso não tenha instalado ainda, instale o PostgreSQL

`sudo apt install postgresql postgresql-contrib`

Use os comandos abaixo para conectar no PostgreSQL e criar o banco o de dados.

`sudo su postgres`
`psql`
`create role martaconcurseirauser with login createdb password 'password123';`
`create database martaconcurseiradb owner martauser;`

Para sair do interpretador de comandos do PostgreSQL, use o comando abaixo.

`\q`
ou
`quit`

## Escolha um diretório de trabalho

### Crie um ambiente virtual

`python3 -m venv vmarta`
`source vmarta/bin/activate`

### Clone o repositório do projeto

`git clone https://gitlab.com/blusoft/martaconcurseira.git`

Informe seus dados de login

### Instale as dependências do projeto

A partir do diretório principal de trabalho do projeto (martaconcurseira), execute o comando a seguir.

`pip install -r requirements.txt`

PS: Garanta que o ambiente virtual está ativado daqui pra frente, todos os comandos devem ser feitos dentro do ambiente virtual do projeto. Para verificar, basta conferir se antes do prompt de comando o nome do ambiente (vmarta) está entre parênteses.

### Configurações de banco de dados

Copie e cole o conteúdo abaixo dentro de um arquivo *.env* (crie o arquivo, o _ponto_ também deve ser informado no nome do arquivo) na raiz do projeto, ou seja, dentro do diretório *martaconcurseira*

```
DEUG=True
SECRET_KEY=52(*645gt&d8-b8_wry5vw0ev%5^^9v_&mxudr%)gx_b8vysge
ALLOWED_HOSTS=*
DB_ENGINE=django.db.backends.postgresql
DB_NAME=martaconcurseiradb
DB_USER=martaconcurseirauser
DB_PASSWORD=password123
DB_HOST=localhost
DB_PORT=5432
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_HOST_USER=contatomartaconcurseira@gmail.com
EMAIL_HOST_PASSWORD=marta3030
```

### Para rodar o servidor de desenvolvimento

A partir do diretório principal do projeto (martaconcurseira) e no terminal.

`python manage.py runserver`
