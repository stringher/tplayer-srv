## Projeto-Capacitacao-Backend

Certifique-se de ter instalado na sua máquina o [Node.js](https://nodejs.org/en/).

Para rodar o projeto, rode os seguintes comandos no seu terminal:
```bash
git clone https://github.com/taking-consultoria/tplayer-srv.git # Para clonar o repositório 

cd Projeto-Capacitacao-Backend # Para entrar na pasta do projeto

npm install # Para instalar as dependências
```
Configure o banco de dados. O arquivo de configuração se encontra em src/config/database.json. Em seguida, roda as migrações:
```bash
npx sequelize db:migrate

npm run dev # Para executar a aplicação
```

## Banco de dados
**Registros
**Para Inserir os Registros da Tabela Livros, Utilize o arquivo Inserts-livros.sql em tplayer-srv/db e então em seu Client de Mysql, rode o scrip após a criação das Tabelas.**

Para auxiliar no desenvolvimento, foi criado um docker-compose file, que erguerã na porta padrão do Postgres (5432), a
última versão do postgres, além de uma versão do pgAdmin4 para a visualização/manipulação dos dados. Para acessá-lo, utilize
a porta 12000.

Usuário do pgAdmin: admin@taking.com.br
Senha: 123456

Usuãrio do postgres: postgres
Senha do postgres: postgres

Para alterar essas configurações, altere o arquivo `docker-compose.yml` (para alterar o banco) e o arquivo 
`src/config/database.json` para que o sistema acompanhe as alterações