const express = require('express');

const app = express();

app.use(express.urlencoded({
    extended: true
}));

app.use(express.json());

// Adiciona todas as rotas através do script index
require('./routes/index')(app);

app.get('/', (req, res) => {
    return res.json({Hello: "World!"});
});

let port = 3000
app.listen(port, () => {
    console.log(`It's running on port ${port}!`)
});
