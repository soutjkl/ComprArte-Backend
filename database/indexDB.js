import Products from '../models/ProductModel.js'
import Categories  from '../models/categoriesModel.js'
import Quotes  from '../models/quotationModel.js'
import Clients  from '../models/clientModel.js'
import AddedProducts  from '../models/addedProductsModel.js'

Products.belongsTo(Categories, {foreignKey: "id_categoria", as:'categoriaAsociada'});
Categories.hasMany(Products,{foreignKey: "id_categoria"});

Quotes.belongsTo(Clients, {foreignKey: "id_cliente",as:'datos_cliente'})
Clients.hasMany(Quotes,{foreignKey: "id_cliente"});


AddedProducts.belongsTo(Quotes, {foreignKey: "id_cotizacion"})
Quotes.hasMany(AddedProducts,{foreignKey: "id_cotizacion",sourceKey: 'id_cotizacion', as:'productos_agregados'});

AddedProducts.belongsTo(Products, {foreignKey: "id_producto"})
Products.hasMany(AddedProducts,{foreignKey: "id_producto"});



export {
    Products, 
    Categories,
    Quotes,
    Clients,
    AddedProducts
}