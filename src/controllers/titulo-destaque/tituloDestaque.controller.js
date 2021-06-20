const { TituloDestaque } = require('../../models');
const { TituloDestaqueItem } = require('../../models');

const create = async (request, response) => {
    try {
        
        const { titulo, data_inicio, tituloDestaqueItem } = JSON.parse(JSON.stringify(request.body));                

        const doc_contentTituloDestaque = { 
          titulo,                       
          data_inicio                 
        };  
 
        let newTituloDestaque = await TituloDestaque.create(doc_contentTituloDestaque);    

        tituloDestaqueItem.forEach(item => {

            const doc_contentTituloDestaqueItem = { 
                id_titulo_destaque: newTituloDestaque.id_titulo_destaque,                       
                id_midia: item.midia.id_midia
            }; 
    
            TituloDestaqueItem.create(doc_contentTituloDestaqueItem)            
            .catch(err => {
                console.log("Erro ao salvar TituloDestaqueItem: ", err);
                throw err;
            });
            
        });

        const links = [{
            rel: 'self',
            type: 'get, delete',
            uri: `http://localhost:3333/titulo-destaque/${newTituloDestaque.id_titulo_destaque}`             
        },
        {
            rel: 'self',
            type: 'get',
            uri: `http://localhost:3333/titulo-destaque/`
        }];                 
        
        const responseTituloDestaque = {
            tituloDestaque: newTituloDestaque,
            tituloDestaqueItem,
            links
        }

        response.location(`http://localhost:3333/titulo-destaque/${newTituloDestaque.id_titulo_destaque}`); 

        return response.status(201).json(responseTituloDestaque);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

const getById = async (request, response) => {
    
    try {
        const tituloDestaque = await TituloDestaque.findByPk(request.params.id,
            {
                include: ['midias']
            });
            
        if (tituloDestaque == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const links = [{
            rel: 'self',
            type: 'delete',
            uri: `http://localhost:3333/titulo-destaque/${tituloDestaque.id_titulo_destaque}`             
        },
        {
            rel: 'imagem',
            type: 'get',
            uri: `http://localhost:3333/titulo-destaque`
        }];                 
        
        const responseTituloDestaque = {
          tituloDestaque,
            links
        }

        return response.status(200).json(responseTituloDestaque);
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

const getTopByDataInicioDesc = async (request, response) => {
    
  try {

        const tituloDestaque = await TituloDestaque.findAll({
            include: ['midias'],
            order: [['data_inicio', 'DESC']],
            limit: 1
        });

        if (tituloDestaque == null) {
            return response.status(404).json({ 
                error: true, 
                errorMessage: 'Recurso não encontrado', 
                path: request.originalUrl })
        }

        const links = [{
            rel: 'self',
            type: 'get, delete',
            uri: `http://localhost:3333/titulo-destaque/${tituloDestaque[0].id_titulo_destaque}`             
        }];                 
      
        const responseTituloDestaque = {
            tituloDestaque: tituloDestaque[0],
            links
        }

      return response.status(200).json(responseTituloDestaque);
  } catch (error) {
      return response.status(400).json({ error: true, errorMessage: error.message })
  }
};

const destroy = async (request, response) => {
    
    try {
        
        TituloDestaque.destroy({
            where: { id_titulo_destaque: request.params.id }
        }).then(() => {
            response.status(204).end();
        });        
        
    } catch (error) {
        return response.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { create, getById, getTopByDataInicioDesc, destroy }