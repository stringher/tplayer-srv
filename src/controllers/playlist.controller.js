const { Playlist } = require('../models')

const createPlaylist = async (request,response) => {

    const { id_usuario, nome, descricao } = request.body

    if(!(id_usuario && nome && descricao)) {
        response.status(400).send("Preencha os campos corretamente!")
    
    } else {
        
        try {
            const criaPlaylist = await Playlist.create({
                id_usuario,
                nome,
                descricao
            });
    
            response.status(201).send("Playlist criada com sucesso")
    
        } catch {
            response.status(500).send("Erro ao criar a Playlist")
        };
        
    }
}

const userPlaylist = async (request, response) => {

    const id_usuario = request.params.id

    try {
        const findPlaylist = await Playlist.findAll({ where: {
            id_usuario: id_usuario
            }
        })

        if(findPlaylist.length != 0) {
            response.status(200).send(findPlaylist)
        } else {
            response.status(404).send("Nenhuma playlist encontrada")
        }
    
    } catch {
        response.status(500).send("Erro ao encontrar playlists")
    }
    
}

const deletePlaylist = async (request, response) => {

    try {

        const deletaPlaylist = await Playlist.findByPk(
            request.params.id
        )

        if (!deletaPlaylist) {
            response.status(404).send("Playlist não localizada para excluir")
        } else {
            deletaPlaylist.destroy()
            response.status(200).send("Playlist excluída com sucesso")
        }
    
    } catch {
        response.status(500).send("Erro ao excluír playlist")
    }

}

module.exports = { createPlaylist, userPlaylist, deletePlaylist }