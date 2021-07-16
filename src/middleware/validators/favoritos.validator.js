module.exports = {
    validator: ({body: {id_estudo}}, res, next) => {
        if (id_estudo) {
            next()
        } else {
            res.statusCode = 400
            res.json({id_estudo: 'Obrigatório.'})
        }
    }
}