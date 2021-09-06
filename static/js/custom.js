new Autocomplete('#search-bar', {
    search: input => {
        const url = `/busca/?course=${input}`
        return new Promise(resolve => {
            fetch(url)
            .then(response => response.json())
            .then(data => {
                console.log(data)
                resolve(data.data)
            })
        })
    },
    onSubmit: result => {
        window.open(`/resultado-busca/?curso=${result}`)
    }
})