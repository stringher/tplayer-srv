const {hasItems, checaObrigatorios} = require("../utils/object.utils")

module.exports = {
    validateLogin(req, res, next) {
        const payload = req.body
        const retorno = checaObrigatorios(["usuario", "senha"], payload);
        if (hasItems(retorno)) {
            res.status(400).json({erros: retorno})
        } else {
            next();
        }
    }
}
