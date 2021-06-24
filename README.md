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
