import Server from './src/server.js'

const port = 3021 || process.env.port

Server.listen(port, () => console.log(`ativo em ${port}`))