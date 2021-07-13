module.exports = (express) => {
    express.post("/profile", (req, res)=> {
        res.sendStatus(204);
    })
}