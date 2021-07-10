const { createHash } = require("crypto")

module.exports = {
    hashPassword: (senha) => createHash('md5').update(senha).digest('hex')
}