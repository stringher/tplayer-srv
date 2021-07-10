const { createHash } = require("crypto")
const {sign, verify} = require("jsonwebtoken")
const config = require("../config/configuration")
const password = config.jwtPass
const {admin} = config

function createJwt(usuario) {
    return sign({
        sub: usuario.id_usuario,
        name: usuario.nome,
        email: usuario.email,
        isAdmin: usuario.isAdmin
    }, password)
}

function validateJwt(jwt) {
    return verify(jwt, password)
}

module.exports = {
    hashPassword: (senha) => createHash('md5').update(senha).digest('hex'),
    createJwt,
    validateJwt,
    isRootUser: (user, pass) => {
        return user === admin.user && pass === admin.password
    }
}