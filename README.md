# Projeto RechargEarth

## Como rodar o projeto:

### Clone o projeto:

```bash
  gh repo clone viniciuscurti/Rechargearth
```

### Verifique se o ruby esta instalado:

```bash
  ruby -v
```

**Caso nao esteja instalado**

### Instale o ruby:
#### No Ubuntu:
```bash
    sudo apt-get update
    sudo apt-get install rbenv
```
#### No MacOs:

```bash
  brew update
  brew install rbenv
```
### Inicializando o rbenv

```bash
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bashrc
  source ~/.bashrc
```
#### Instale o ruby-build como um plugin do rbenv:

**Isso vai adicionar o comando rbenv install com o qual você pode instalar novas versões do Ruby:**

```bash
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### Instale o ruby:

**Agora você pode instalar qualquer versão do Ruby que você precise:**

```bash
  rbenv install 3.0.2
```

#### Defina a versão do Ruby para o seu projeto:

**Você pode definir a versão do Ruby que você acabou de instalar como a versão padrão globalmente ou apenas para o seu projeto:**

```bash
  # Para definir a versão do Ruby globalmente
  rbenv global 3.0.2

  # Ou para definir a versão do Ruby apenas para o seu projeto
  rbenv local 3.0.2
```

### Verifique a versão do Ruby:

**Agora, se você verificar a versão do Ruby, deve ver a versão que você acabou de instalar:**
```
  cd RechargeEarth
  ruby -v
```

## Configuração do Banco de Dados

1. **Instale as gems:**

  Antes de configurar o banco de dados, você precisa instalar todas as gems necessárias para o projeto. Você pode fazer isso com o seguinte comando:

```bash
  bundle install
```
2. **Crie o banco de dados**

  No terminal, navegue até a pasta do seu projeto e execute o seguinte comando:

```bash
  rails db:create
```

  Execute as migracoes:

```bash
  rails db:migrate
```

3. **Popule o Banco de dados:**

```bash
  rails db:seed
```

## Rotas e Modelos Principais

## Endpoints de Usuários

### GET /users/:id

**Descrição:** Obtém informações de um usuário específico.

**Resposta Esperada:**

```json
{
  "_id": "ID do usuário",
  "name": "Nome do usuário",
  "email": "E-mail do usuário",
  "password": "Senha do usuário",
  "supplier": "Fornecedor do usuário",
  "address": "Endereço do usuário",
  "cpf": "CPF do usuário",
  "cnpj": "CNPJ do usuário",
  "cellphone": "Celular do usuário"
}
```

### PUT /users/:id
**Descrição:** Atualiza informações de um usuário específico.

Payload Esperado:
```json
{
  "name": "Nome do usuário",
  "email": "E-mail do usuário",
  "password": "Senha do usuário",
  "supplier": "Fornecedor do usuário",
  "address": "Endereço do usuário",
  "cpf": "CPF do usuário",
  "cnpj": "CNPJ do usuário",
  "cellphone": "Celular do usuário"
}
```

**Resposta Esperada:**

```json
{
  "_id": "ID do usuário",
  "name": "Nome do usuário",
  "email": "E-mail do usuário",
  "password": "Senha do usuário",
  "supplier": "Fornecedor do usuário",
  "address": "Endereço do usuário",
  "cpf": "CPF do usuário",
  "cnpj": "CNPJ do usuário",
  "cellphone": "Celular do usuário"
}
```
### DELETE /users/:id
**Descrição:** Exclui um usuário específico.

**Resposta Esperada:** Status 204 No Content


## Endpoints de Baterias

### GET /batteries/:id

**Descrição:** Obtém informações de uma bateria específica.

**Resposta Esperada:**

```json
{
  "_id": "ID da bateria",
  "category": "Categoria da bateria",
  "year_user": "Ano do usuário da bateria",
  "active": "Status ativo da bateria",
  "user_id": "ID do usuário da bateria"
}
```

### POST /batteries
**Descrição:** Cria uma nova bateria.

**Payload Esperado:**
```json
{
  "category": "Categoria da bateria",
  "year_user": "Ano do usuário da bateria",
  "active": "Status ativo da bateria",
  "user_id": "ID do usuário da bateria"
}
```

**Resposta Esperada:**
```json
{
  "_id": "ID da bateria",
  "category": "Categoria da bateria",
  "year_user": "Ano do usuário da bateria",
  "active": "Status ativo da bateria",
  "user_id": "ID do usuário da bateria"
}
```

### DELETE /batteries/:id
**Descrição:** Exclui uma bateria específica.

**Resposta Esperada:** Status 204 No Content


## Endpoints de Entregas

### GET /deliveries/:id

**Descrição:** Obtém informações de uma entrega específica.

**Resposta Esperada:**

```json
{
  "_id": "ID da entrega",
  "delivery_date": "Data da entrega",
  "address": "Endereço da entrega",
  "collected_date": "Data de coleta",
  "person_collected": "Pessoa que coletou",
  "person_delivery": "Pessoa que entregou",
  "user_id": "ID do usuário",
  "battery_id": "ID da bateria"
}
```

### PUT /deliveries/:id
**Descrição:** Atualiza informações de uma entrega específica.

**Payload Esperado:**

```json
{
  "delivery_date": "Data da entrega",
  "address": "Endereço da entrega",
  "collected_date": "Data de coleta",
  "person_collected": "Pessoa que coletou",
  "person_delivery": "Pessoa que entregou",
  "user_id": "ID do usuário",
  "battery_id": "ID da bateria"
}
```

**Resposta Esperada:**

```json
{
  "_id": "ID da entrega",
  "delivery_date": "Data da entrega",
  "address": "Endereço da entrega",
  "collected_date": "Data de coleta",
  "person_collected": "Pessoa que coletou",
  "person_delivery": "Pessoa que entregou",
  "user_id": "ID do usuário",
  "battery_id": "ID da bateria"
}
```

### DELETE /deliveries/:id
**Descrição:** Exclui uma entrega específica.

**Resposta Esperada:** 'Deleted delivery'
