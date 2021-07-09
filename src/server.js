const initRoutes = require('./routes')
const express = require('express');

const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

// Inicializará todas as rotas, passando o express como parametro
initRoutes(app);


app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

app.listen(3333, () => {
    console.log("It's running!")
});