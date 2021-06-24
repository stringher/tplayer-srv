const express = require('express');

const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

const tituloDestaqueRoutes = require('./routes/tituloDestaque');
const listagemTemasRoutes = require('./routes/listagemTemas');

app.use('/titulo-destaque', tituloDestaqueRoutes);
app.use('/listagem-temas', listagemTemasRoutes);

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(3333, () => {
    console.log("It's running!")
});