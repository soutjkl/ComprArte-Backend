const { Sequelize, DataTypes } = require('sequelize');
const db = require('./db.js');

// Importa todos los modelos
const Customer = require('../models/clientModel.js');
const MyUser = require('../models/userModel.js');
const MarketRates = require('../models/quotationModel.js');
const Category = require('../models/categoriesModel.js');
const Product = require('../models/productModel.js');
const Workshop = require('../models/workshopsModel.js');
const AddedProducts = require('../models/addedProductsModel.js');

// Establece las relaciones entre los modelos
MarketRates.belongsTo(Customer, { foreignKey: 'id_customer', as: 'customer_data' });
Customer.hasMany(MarketRates, { foreignKey: 'id_customer' });

MarketRates.belongsTo(MyUser, { foreignKey: 'email_user' });
MyUser.hasMany(MarketRates, { foreignKey: 'email_user' });

Product.belongsTo(Category, { foreignKey: 'id_category' });
Category.hasMany(Product, { foreignKey: 'id_category' });

AddedProducts.belongsTo(MarketRates, { foreignKey: 'id_quote' });
MarketRates.hasMany(AddedProducts, { foreignKey: 'id_quote' });

AddedProducts.belongsTo(Product, { foreignKey: 'id_product' });
Product.hasMany(AddedProducts, { foreignKey: 'id_product' });

AddedProducts.belongsTo(Workshop, { foreignKey: 'id_workshop' });
Workshop.hasMany(AddedProducts, { foreignKey: 'id_workshop' });

// Exporta todos los modelos
module.exports = {
  Customer,
  MyUser,
  MarketRates,
  Category,
  Product,
  Workshop,
  AddedProducts,
};
