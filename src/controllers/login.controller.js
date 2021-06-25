const {Usuario} = require("../models/index");
const {createJwt, createHash} = require("../utils/security.utils")
module.exports = () => {
    return {
        async login(req, res) {
            const u = await Usuario.findOne({
                where: {
                    email: req.body.usuario
                }
            });

            if (u!= null && await createHash(req.body.senha) === u.senha) {
                res.status(200).json({
                    jwt: await createJwt(u)
                });
            } else {
                res.status(401).send();
            }
        }
    }
}
