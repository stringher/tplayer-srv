const express = require('express');
const autenticacao = require('./security/autenticacao')
const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

const tituloDestaqueRoutes = require('./routes/tituloDestaque');
const midiaTemasRoutes = require('./routes/midiaTema');
const userRoutes = require('./routes/user')
const temasRoutes = require('./routes/tema')
const playlistRoutes = require('./routes/playlist')

app.use('/titulo-destaque', autenticacao, tituloDestaqueRoutes);
app.use('/midia-temas', autenticacao, midiaTemasRoutes);
app.use('/temas', autenticacao, temasRoutes )
app.use('/playlist', playlistRoutes)
app.use('/usuario', userRoutes)

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(3333, () => {
    console.log("It's running!")
});