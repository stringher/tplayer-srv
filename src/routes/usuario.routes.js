const {Router} = require("express");
const controller = require("../controllers/usuarios.controller")
module.exports = (express) => {
    const router = new Router();
    router.get('/', controller.index )
    router.get(`/:id`, controller.get )
    router.post('/', controller.create )
    router.put(`/:id`, controller.update )
    router.delete(`/:id`, controller.delete )

    express.use("/api/v1/usuarios", router)
}