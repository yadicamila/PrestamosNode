const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

dotenv.config();

exports.protegerRuta = (req, res, next) => {
    const authHeader = req.headers.authorization;

    if (!authHeader) {
        return res.status(401).json({ message: 'Token no proporcionado' });
    }

    const token = authHeader.split(' ')[1];

    jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
        if (err) {
            return res.status(403).json({ message: 'Token inválido o expirado' });
        }
        req.user = user; // Adjunta la información del usuario al request
        next();
    });
};
