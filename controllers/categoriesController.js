import CategoriesModel from "../models/categoriesModel.js"


export const getAllCategories = async (req, res) => {
    try {
        const categories = await CategoriesModel.findAll({
            order: [['createdAt', 'DESC']]
        })
        res.json(categories)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getCategory = async (req, res) => {
    try {
        const category = await CategoriesModel.findAll({
            where: {
                id_categoria: req.params.id
            }
        })
        res.json(category[0])
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const createCategory = async (req, res) =>{
    try {
        await CategoriesModel.create(req.body)
        res.json({"message": "Categoria creada con éxito"})
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const updateCategory = async (req, res)=>{
    try {
        await CategoriesModel.update(req.body,{
            where: {id_categoria: req.params.id}
        })
        res.json({"message": "Categoria actualizada con éxito"})
    } catch (error) {
        res.json({ message: error.message })
    }
}

// Metodo que elimina un categoria de la base de datos
export const deleteCategory = async (req, res) => {
    try {
        await CategoriesModel.destroy({
            where: {id_categoria: req.params.id}
        })
        res.json({"message": "Product eliminado con éxito"});
    } catch (error) {
        res.json({ message: error.message });
    }
  }
  

