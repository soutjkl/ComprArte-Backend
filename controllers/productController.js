const {Products, Categories} = require("../database/indexDB.js")
const { Op } = require("sequelize")
const { fileUrl } = require("./autenticationDrive.js")

export const getAllProducts = async (req, res) => {
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

export const getProduct = async (req, res) => {
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

export const getProductByCategory = async (req, res) => {
  try {
    const products = await Products.findAll({
      where: {
        categoria: req.params.id_categoria,
      },
    });
    res.json(products);
  } catch (error) {
    res.json({ message: error.message });
  }
};


export const searchProduct = async (req, res ) => {
    try {
        const foundProducts = await Products.findAll({
          include:[{model:Categories, as: 'categoriaAsociada'}],
            where:{
                [Op.or]: [
                    {nombre_producto: {[Op.like]: `%${req.body.stringToSearch}%`}},
                    {descripcion: {[Op.like]: `%${req.body.stringToSearch}%`}}
                ]
            }
        })
        res.json(foundProducts)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const createProduct = async (req, res) => {
  const file = await fileUrl(req);
  try {
    if (file) {
      console.log("IMAGEN QUE LLEGA", req)
      if(req.body.imagen_producto !== ''){
        req.body.imagen_producto = file;
      }else{
        req.body.imagen_producto = 'https://drive.google.com/uc?id=1hIWa3QsBVlAeAzKO9rcYKi_z_BDJ812I&export=download'
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

export const updateProduct = async (req, res) => {
  if(req.body.imagen_producto !== ''){
    const file = await fileUrl(req);
    req.body.imagen_producto = file;
  }else{
    delete req.body.imagen_producto
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

export const changeStateProduct = async (req, res) => {
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
export const deleteProduct = async (req, res) => {
  try {
      await Products.destroy({
          where: {id_product: req.params.id}
      })
      res.json({"message": "Product eliminado con éxito"});
  } catch (error) {
      res.json({ message: error.message });
  }
}