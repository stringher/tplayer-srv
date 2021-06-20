const valid_tituloDestaque = (req, resp, next) => {
    
    const { titulo, data_inicio, tituloDestaqueItem } = JSON.parse(JSON.stringify(req.body));                

    try {

        if (!titulo) {
            throw new Error('Título deve ser informado');
        }

        if (!data_inicio) {
            throw new Error('data_inicio deve ser informada');
        }
        
        if (tituloDestaqueItem && tituloDestaqueItem.length > 0) {
            tituloDestaqueItem.forEach(item => {                
                if (!item || !item.midia || !item.midia.id_midia) {
                    throw new Error('id_midia deve ser informado');
                }
            });
        } else {
            throw new Error('tituloDestaqueItem deve ser informado');
        }

        console.log('Título Destaque Middleware');
        next();
                        
    } catch (error) {
        return resp.status(400).json({ error: true, errorMessage: error.message })
    }
};

module.exports = { valid_tituloDestaque }