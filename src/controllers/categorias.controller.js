const {Categoria} = require("../models")

module.exports = {
    index: async ({params:{id_grupo}}, res) => {
        res.json(await Categoria.findAll({
            where: {
                ativo: true,
                id_grupo
            }
        }))
    },

    create: async(req, res) => {
        res.json( await Categoria.create({...req.body, ativo: true, id_grupo: req.params.id_grupo}) )
    },

    update: async (req, res) => {
        const categoria = await Categoria.findByPk(req.params.id_categoria)
        if (categoria == null) {
            res.sendStatus(412)
        } else {
            Object.assign(categoria, req.body)
            res.json(await categoria.save())
        }
    },

    get: async (req, res) => {
        const categoria = await Categoria.findByPk(req.params.id_categoria)
        if (categoria == null) {
            res.sendStatus(204)
        } else {
            res.json(categoria)
        }
    },

    delete: async(req, res) => {
        const categoria = await Categoria.findByPk(req.params.id_categoria)
        if (categoria == null) {
            res.sendStatus(412)
        } else {
            categoria.ativo = false
            res.json(await categoria.save())
        }
    }
}