module.exports = {
    transformer: (req, res, next) => {
        req.body = {nome: req.body.nome, ordem: req.body.ordem}
        next()
    }
}