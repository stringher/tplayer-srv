module.exports = {
    toDate(str) {
        const dados = str.split('/');
        return new Date(`${dados[2]}-${dados[1]}-${dados[0]}`)
    }
}
