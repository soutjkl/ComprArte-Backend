import  express from "express";
import { getGoogleToken } from "../controllers/autenticationDrive.js";
import { getAllUsers, getUser,createUser,updateUser,deleteUser} from "../controllers/userController.js"
import { getAllCategories, getCategory, createCategory,updateCategory, deleteCategory } from "../controllers/categoriesController.js";

const router = express.Router()

// Ruta Token Google
router.get('/auth/googleapi', getGoogleToken)

// Rutas Usuarios
router.get('/userAll',getAllUsers)
router.get('/user/:email',getUser)
router.post('/userCreate',createUser)
router.put('/user/:email',updateUser)
router.put('/delete/:email',deleteUser)

// Rutas Categorias
router.get('/categoriesAll', getAllCategories)
router.get('/categories/:id', getCategory)
router.post('/categories/new-categories',createCategory)
router.put('/categories/update/:id',updateCategory)
router.put('/delete-categories/:id', deleteCategory)

export default router 

