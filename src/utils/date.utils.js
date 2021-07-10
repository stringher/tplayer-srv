module.exports = {
    toDate: (str) => {
        const spl = str.split(/[\-\/]/)
        return new Date(+spl[0], +spl[1]-1, +spl[2])
    }
}