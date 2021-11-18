const { Midia } = require('../models');
const { Usuario } = require('../models');
const { Favorito } = require('../models');

const addFavorito = async (request,response) => { // Adiciona uma música aos favoritos, passando no body da requisição "id_usuario" e "id_midia"

    try {
        const insereFavorito = await Favorito.create({
            id_midia: request.body.id_midia,
            id_usuario: request.body.id_usuario
        });

        response.status(201).send("Mídia adicionada aos favoritos com sucesso")
    } catch {
        response.status(500).send("Erro ao adicionar aos favoritos")
    }
}

const getByUserId = async (request,response) => { // Listagem das mídias favoritos do usuário logado, passando como paramêtro o "id_usuario" na requisição

    try {
        const buscaFavorito = await Usuario.findByPk(request.params.id, { attributes: ['id_usuario'],
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

        if (buscaFavorito == null) {
             response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const responseBuscafavorito = { 
            buscaFavorito 
        }

        response.status(200).json(responseBuscafavorito);
    } catch {
        response.status(500).send("Não foi possível encontrar os favoritos")
    }
}

const deleteFavorito = async (request,response) => { // Deleta mídia dos FAVORITOS, passando no body da requisição "id_usuario" e "id_midia".

    try {
        const deletaFavorito = await Favorito.destroy({where: {
            id_usuario: request.body.id_usuario,
            id_midia: request.body.id_midia
        }
        });

        response.status(200).json({status: true, message: "Mídia removida dos Favoritos"});
    } catch(error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { addFavorito, getByUserId, deleteFavorito }