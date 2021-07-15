const {Destaque} = require("../models")

module.exports = {
    index: async (req, res) => {
        res.json(await Destaque.findAll())
    },

    create: async(req, res) => {
        res.json( await Destaque.create({...req.body, ativo: true}) )
    },

    update: async (req, res) => {
        const destaque = await Destaque.findByPk(req.params.id_destaque)
        if (destaque == null) {
            res.sendStatus(412)
        } else {
            Object.assign(destaque, req.body)
            res.json(await destaque.save())
        }
    },

    get: async (req, res) => {
        const destaque = await Destaque.findByPk(req.params.id_destaque)
        if (destaque == null) {
            res.sendStatus(204)
        } else {
            res.json(destaque)
        }
    },

    delete: async(req, res) => {
        const destaque = await Destaque.findByPk(req.params.id_destaque)
        if (destaque == null) {
            res.sendStatus(412)
        } else {
            await destaque.destroy()
            res.sendStatus(204)
        }
    }
}