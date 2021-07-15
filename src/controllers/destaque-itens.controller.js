const {Destaque, Estudo} = require("../models")

module.exports = {
    index: async ({params:{id_destaque}}, res) => {
        const destaque = await Destaque.findByPk(id_destaque, {include: 'estudos'});
        res.json(destaque.estudos || [])
    },

    create: async({params:{id_destaque}, body: {id_estudo}}, res) => {
        const destaque = await Destaque.findByPk(id_destaque, {include: 'estudos'});
        const estudo = await Estudo.findByPk(id_estudo)
        if(destaque && estudo) {
            await destaque.addEstudo(estudo)
            res.sendStatus(201)
        } else {
            res.sendStatus(412)
        }
    },


    delete: async({params:{id_destaque, id_estudo}}, res) => {
        const destaque = await Destaque.findByPk(id_destaque, {include: 'estudos'});

        const estudo = destaque.estudos.filter(e => e.id_estudo === +id_estudo)

        if (estudo) {
            await destaque.removeEstudo(estudo)
            res.sendStatus(204)
        } else {
            res.sendStatus(412)
        }
    }
}