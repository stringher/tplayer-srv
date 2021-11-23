const { Midia } = require('../models')

const listagemMidias = async (request, response) => {

    try {
        
        const listaMidias = await Midia.findAll()

        if (listaMidias == null) {
            response.status(404).send("Nenhuma Midia encontrada")
        }

        response.status(200).send(listaMidias)
        
    } catch(err) {
        response.status(500).send("Erro ao listar as Midias")
    }

}
module.exports = { listagemMidias };