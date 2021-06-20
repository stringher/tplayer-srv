const express = require('express');

const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

const tituloDestaqueRoutes = require('./routes/tituloDestaque');

app.use('/titulo-destaque', tituloDestaqueRoutes);

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(3333, () => {
    console.log("It's running!")
});