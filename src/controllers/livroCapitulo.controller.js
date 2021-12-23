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

const getLivroByTestamento = async (request,response) => {

    const { cod_testamento } = request.body

    try {

        const allLivros = await Livros.findAll({where: {
            cod_testamento: cod_testamento
        }})


        if (allLivros == null) {
            return response.status(404).send("Recurso não encontrado")
        }

        return response.status(200).send(allLivros)

    } catch (err) {
        return response.status(500).send("Erro interno")
        
    }
    
}


const capsLivro = async (request,response) => {

    const { id_livro } = request.body

    try {

        const findCaps = await Capitulos.findAll({where: {
            id_livro: id_livro
        },
        attributes: ['id_cap','num_cap','titulo_cap']
        },
        )
        
        return response.status(200).send(findCaps)

    } catch (err) {
        return response.status(500).send("Erro interno")
    }
}

module.exports = { getLivros, getLivroByTestamento, capsLivro }