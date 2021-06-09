const  sequelize = require("./app/models")


sequelize.Tema.create({
    nome: 'Natal',
    descricao: 'Temas Natalinos'
});

sequelize.Midia.create({
    nome: 'Natal',
    descricao: 'Temas Natalinos',
    media_type: 'audio/mpeg'
});
