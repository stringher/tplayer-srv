## Projeto-Capacitacao-Backend

Certifique-se de ter instalado na sua máquina o [Node.js](https://nodejs.org/en/).

Para rodar o projeto, rode os seguintes comandos no seu terminal:
```bash
git clone https://github.com/RafaelGSantana/Projeto-Capacitacao-Backend.git # Para clonar o repositório 

cd Projeto-Capacitacao-Backend # Para entrar na pasta do projeto

npm install # Para instalar as dependências
```
Configure o banco de dados. O arquivo de configuração se encontra em src/config/database.json. Em seguida, roda as mmigrações:
```bash
npx sequelize db:migrate

npm run dev # Para executar a aplicação
```

Para rodar em ambiente de produção, deverão ser configuradas as sequintes variáveis de ambiente:

DB_USERNAME | Usuario de acesso ao banco de dados
DB_PASSWORD | Senha de acesso 
DB_DATABASE | Banco de dados
DB_HOST | IP ou host do servidor
DB_DIALECT | Dialeto (postgres/mariadb/mysql/sqlite/mssql)

Obs: Para o projeto, escolhemos o postgres. Ao alterar, lembrar de alterar as dependencias


Configuração de segurança:
--------------------------

No arquivo src/config/config.json, poderá configurar a chave usada na geração do jwt. Aconselhamos a alterar 
as chaves, especialmente no ambiente de produção, ou, ainda melhor: usar a variável de ambiente **JWT_SECRET**



Acrescentando novas rotas:
--------------------------

Exporte no módulo um método que retorna as rotas (express.Router) que serão anexadas à raiz do express.
