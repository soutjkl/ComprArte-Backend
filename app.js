import express from 'express';
import cors from 'cors'
import db  from './database/db.js';
import todoraquiraRouter from "./routes/routes.js"


const app = express()


app.use(cors())
app.use(express.json({ limit: '10mb' }))
app.use('/', todoraquiraRouter) 

try {
    await db.authenticate()
    console.log('Conexión exitosa a la DB')
} catch (error) {
    console.log(`Error en la conexión a la DB: ${error}`)
}

app.get('/', (req, res) =>{
    res.send('Hola mundo')
})

app.listen(8000, ()=>{
    console.log('Server running in http://localhost:8000')
})