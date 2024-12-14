const express = require('express');
const dotenv = require('dotenv');
const bodyParser = require('body-parser');
const cors = require('cors'); // Requerimos CORS
const prestamoRoutes= require('./src/routes/prestamoRoutes');
const authRoutes = require('./src/routes/authRoutes');

dotenv.config();
const app = express(); 


// Middleware
app.use(cors()); // Habilitamos CORS
app.use(bodyParser.json()); // Para manejar JSON
app.use(bodyParser.urlencoded({ extended: true })); // Para manejar datos de formularios

// Rutas
app.use('/api/auth', authRoutes);
app.use('/api/pagos', prestamoRoutes);

// Iniciar el servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor escuchando en el puerto ${PORT}`);
});
