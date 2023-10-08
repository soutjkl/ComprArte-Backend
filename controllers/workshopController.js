// controllers/workshopController.js
const Workshop = require("../models/workshopsModel")

// Create a new workshop
exports.createWorkshop = async (req, res) => {
  try {
    const workshop = await Workshop.create(req.body);
    return res.json({ message: "Taller creado con éxito" });
  } catch (error) {
    return res.status(400).json({ error: "Fallo al crear un nuevo taller" });
  }
};

// Retrieve all workshops
exports.getAllWorkshops = async (req, res) => {
  try {
    const workshops = await Workshop.findAll();
    return res.status(200).json(workshops);
  } catch (error) {
    res.json({ message: error.message });
  }
};

// Retrieve a workshop by ID
exports.getWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const workshop = await Workshop.findByPk(id);
    if (!workshop) {
      return res.status(404).json({ error: "Taller no encontrado" });
    }
    return res.status(200).json(workshop);
  } catch (error) {
    return res.status(500).json({ error: "Error de Servidor" });
  }
};

// Update a workshop by ID
exports.updateWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const [updated] = await Workshop.update(req.body, {
      where: { id_workshop: id },
    });
    if (updated) {
      return res.json({ message: "Taller actualizado exitosamente" });
    }
    return res.status(404).json({ error: "Taller no encontrado" });
  } catch (error) {
    return res.status(500).json({ error: "Error de Servidor" });
  }
};

// Delete a workshop by ID
exports.deleteWorkshopById = async (req, res) => {
  const { id } = req.params;
  try {
    const deleted = await Workshop.destroy({
      where: { id_workshop: id },
    });
    if (deleted) {
      return res.json({ message: "Taller eliminado exitosamente" });
    }
    return res.status(404).json({ error: "Taller no encontrado" });
  } catch (error) {
    return res.status(500).json({ error: "Error de Servidor" });
  }
};