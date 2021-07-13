module.exports = {
    validator: ({body: {titulo, duracao, ordem}}, res, next) => {
        const erros = { }
        if (!titulo || titulo.length <= 3 || titulo.length > 255) {
            erros.titulo = 'Campo Obrigatório. Deve conter entre 3 e 255 caracteres.';
        }
        if (! duracao || ! /^[0-9]+$/.test(duracao)) {
            erros.duracao = 'Campo obrigatório; valor deve ser numẽrico.';
        }
        if (ordem && ! /^[0-9]+$/.test(ordem)) {
            erros.ordem = 'Quando apresentado, o campo deve ser numẽrico.';
        }

        if (Object.keys(erros).length > 0) {
            res.statusCode = 400
            res.json(erros)
        } else {
            next()
        }
    }
}