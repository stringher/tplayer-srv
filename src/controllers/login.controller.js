const {Usuario} = require("../models")
const {hashPassword, validateJwt, createJwt} = require('../utils/security.utils')

module.exports = {
    login: async ({body:{email, senha}}, res) => {
        const user = await Usuario.findOne({
            where: { email }
        })
        if (user && hashPassword(senha) === user.senha ) {
            res.json({jwt: createJwt(user)})
        } else {
            res.sendStatus(401)
        }
    },

    validate: (req, res) => {
        if (! req.headers.authorization ) {
            res.sendStatus(401)
        } else {
            const jwt = (req.headers.authorization.match(/(?<=Bearer\s).*/)||[])[0]
            try {
                res.sendStatus(validateJwt(jwt) ? 204 : 401)
            } catch (e) {
                if (e.name === "JsonWebTokenError"){
                    console.log(`Token com erro: ${JSON.stringify(req.headers.authorization)}, ${e.message}`);
                    res.sendStatus(401)
                } else {
                    console.log(e)
                }
            }
        }
    }
}