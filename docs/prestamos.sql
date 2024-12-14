-- Crear la tabla "pagos"
CREATE TABLE pagos (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    cuota NUMERIC(10, 2) NOT NULL,
    saldo NUMERIC(10, 2) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    fecha_pago DATE NOT NULL
);

-- Insertar los datos en la tabla
INSERT INTO pagos (cliente_id, nombre, cuota, saldo, estado, fecha_pago)
VALUES
    (1, 'Juan Pérez', 500.0, 4500.0, 'a tiempo', '2024-11-01'),
    (2, 'Ana López', 700.0, 6300.0, 'retrasado', '2024-10-20'),
    (3, 'Carlos Ruiz', 400.0, 3600.0, 'anticipado', '2024-11-15'),
    (4, 'María Gómez', 600.0, 5400.0, 'a tiempo', '2024-11-05'),
    (1, 'Juan Pérez', 500.0, 4000.0, 'a tiempo', '2024-12-01'),
    (2, 'Ana López', 700.0, 5600.0, 'anticipado', '2024-11-10'),
    (3, 'Carlos Ruiz', 400.0, 3200.0, 'retrasado', '2024-10-25'),
    (4, 'María Gómez', 600.0, 4800.0, 'a tiempo', '2024-12-05'),
    (1, 'Juan Pérez', 500.0, 3500.0, 'anticipado', '2024-12-15'),
    (2, 'Ana López', 700.0, 4900.0, 'a tiempo', '2024-12-20'),
    (3, 'Carlos Ruiz', 400.0, 2800.0, 'a tiempo', '2024-12-25'),
    (4, 'María Gómez', 600.0, 4200.0, 'anticipado', '2024-12-30'),
    (1, 'Juan Pérez', 500.0, 3000.0, 'retrasado', '2025-01-05'),
    (2, 'Ana López', 700.0, 4200.0, 'a tiempo', '2025-01-10'),
    (3, 'Carlos Ruiz', 400.0, 2400.0, 'retrasado', '2025-01-15'),
    (4, 'María Gómez', 600.0, 3600.0, 'a tiempo', '2025-01-20'),
    (1, 'Juan Pérez', 500.0, 2500.0, 'anticipado', '2025-01-25'),
    (2, 'Ana López', 700.0, 3500.0, 'retrasado', '2025-01-30'),
    (3, 'Carlos Ruiz', 400.0, 2000.0, 'a tiempo', '2025-02-01'),
    (4, 'María Gómez', 600.0, 3000.0, 'anticipado', '2025-02-05');

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,       
  nombre VARCHAR(255) NOT NULL,            
  correo VARCHAR(255) NOT NULL UNIQUE,     
  login VARCHAR(120) NOT NULL,
  clave VARCHAR(255) NOT NULL,        
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);