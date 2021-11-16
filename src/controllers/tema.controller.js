const { Tema } = require('../models')

const criaTema = async (request,response) => {

    const { nome, descricao } = request.body

    const listaTemas = await Tema.findAll()
    //console.log(Object.keys(listaTemas).length)

    const qtdTemas = Object.keys(listaTemas).length

    if(!(nome && descricao)) {
        response.status(400).send("Preencha os campos corretamente!")
    }

    if(qtdTemas < 9) {

        try {
            const gravaTema = await Tema.create({
                nome,
                descricao
            })
    
            response.status(201).send("Tema criado com sucesso")
    
        } catch (err) {
            response.status(500).send("Erro ao criar tema")
        }

    } else {
        response.status(403).send("Não é permitido cadastrar mais de 9 temas")
    }
        
}

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

module.exports = { criaTema, listagemTemas, apagaTema }