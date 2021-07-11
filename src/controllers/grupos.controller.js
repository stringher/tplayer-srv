const {Grupo} = require("../models")

module.exports = {
    index: async (req, res) => {
        res.json(await Grupo.findAll({
            where: {
                ativo: true
            }
        }))
    },

    create: async(req, res) => {
        res.json( await Grupo.create({...req.body, ativo: true}) )
    },

    update: async (req, res) => {
        const grupo = await Grupo.findByPk(req.params.id_grupo)
        if (grupo == null) {
            res.sendStatus(412)
        } else {
            Object.assign(grupo, req.body)
            res.json(await grupo.save())
        }
    },

    get: async (req, res) => {
        const grupo = await Grupo.findByPk(req.params.id_grupo)
        if (grupo == null) {
            res.sendStatus(204)
        } else {
            res.json(grupo)
        }
    },

    delete: async(req, res) => {
        const grupo = await Grupo.findByPk(req.params.id_grupo)
        if (grupo == null) {
            res.sendStatus(412)
        } else {
            grupo.ativo = false
            res.json(await grupo.save())
        }
    }
}