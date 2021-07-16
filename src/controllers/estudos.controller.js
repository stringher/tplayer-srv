const {Estudo} = require("../models")
const {gravaAudio} = require("../utils/estudos.utils")

module.exports = {
    index: async ({params:{id_categoria}}, res) => {
        res.json(await Estudo.findAll({
            where: {
                ativo: true,
                id_categoria
            }
        }))
    },

    create: async(req, res) => {
        const estudo = await Estudo.create({...req.body, ativo: true, id_categoria: req.params.id_categoria})
        await gravaAudio(req.file.path, estudo.id_estudo)
        res.json(estudo)
    },

    update: async (req, res) => {
        const estudo = await Estudo.findByPk(req.params.id_estudo)
        if (estudo == null) {
            res.sendStatus(412)
        } else {
            Object.assign(estudo, req.body)
            res.json(await estudo.save())
        }
    },

    get: async (req, res) => {
        const estudo = await Estudo.findByPk(req.params.id_estudo)
        if (estudo == null) {
            res.sendStatus(204)
        } else {
            res.json(estudo)
        }
    },

    getAudio: async (req, res) => {
        const estudo = await Estudo.findByPk(req.params.id_estudo)
        if (estudo == null) {
            res.sendStatus(204)
        } else {
            res.json(estudo)
        }
    },

    delete: async(req, res) => {
        const estudo = await Estudo.findByPk(req.params.id_estudo)
        if (estudo == null) {
            res.sendStatus(412)
        } else {
            estudo.ativo = false
            res.json(await estudo.save())
        }
    }
}