const Products = require('../models/productModel.js')
const Quotes = require('../models/quotationModel.js')
const Categories = require('../models/categoriesModel.js')
const Clients = require('../models/clientModel.js')
const AddedProducts = require('../models/addedProductsModel.js')

Products.belongsTo(Categories, {foreignKey: "id_category", as:'associated_category'});
Categories.hasMany(Products,{foreignKey: "id_category"});

Quotes.belongsTo(Clients, {foreignKey: "id_customer",as:'customer_data'})
Clients.hasMany(Quotes,{foreignKey: "id_customer"});

AddedProducts.belongsTo(Quotes, {foreignKey: "id_quotation"})
Quotes.hasMany(AddedProducts,{foreignKey: "id_quotation",sourceKey: 'id_quotation', as:'added_products'});

AddedProducts.belongsTo(Products, {foreignKey: "id_product"})
Products.hasMany(AddedProducts,{foreignKey: "id_product"});

module.exports = {
    Products, 
    Categories,
    Quotes,
    Clients,
    AddedProducts
}