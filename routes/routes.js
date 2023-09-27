import  express from "express";
import { getGoogleToken } from "../controllers/autenticationDrive.js";
import { getAllUsers, getUser,createUser,updateUser,deleteUser} from "../controllers/userController.js"

const router = express.Router()

// Ruta Token Google
router.get('/auth/googleapi', getGoogleToken)

// Rutas Usuarios
router.get('/userAll',getAllUsers)
router.get('/user/:email',getUser)
router.post('/userCreate',createUser)
router.put('/user/:email',updateUser)
router.put('/delete/:email',deleteUser)

export default router