const {Router} = require("express")
const loginController = require("../controllers/login.controller")()
const validations = require("../validations/login.validations")

module.exports = () => {
    let router = new Router()
    router.post("/login", validations.validateLogin, loginController.login )

    return router;
}
