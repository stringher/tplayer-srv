const {validateJwt} = require("../utils/security.utils")

function extractJwt(req) {
    return ((req.headers.authorization || "").match(/(?<=Bearer\s).*/)||[])[0]
}

module.exports = {
    sameUserOrAdminRole: async (req, res, next) => {
        const jwt = extractJwt(req)
        if (typeof jwt === 'undefined') {
            res.sendStatus(401)
        } else {
            try {
                const token = await validateJwt(jwt)
                if (token.isAdmin || +req.params.id_usuario === token.sub){
                    next()
                } else {
                    res.sendStatus(403)
                }
            } catch(e) {
                res.sendStatus(401)
            }
        }
    },

    userRole: async (req, res, next) => {
                const jwt = extractJwt(req)
        if (typeof jwt === 'undefined') {
            res.sendStatus(401)
        } else {
            try {
                await validateJwt(jwt)
                next()
            } catch(e) {
                res.sendStatus(401)
            }
        }
    },

    adminRole: async (req, res, next) => {
                const jwt = extractJwt(req)
        if (typeof jwt === 'undefined') {
            res.sendStatus(401)
        } else {
            try {
                const token = await validateJwt(jwt)
                if (token.isAdmin){
                    next()
                } else {
                    res.sendStatus(403)
                }
            } catch(e) {
                res.sendStatus(401)
            }
        }
    }
}