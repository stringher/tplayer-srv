const  {Tema, Midia, MidiaTema, Usuario} = require("./app/models")


// sequelize.Tema.create({
//     nome: 'Natal',
//     descricao: 'Temas Natalinos'
// });
//
// sequelize.Midia.create({
//     nome: 'Natal',
//     descricao: 'Temas Natalinos',
//     media_type: 'audio/mpeg'
// });
// async function faz() {
//     const tema = await Tema.findByPk(2);
//     const midia = await Midia.findByPk(1);
//     const midiaTema = await MidiaTema.create({
//         id_midia: midia.id_midia, id_tema: tema.id_tema
//     });
//     console.log(midiaTema.toJSON());
//
// };
// faz()

Usuario.create({
    nome: 'luiz',
    email: 'luiz.alberoni@taking.com.br',
    senha: '123456',
    nascimento: new Date(),
    sexo: 0,
    idioma: 'ptBR'
})
