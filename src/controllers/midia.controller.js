const { Midia } = require('../models')
const { midia_capitulos } = require('../models')
const { Capitulos } = require('../models')
const { Livros } = require('../models')

const uploadMidia = async (request,response) => {

    const { nome, media_type, id_livro, id_cap } = request.body

    try {

        const criaMidia = await Midia.create({
            nome,
            media_type,
        })

        const id_midia = criaMidia.id_midia
        
        const gravaMidiaLivroCap = await midia_capitulos.create({
            id_livro,
            id_cap,
            id_midia
        })

        return response.status(201).send("Midia salva com sucesso!")
    
    } catch (err) {
        return response.status(500).send("Erro interno")
    }

}

const getLivroCapMidia = async (request,response) => {

    try {
       
        const AllCapitulosByLivro = await Livros.findAll({
            include: [
                {
                    model: Capitulos,
                    attributes: ['id_cap', 'nome_cap', 'desc_cap'],
                    through: {
                        attributes: []
                    },
                    include: {
                        model: Midia,
                        attributes: ['id_midia', 'nome', 'media_type'],
                        through: {
                            attributes: []
                        }
                    }
                }
            ]
        })

        if (AllCapitulosByLivro == null) {
             return response.status(404).send("Recurso não encontrado")
        }
          
        return response.status(200).send(AllCapitulosByLivro)

    } catch (err) {
        return response.status(500).send("Erro interno")
    }

}

const getMidiaCap = async (request,response) => {

    const { id_cap } = request.body
    
    try {

        const findMidas = await Capitulos.findOne({ where: {
            id_cap: id_cap
        },
            include: [
                {
                    model: Midia,
                    attributes: ['id_midia', 'nome', 'media_type'],
                    through: {
                        attributes: []
                    }
                }
            ]
        })

        return response.status(200).send(findMidas)

    } catch (err) {
        return response.status(500).send("Erro interno")
    }

}

const deleteMidiaLivCap = async (request,response) => {

    const { id_midia, id_cap, id_livro } = request.body

    try {

        const deletaMidiaLivCap = await midia_capitulos.destroy({ where: {
            id_midia: id_midia,
            id_cap: id_cap,
            id_livro: id_livro
        }}
        )

        const deleteMidia = await Midia.destroy({ where: {
            id_midia: id_midia
        }}
        )

        return response.status(200).send("Excluído com sucesso")
    
    } catch (err) {
        return response.status(500).send("Erro interno")
    }
}


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

module.exports = { uploadMidia, getLivroCapMidia, getMidiaCap, deleteMidiaLivCap, listagemMidias, listagemMidiasById };