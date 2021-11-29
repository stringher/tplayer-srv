const { Midia } = require('../models')

const listagemMidias = async (request,response) => {

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

const listagemMidiasById = async (request,response) => {

    id = request.params.id

    try {

        const listagemMidias = await Midia.findByPk(id)

        if(!listagemMidias) {
            response.status(404).send(`Não foi encontrada mídia com o ID: ${id}`)
        } else {
            response.status(200).send(listagemMidias)
        }

    } catch(err) {
        response.status(500).send("Erro ao localizar mídia")
    }

}

module.exports = { listagemMidias, listagemMidiasById };