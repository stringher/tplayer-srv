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

const atualizaStatusTema = async (request,response) => {

    const { id_tema } = request.body

    try {

        const getTemaStatus = await Tema.findOne({ where: {
            id_tema: id_tema
            }
        })

        const statusTema = getTemaStatus.status

        if (statusTema == 0) {

            const ativaTema = await Tema.update({status:1}, {
                where: {
                    id_tema: id_tema
                }
            })

            return response.status(200).send("Tema ativado")
        
        } else {

            const desativaTema = await Tema.update({status:0}, {
                where: {
                    id_tema: id_tema
                }
            })

            return response.status(200).send("Tema desativado")
        }

    } catch (err) {
        return response.status(500).send("Erro interno")
    }

}

const listagemTemasAtivos = async (request,response) => {
    
    try {

        const buscaTemasAtivos = await Tema.findAll({ where: {
            status: "1"
        }}
        )

        if (buscaTemasAtivos == null) {
            return response.status(200).send("Nenhum tema ativo no momento")
        
        } else {
            return response.status(200).send(buscaTemasAtivos)
        }

    } catch (err) {
        return response.status(500).send("Erro interno")
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

module.exports = { listagemTemas, atualizaStatusTema, listagemTemasAtivos, apagaTema }