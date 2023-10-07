const CategoriesModel = require("../models/categoriesModel");

exports.getAllCategories = async (req, res) => {
  try {
    const categories = await CategoriesModel.findAll({
      attributes: ["id_category", "name_category"],
      order: [["id_category", "DESC"]],
    });
    res.json(categories);
  } catch (error) {
    res.json({ message: error.message });
  }
};

exports.getCategory = async (req, res) => {
  try {
    const category = await CategoriesModel.findAll({
      attributes: ["id_category", "name_category"],
      where: {
        id_category: req.params.id,
      },
      raw: true,
    });
    res.json(category[0]);
  } catch (error) {
    res.json({ message: error.message });
  }
};

exports.createCategory = async (req, res) => {
  try {
    const { id_category, name_category } = req.body;
    await CategoriesModel.create({ id_category, name_category });
    res.json({ message: "Categoría creada con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

exports.updateCategory = async (req, res) => {
  try {
    await CategoriesModel.update(req.body, {
      where: { id_category: req.params.id },
      individualHooks: true, // Esto evita la necesidad de 'updatedAt'
    });
    res.json({ message: "Categoria actualizada con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Metodo que elimina un categoria de la base de datos
exports.deleteCategory = async (req, res) => {
  try {
    await CategoriesModel.destroy({
      attributes: ["id_category", "name_category"],
      where: { id_category: req.params.id },
    });
    res.json({ message: "Categoria eliminado con éxito" });
  } catch (error) {
    res.json({ message: error.message });
  }
};
