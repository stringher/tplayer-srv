const {Router} = require("express")
const loginController = require("../controllers/login.controller")()

module.exports = () => {
    let router = new Router()
    router.post("/login", loginController.login )

    return router;
}
