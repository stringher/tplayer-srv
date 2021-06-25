module.exports = () => {
    return {
        login(req, res) {
            console.log("Hi ! Hello !");
            res.status(201).send();
        }
    }
}
