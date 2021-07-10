const { createHash } = require("crypto")
const {decode, sign, verify} = require("jsonwebtoken")
const password = require("../config/configuration").jwtPass

function createJwt(usuario) {
    return sign({
        sub: usuario.id_usuario,
        name: usuario.nome,
        email: usuario.email
    }, password)
}

function validateJwt(jwt) {
    return verify(jwt, password)
}

module.exports = {
    hashPassword: (senha) => createHash('md5').update(senha).digest('hex'),
    createJwt,
    validateJwt
}