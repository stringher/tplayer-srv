const {hasItems, checaObrigatorios} = require("../utils/object.utils")

module.exports = {
    validateLogin(req, res, next) {
        const payload = req.body
        checaObrigatorios(["", ""], payload())
    }
}
