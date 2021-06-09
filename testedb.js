const  sequelize = require("./app/models")

console.log(sequelize);

sequelize.Temas.create({
    name: 'Natal',
    descricao: 'Temas Natalinos'
});
