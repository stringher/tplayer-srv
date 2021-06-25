const {hasItems, checaObrigatorios} = require("../utils/object.utils")

module.exports = () => {
    const criacaoUsuario = (req, res, next) => {
        if (req.body) {
            const retorno = checaObrigatorios(["nome", "email", "senha" ], req.body)
            if (hasItems(retorno)) {
                res.status(400).json({erros: retorno})
            } else {
                next();
            }
        } else {
            res.status(400).json({erros: {payload: "Payload vazio"}});
        }
    };
    return {criacaoUsuario}
}
