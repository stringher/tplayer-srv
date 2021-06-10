const  {Tema, Midia, MidiaTema, Usuario, Favorito, Playlist} = require("./app/models")


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

// Usuario.create({
//     nome: 'luiz',
//     email: 'luiz.alberoni@taking.com.br',
//     senha: '123456',
//     nascimento: new Date(),
//     sexo: 0,
//     idioma: 'ptBR'
// })

// async function a() {
//     const midia = await Midia.findByPk(1);
//     const usuario = await Usuario.findByPk(1);
//
//     Favorito.create({id_usuario: 1, id_midia: 1})
// }
// a()

//
// async function b() {
//     const usuario = await Usuario.findByPk(1);
//
//     Playlist.create(
//         {
//             usuario,
//             nome: 'Rock anos 70',
//             descricao: 'OS grandes clássicos'
//         },{
//             include: [
//                 {association: Playlist.Usuario}
//             ]
//         }
//     )
//
// }
// b();

