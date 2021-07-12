module.exports = {
    validator: ({body: {nome, ordem}}, res, next) => {
        const erros = { }
        if (!nome || nome.length <= 3 || nome.length > 100) {
            erros.nome = 'Campo Obrigatório. Deve conter entre 3 e 100 caracteres.';
        }
        if (ordem && typeof ordem !== "number") {
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