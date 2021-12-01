const { Midia } = require('../models')
const { midia_capitulos } = require('../models')
const { Livros } = require('../models')
const { Capitulos } = require('../models')

const getLivros = async (request,response) => {

    try {

        const allLivros = await Livros.findAll()


        if (allLivros == null) {
            return response.status(404).send("Recurso não encontrado")
        }

        return response.status(200).send(allLivros)

    } catch (err) {
        return response.status(500).send("Erro interno")
        
    }

}

const getCapitulos = async (request,response) => {

    try {

        const allCapitulos = await Capitulos.findAll()


        if (allCapitulos == null) {
            return response.status(404).send("Recurso não encontrado")
        }

        return response.status(200).send(allCapitulos)

    } catch (err) {
        return response.status(500).send("Erro interno")
        
    }

}

const getCapitulosByLivro = async (request,response) => {

    const { id_livro } = request.body

    try {
       
        const AllCapitulosByLivro = await Livros.findAll({where: {
                id_livro: id_livro
            },
            include: [
                {
                    model: Capitulos,
                    attributes: ['id_cap', 'nome_cap', 'desc_cap'],
                    through: {
                        attributes: [],
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

module.exports = { getLivros, getCapitulos, getCapitulosByLivro }