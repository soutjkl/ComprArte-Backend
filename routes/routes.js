const express = require('express');
const { createCategory, getAllCategories, deleteCategory, getCategory, updateCategory} = require("../controllers/categoriesController")
const {getAllUsers, getUser, createUser, updateUser, deleteUser} = require("../controllers/userController")
const {getGoogleToken} = require("../controllers/autenticationDrive")
const { createQuote, getAllQuotes, printQuote, sendEmailQuote } = require("../controllers/quotationController.js");

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

// Rutas Cotizaciones
router.get('/quotesAll', getAllQuotes)
router.post('/quotes/print', printQuote)
router.post('/quotes/sendEmail', sendEmailQuote)
router.post('/quotes/newQuote', createQuote)

//Rutas Productos
router.get('/product', getAllProducts)
router.get('/product/:id', getProduct)
router.post('/createProduct',createProduct)
router.put('/update/:id',updateProduct)
router.put('/state/:id',changeStateProduct)
router.post('/searchProducts',searchProduct)
router.put('/delete-product/:id',deleteProduct)

//Rutas Talleres
router.post('/createWorkshop/:',createWorkshop)
router.get('/AllWorkshops',getAllWorkshops)
router.get('/WorkshopById/:id', getWorkshopById)
router.put('/WorkshopById/:id', updateWorkshopById)
router.put('/WorkshopById/:id', deleteWorkshopById)

module.exports = router; 

