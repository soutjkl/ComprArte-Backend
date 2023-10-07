const {Products, Categories} = require("../database/indexDB.js")
const { Op } = require("sequelize")
const { fileUrl } = require("./autenticationDrive.js")

exports.getAllProducts = async (req, res) => {
  try {
    const products = await Products.findAll({
      include: [{model:Categories, as: 'categoriaAsociada'}],
      order: [['createdAt', 'DESC']]
    }
      );
    res.json(products);
  } catch (error) {
    res.json({ message: error.message });
  }
};

exports.getProduct = async (req, res) => {
  try {
    const product = await Products.findAll({
      where: {
        id_product: req.params.id,
      },
    });
    res.json(product[0]);
  } catch (error) {
    res.json({ message: error.message });
  }
};

exports.getProductByCategory = async (req, res) => {
  try {
    const products = await Products.findAll({
      where: {
        id_categorie: req.params.id_category,
      },
    });
    res.json(products);
  } catch (error) {
    res.json({ message: error.message });
  }
};


exports.searchProduct = async (req, res ) => {
    try {
        const foundProducts = await Products.findAll({
          include:[{model:Categories, as: 'categoriaAsociada'}],
            where:{
                [Op.or]: [
                    {name_product: {[Op.like]: `%${req.body.stringToSearch}%`}},
                    {description_product: {[Op.like]: `%${req.body.stringToSearch}%`}}
                ]
            }
        })
        res.json(foundProducts)
    } catch (error) {
        res.json({ message: error.message })
    }
}

exports.createProduct = async (req, res) => {
  const file = await fileUrl(req);
  try {
    if (file) {
      console.log("IMAGEN QUE LLEGA", req)
      if(req.body.product_picture !== ''){
        req.body.product_picture = file;
      }else{
        req.body.product_picture = 'https://drive.google.com/uc?id=1hIWa3QsBVlAeAzKO9rcYKi_z_BDJ812I&export=download'
      }
      await Products.create(req.body);
      res.json({ message: "Producto creado con éxito" });

    } else {
      res.json({ message: "El archivo no está disponible" });
    }
  } catch (error) {
    res.status(400).json({ message: 'Error creating user', error: error.message });
  }
};

exports.updateProduct = async (req, res) => {
  if(req.body.product_picture !== ''){
    const file = await fileUrl(req);
    req.body.product_picture = file;
  }else{
    delete req.body.product_picture
  }
  try {
    await Products.update(req.body, {
      where: { id_product: req.params.id },
    });
    res.json({ message: "Producto actualizado con éxito" });
  } catch (error) {
    res.status(400).json({ message: 'Error actualizando producto', error: error.message });
  }
};

exports.changeStateProduct = async (req, res) => {
  try {
    await Products.update(req.body, {
      where: { id_product: req.params.id },
    });
    res.json({ message: "Estado del producto actualizado con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Metodo que elimina un producto de la base de datos
exports.deleteProduct = async (req, res) => {
  try {
      await Products.destroy({
          where: {id_product: req.params.id}
      })
      res.json({"message": "Product eliminado con éxito"});
  } catch (error) {
      res.json({ message: error.message });
  }
}