const { Midia } = require('../models');
const { Tema } = require('../models');
const { MidiaTema } = require('../models');

const createTemaMidia = async (request,response) => { // Criação de um tema com mídias selecionadas no dropdown (id_midia vem como array)

    const { nome, descricao, id_midia } = request.body

    const listaTemas = await Tema.findAll()
    //console.log(Object.keys(listaTemas).length)

    const qtdTemas = Object.keys(listaTemas).length

    if(!(nome && descricao && id_midia)) {
        response.status(400).send("Preencha os campos corretamente!")
    }

    if(qtdTemas < 9) {

        try {
            const gravaTema = await Tema.create({
                nome,
                descricao
            })

            const id_tema = gravaTema.id_tema

            for(const ids of id_midia) {
                const gravaMidiaTema = await MidiaTema.create({
                    id_tema,
                    id_midia: ids
                })
            }
            
            response.status(201).send("Tema criado com sucesso")
    
        } catch (err) {
            response.status(500).send("Erro ao criar tema")
        }

    } else {
        response.status(403).send("Não é permitido cadastrar mais de 9 temas")
    }
        
}

const deleteTemaMidia = async (request,response) => { // xxx

    try {
        const deletaTemaMidia = await MidiaTema.destroy({where: {
            id_midia: request.body.id_midia,
            id_tema: request.body.id_tema
        }
        });

        return response.status(200).json({status: true, message: "Mídia excluída do tema com sucesso"});
    } catch(error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};



const getAll = async (request, response) => { // Listar todos os temas e suas mídias
    
    try {
        const listagemAudioTema = await Tema.findAll({
                include: [
                    {
                        model: Midia,
                        attributes: ['id_midia', 'nome', 'media_type'],
                        through: {
                            attributes: [],
                        }
                    }
                ]
            });
            
        if (listagemAudioTema == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const responseListagemAudioTemas = {
            listagemAudioTema
        }

        return response.status(200).json(listagemAudioTema);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

const getById = async (request, response) => { // Listar mídias por temas

    try {
        const listagemAudioTemaId = await Tema.findByPk(request.params.id,
            {
                include: [
                    {
                        model: Midia,
                        attributes: ['id_midia', 'nome'],
                        through: {
                            attributes: [],
                        }
                    }
                ]
            });
            
        if (listagemAudioTemaId == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const responseListagemAudioTemasId = {
            listagemAudioTemaId
        }

        return response.status(200).json(responseListagemAudioTemasId);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { createTemaMidia, deleteTemaMidia, getAll, getById }

//addTemaMidia