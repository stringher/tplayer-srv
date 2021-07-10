const controller = require("../controllers/login.controller")

module.exports = (express) => {
    express.post("/api/v1/atrium/login", controller.login)
    express.get("/api/v1/atrium/validate", controller.validate)
}