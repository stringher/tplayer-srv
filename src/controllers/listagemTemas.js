const { Midia } = require('../models');
const { Tema } = require('../models');

const getAll = async (request, response) => {
    
    try {
        const listAudioTemas = await Tema.findAll({
                include: [
                    {
                        model: Midia,
                        attributes: ['id_midia', 'nome', 'media_type']
                    }
                ]
            });
            
        if (listAudioTemas == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const responseListagemTemas = {
            listAudioTemas
        }

        return response.status(200).json(responseListagemTemas);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { getAll }