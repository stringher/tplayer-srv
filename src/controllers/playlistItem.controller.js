const { PlaylistItem } = require('../models');
const { Midia } = require ('../models');
const { Playlist } = require ('../models');

const addMidiaPlaylist = async (request,response) => { // Adicionar uma Midia a uma Playslist de um usuário

    try {
        const insereMidiaPlaylist = await PlaylistItem.create({
            id_playlist: request.body.id_playlist,
            id_midia: request.body.id_midia
        });

        return response.status(201).json({status: true, message: "Midia adicionada com sucesso"});
    } catch(error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};


const getById = async (request, response) => { // Listar mídias por Playlists

    try {
        const listagemPlaylistId = await Playlist.findByPk(request.params.id,
            {
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
            
        if (listagemPlaylistId == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const responselistagemPlaylistId = {
            listagemPlaylistId
        }

        return response.status(200).json(responselistagemPlaylistId);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { addMidiaPlaylist, getById }

