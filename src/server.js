const express = require('express');
const autenticacao = require('./security/autenticacao') //middleware para autenticação
const swaggerJsDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');
const app = express();
const cors = require('cors');

app.use(express.urlencoded({
    extended: true
}));

app.use(cors());
app.use(express.json());

// Configurações Swagger

const swaggerDefinition = {
    openapi: '3.0.0',
    info: {
      title: 'API BackEnd - APP ROTA 66',
      version: '1.0.0',
      description:
        'Documentação (back-end) da aplicação ROTA 66 (endpoints da API)',
      license: {
        name: 'Licensed Under MIT',
        url: 'https://spdx.org/licenses/MIT.html',
      },
      contact: {
        name: 'JSONPlaceholder',
        url: 'https://jsonplaceholder.typicode.com',
      },
    },
    servers: [
      {
        url: 'http://localhost:3333',
        description: 'Development server',
      },
    ],
  };

  const options = {
    swaggerDefinition,
    // Path das Endpoints SwaggerUi
    apis: [`${__dirname}/routes/swaggerEndpoints.js`],
  };

const swaggerSpec = swaggerJsDoc(options)

//

const tituloDestaqueRoutes = require('./routes/tituloDestaque')
const midiaTemasRoutes = require('./routes/midiaTema')
const userRoutes = require('./routes/user')
const temasRoutes = require('./routes/tema')
const playlistRoutes = require('./routes/playlist')
const favoritoRoutes = require('./routes/favorito')
const midiaRoutes = require ('./routes/midia')
const playlistItensRoutes = require ('./routes/playlistItens')
const livroCapituloRoutes = require('./routes/livroCapitulo')
const adminRoutes = require('./routes/admin')

app.use('/titulo-destaque', autenticacao, tituloDestaqueRoutes)
app.use('/midia-temas', midiaTemasRoutes)
app.use('/temas', temasRoutes )
app.use('/playlist', playlistRoutes)
app.use('/favorito', favoritoRoutes)
app.use('/midia', midiaRoutes)
app.use('/playlistitens', playlistItensRoutes)
app.use('/livros', livroCapituloRoutes)
app.use('/administrador', adminRoutes)
app.use('/usuario', userRoutes)
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec)) // Endpoint do SwaggerUi

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(3333, () => {
    console.log("It's running!")
});