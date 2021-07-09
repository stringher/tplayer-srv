const {Usuario} = require('../models')
module.exports = {
    index: async (req, res) => {
        res.json(await Usuario.findAll())
    },
    get: async(req, res) => {
        const usuario = await Usuario.findByPk(req.params.id)
        if (usuario != null) {
            res.json(usuario)
        } else {
            res.sendStatus(204)
        }
    },
    create: async(req, res) => {
        res.json( await Usuario.create(req.body) )
    },
    update: async(req, res) => {
        let usuario = await Usuario.findByPk(req.params.id)
        if (usuario == null) {
            res.sendStatus(412)
        } else {
            Object.assign(usuario, req.body)
            await usuario.save()
            res.json(usuario);
        }
    },
    delete: async(req, res) => {
        const usuario = await Usuario.findByPk( req.params.id )
        if (usuario === null) {
            res.sendStatus(412)
        } else {
            await usuario.destroy();
            res.sendStatus(204);
        }
    }
}