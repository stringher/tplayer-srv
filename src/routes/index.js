const fs = require("fs")
const path = require("path")

module.exports = (express) => {
    fs
        .readdirSync(__dirname)
        .filter(file =>
            (file.indexOf('.') !== 0) &&
            (file !== path.basename(__filename)) &&
            (file.slice(-3) === '.js')
        )
        .forEach(file => {
            let routes = require(path.join(__dirname, file))();
            express.use("/", routes)
        });
}
