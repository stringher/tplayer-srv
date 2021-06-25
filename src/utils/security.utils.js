const crypto = require("crypto")
const jsonwebtoken = require("jsonwebtoken")
const config = require("../config/config.json")[process.env.NODE_ENV ? process.env.NODE_ENV : "development"];

const jwtSecret = process.env.JWT_SECRET ? process.env.JWT_SECRET : config.security["jtw-secret"]

function createHash(str) {
    return crypto.createHash("sha256")
        .update(str)
        .digest("hex")
}

function createJwt(usuario) {
    return jsonwebtoken.sign({
        sub: usuario.id_usuario,
        name: usuario.nome
    }, jwtSecret )
}

function verifyJwt(jwt) {
    return jsonwebtoken.verify(jwt, jwtSecret)
}

function decodeJwt(jwt) {
    return jsonwebtoken.decode(jwt)
}


module.exports = {
    createHash, createJwt, verifyJwt, decodeJwt
}
