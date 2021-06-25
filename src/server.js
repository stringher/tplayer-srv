const express = require('express');

const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

const tituloDestaqueRoutes = require('./routes/tituloDestaque');
const listagemTemasRoutes = require('./routes/listagemTemas');
const usuariosRoutes = require('./routes/usuario.routes')()

app.use('/titulo-destaque', tituloDestaqueRoutes);
app.use('/listagem-temas', listagemTemasRoutes);
app.use('/', usuariosRoutes);

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

let port = 3000
app.listen(port, () => {
    console.log(`It's running on port ${port}!`)
});
