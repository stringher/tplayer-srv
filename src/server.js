const express = require('express');
const autenticacao = require('./security/autenticacao')
const app = express();
const cors = require('cors');

app.use(express.urlencoded({
    extended: true
}));

app.use(cors());
app.use(express.json());

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

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(8080, () => {
    console.log("It's running!")
});
