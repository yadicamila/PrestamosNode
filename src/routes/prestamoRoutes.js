const express = require('express');
const router = express.Router();
const prestamoController = require('../controllers/prestamoController'); // Importamos el controlador
const { protegerRuta } = require('../middleware/authMiddleware'); // Middleware de autenticación si lo necesitas

// Ruta para crear un pago
router.post('/', prestamoController.crearPago);

// Ruta para obtener todos los pagos
router.get('/', prestamoController.obtenerPagos);

// Ruta para obtener un pago por su ID
router.get('/:id', prestamoController.obtenerPagoPorId);

// Ruta para actualizar un pago por su ID
router.put('/:id', prestamoController.actualizarPago);

// Ruta para eliminar un pago por su ID
router.delete('/:id', prestamoController.eliminarPago);

// Ruta para obtener el total de pagos realizados
router.get('/total', prestamoController.obtenerTotalPagos);

// Ruta para obtener los pagos realizados por un cliente específico
router.get('/cliente/:clienteId', prestamoController.obtenerPagosPorCliente);

// Ruta para obtener el total pagado en un día específico
router.get('/total/:fecha', prestamoController.obtenerTotalPagadoPorDia);

// Ruta para obtener los pagos atrasados
router.get('/atrasados', prestamoController.obtenerPagosAtrasados);

// Ruta para obtener el cliente más cumplido y el más incumplido
router.get('/cumplimiento', prestamoController.obtenerClientesCumplimiento);

module.exports = router;
