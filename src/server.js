import express from 'express'

class Server {
    constructor() {
        this.app = express()
    }

}

export default new Server().app