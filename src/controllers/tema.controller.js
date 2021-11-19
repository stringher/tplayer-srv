const { Tema } = require('../models')

const listagemTemas = async (request,response) => {

    try {
        
        const listaTemas = await Tema.findAll()

        if (listaTemas == null) {
            response.status(404).send("Nenhum tema encontrado")
        }

        response.status(200).send(listaTemas)
        
    } catch(err) {
        response.status(500).send("Erro ao listar temas")
    }

}

const apagaTema = async (request,response) => {
    
    try {
        
        let tema = await Tema.findByPk(request.params.id)

        if (!tema) {
            console.log("err")
        }

        tema.destroy()
        
        response.status(200).send(`Tema ${tema.nome} excluído com sucesso`)
        
     /*   
        const deleteTema = await Tema.destroy({ where: {
            id: request.params.id
            } 
        })

        response.status(200).send("Tema excluído com sucesso")
*/

    } catch (err) {
        response.status(500).send("Erro ao excluir tema ")
    }
        
}

module.exports = { listagemTemas, apagaTema }
//criaTema