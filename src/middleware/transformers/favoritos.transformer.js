module.exports = {
    transformer: (req, res, next) => {
        req.body = {id_estudo: req.body.id_estudo}
        next()
    }
}