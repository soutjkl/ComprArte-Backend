const express = require('express');
const { createCategory, getAllCategories, deleteCategory, getCategory, updateCategory} = require("../controllers/categoriesController")
const {getAllUsers, getUser, createUser, updateUser, deleteUser} = require("../controllers/userController")
const {getGoogleToken} = require("../controllers/autenticationDrive")
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

//Rutas Productos
router.get('/AllProducts', getAllProducts)
router.get('/Product/:id', getProduct)
router.get('/ProductByCategory/:category', getProductByCategory)
router.get('/searchProduct/:product', searchProduct)
router.post('/Product/:', createProduct)
router.put('/Product/update/:id',updateProduct)
router.put('/StateProduct/:id', changeStateProduct)
router.put('/delete-Product/:id', deleteProduct)

//Rutas Talleres
router.post('/createWorkshop/:',createWorkshop)
router.get('/AllWorkshops',getAllWorkshops)
router.get('/WorkshopById/:id', getWorkshopById)
router.put('/WorkshopById/:id', updateWorkshopById)
router.put('/WorkshopById/:id', deleteWorkshopById)

module.exports = router; 

