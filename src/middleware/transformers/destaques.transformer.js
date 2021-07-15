module.exports = {
    transformer: (req, res, next) => {
        req.body = { titulo: req.body.titulo, data_ar: Date.parse(req.body.data_ar) }
        next()
    }
}