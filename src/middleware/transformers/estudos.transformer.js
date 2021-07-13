module.exports = {
    insertTransformer: (req, res, next) => {
        const { titulo, duracao, ordem } = req.body
        const arquivo = req.file.originalname
        const mediaType = req.file.mimetype

        req.body = { titulo, arquivo, mediaType, duracao, ordem }
        next()
    },
    updateTransformer: (req, res, next) => {
        const { titulo, duracao, ordem } = req.body

        req.body = { titulo, duracao, ordem }
        next()
    }
}
