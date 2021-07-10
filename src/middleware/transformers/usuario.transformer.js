const {toDate} = require("../../utils/date.utils")
const {hashPassword} = require("../../utils/security.utils")
module.exports = (req, res, next) => {
    req.body.nascimento = req.body.nascimento ? toDate(req.body.nascimento) : null
    if (req.body.senha) {
        req.body.senha = hashPassword(req.body.senha)
    }
    next()
}