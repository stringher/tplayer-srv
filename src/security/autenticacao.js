const jwt = require('jsonwebtoken')

const TOKEN_KEY = 'projeto_rota_66'

const verificaToken = (request, response, next) => {
    const token =
        request.body.token || request.query.token || request.headers["jwt_token"]

    if(!token) {
        return response.status(403).json({"Erro": "É necessário um token JWT para acessar este recurso"})
    }

    try {
        const decoded = jwt.verify(token, TOKEN_KEY)
        request.user = decoded
    } catch (err) {
        return response.status(401).json({"Erro": "Token JWT inválido"})
    }
    return next()
}

module.exports = verificaToken