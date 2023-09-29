const express = require('express');
const { createCategory, getAllCategories, deleteCategory, getCategory, updateCategory} = require("../controllers/categoriesController")
const {getAllUsers, getUser, createUser, updateUser, deleteUser} = require("../controllers/userController")
const {getGoogleToken} = require("../controllers/autenticationDrive")
import { createQuote, getAllQuotes, printQuote, sendEmailQuote } from "../controllers/quotationController.js";

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

module.exports = router; 

