import  express from "express";
import { getGoogleToken } from "../controllers/autenticationDrive.js";
<<<<<<< HEAD
import { getAllUsers, getUser,createUser,updateUser,deleteUser} from "../controllers/userController.js"
=======
import { getAllCategories, getCategory, createCategory,updateCategory, deleteCategory } from "../controllers/categoriesController.js";
>>>>>>> af5c1f1f15f04c1b913c69cea9bd065df12d1a92

const router = express.Router()

// Ruta Token Google
router.get('/auth/googleapi', getGoogleToken)

<<<<<<< HEAD
// Rutas Usuarios
router.get('/userAll',getAllUsers)
router.get('/user/:email',getUser)
router.post('/userCreate',createUser)
router.put('/user/:email',updateUser)
router.put('/delete/:email',deleteUser)

export default router
=======
// Rutas Categorias
router.get('/categoriesAll', getAllCategories)
router.get('/categories/:id', getCategory)
router.post('/categories/new-categories',createCategory)
router.put('/categories/update/:id',updateCategory)
router.put('/delete-categories/:id', deleteCategory)

export default router 
>>>>>>> af5c1f1f15f04c1b913c69cea9bd065df12d1a92
