<h2>Rotas e Modelos Principais</h2>

<h3>/api/users</h3>
<p><strong>Método:</strong> POST</p>
<p><strong>Modelo:</strong> User</p>
<p><strong>Descrição:</strong> Rota para criação de usuário</p>
<p><strong>Payload Esperado:</strong></p>
<pre>
{
  "name": "Nome do usuário",
  "email": "E-mail do usuário",
  "password": "Senha do usuário"
}
</pre>
<p><strong>Resposta Esperada:</strong></p>
<pre>
{
  "user": {
    "_id": "ID do usuário",
    "name": "Nome do usuário",
    "email": "E-mail do usuário",
    "points": "Pontos do usuário",
    "createdAt": "Data de criação do usuário",
    "updatedAt": "Data da última atualização do usuário"
  },
  "token": "Token JWT para o usuário"
}
</pre>

<h3>/api/users/me</h3>
<p><strong>Método:</strong> GET</p>
<p><strong>Modelo:</strong> User</p>
<p><strong>Descrição:</strong> Rota para obter informações do usuário logado</p>
<p><strong>Payload Esperado:</strong> Nenhum</p>
<p><strong>Resposta Esperada:</strong></p>
<pre>
{
  "_id": "ID do usuário",
  "name": "Nome do usuário",
  "email": "E-mail do usuário",
  "points": "Pontos do usuário",
  "createdAt": "Data de criação do usuário",
  "updatedAt": "Data da última atualização do usuário"
}
</pre>

<h3>/api/products</h3>
<p><strong>Método:</strong> POST</p>
<p><strong>Modelo:</strong> Product</p>
<p><strong>Descrição:</strong> Rota para criar um produto</p>
<p><strong>Payload Esperado:</strong></p>
<pre>
{
  "name": "Nome do produto",
  "description": "Descrição do produto",
  "price": "Preço do produto",
  "stock": "Estoque do produto",
  "image": "Imagem do produto"
}
</pre>
<p><strong>Resposta Esperada:</strong></p>
<pre>
{
  "_id": "ID do produto",
  "name": "Nome do produto",
  "description": "Descrição do produto",
  "price": "Preço do produto",
  "stock": "Estoque do produto",
  "image": "Imagem do produto",
  "createdAt": "Data de criação do produto",
  "updatedAt": "Data da última atualização do produto"
}
</pre>

<h3>/api/products/:id</h3>
<p><strong>Método:</strong> GET</p>
<p><strong>Modelo:</strong> Product</p>
<p><strong>Descrição:</strong> Rota para obter informações de um produto específico</p>
<p><strong>Payload Esperado:</strong> Nenhum</p>
<p><strong>Resposta Esperada:</strong></p>
<pre>
{
  "_id": "ID do produto",
  "name": "Nome do produto",
  "description": "Descrição do produto",
  "price": "Preço do produto",
  "stock": "Estoque do produto",
  "image": "
