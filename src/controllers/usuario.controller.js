const {Usuario} = require("../models")
const {toDate} = require("../utils/string.utils")
const {createHash, createJwt} = require("../utils/security.utils")

module.exports = {
    login(req, res) {
        res.send(200)
    },

    async create(req, res) {
        const usuario = Usuario.build(req.body);
        usuario.nascimento = toDate(req.body.nascimento)
        usuario.senha = createHash(req.body.senha)
        const usr = await usuario.save();
        res.set("Location", `/usuario/${usr.id_usuario}`)
        res.status(200).json({jwt: createJwt(usr) });
    }
}
