
CREATE DATABASE IF NOT EXISTS TiendaGuitarras;
USE TiendaGuitarras;

CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefono VARCHAR(20) NOT NULL
);

CREATE TABLE Proveedor (
  id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  contacto VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL
);

CREATE TABLE Empleado (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  puesto VARCHAR(50) NOT NULL
);

CREATE TABLE Producto (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion TEXT NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL
);

CREATE TABLE Venta (
  id_venta INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_empleado INT,
  fecha DATE,
  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

CREATE TABLE DetalleVenta (
  id_detalle INT AUTO_INCREMENT PRIMARY KEY,
  id_venta INT,
  id_producto INT,
  cantidad INT,
  precio_unit DECIMAL(10,2),
  FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

CREATE TABLE Compra (
  id_compra INT AUTO_INCREMENT PRIMARY KEY,
  id_proveedor INT,
  fecha DATE,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);



INSERT INTO Cliente (nombre, apellido, email, telefono) VALUES
('Luis', 'Martínez', 'luis.martinez@example.com', '658123456'),
('María', 'González', 'maria.gonzalez@example.com', '677987654'),
('Carlos', 'Pérez', 'carlos.perez@example.com', '612345678'),
('Laura', 'Sánchez', 'laura.sanchez@example.com', '645678901'),
('David', 'Ramírez', 'david.ramirez@example.com', '699112233'),
('Elena', 'Torres', 'elena.torres@example.com', '622334455'),
('Jorge', 'Morales', 'jorge.morales@example.com', '611223344'),
('Claudia', 'Ruiz', 'claudia.ruiz@example.com', '634556677'),
('Diego', 'Hernández', 'diego.hernandez@example.com', '688778899'),
('Isabel', 'Castro', 'isabel.castro@example.com', '600998877'),
('Antonio', 'Ortega', 'antonio.ortega@example.com', '699445566'),
('Lucía', 'Reyes', 'lucia.reyes@example.com', '644332211'),
('Sergio', 'Vega', 'sergio.vega@example.com', '655667788'),
('Marta', 'Rojas', 'marta.rojas@example.com', '677556644'),
('Alberto', 'Navarro', 'alberto.navarro@example.com', '688334455'),
('Verónica', 'Campos', 'veronica.campos@example.com', '611778899'),
('Manuel', 'Iglesias', 'manuel.iglesias@example.com', '677889900'),
('Rosa', 'Pardo', 'rosa.pardo@example.com', '699001122'),
('Pablo', 'Salas', 'pablo.salas@example.com', '600223344'),
('Ana', 'Delgado', 'ana.delgado@example.com', '611445566');


INSERT INTO Proveedor (nombre, contacto, telefono) VALUES
('Guitar Pro S.A.', 'José López', '912345678'),
('Musical World Ltd.', 'Marta Gil', '934567890'),
('Strings & More', 'Álvaro Cruz', '965432100'),
('ElectroSound', 'Lucía Ramírez', '988765432'),
('MegaMusic Co.', 'Daniel Ruiz', '978645321'),
('Instrumentalia', 'Carla Sánchez', '967899001'),
('Amplisound Corp.', 'Luis Ortega', '912345901'),
('PickZone SL', 'Esteban Torres', '934567111'),
('TuneTech Inc.', 'Sofía Vega', '945678222'),
('SoundGear', 'Raúl Gómez', '956789333');


INSERT INTO Empleado (nombre, apellido, puesto) VALUES
('Mario', 'Fernández', 'Vendedor'),
('Carolina', 'López', 'Vendedor'),
('Iván', 'Cano', 'Gerente'),
('Natalia', 'Serrano', 'Vendedor'),
('Óscar', 'Domínguez', 'Adminitrativo');


INSERT INTO Producto (nombre, descripcion, precio, stock) VALUES
('Guitarra Fender Stratocaster', 'Guitarra eléctrica clásica para rock y blues.', 1250.00, 12),
('Guitarra Gibson Les Paul', 'Guitarra de cuerpo sólido con gran sustain.', 1399.99, 8),
('Guitarra Ibanez RG', 'Perfecta para metal y shred.', 999.99, 10),
('Pedal Boss DS-1', 'Pedal de distorsión clásico.', 79.99, 25),
('Amplificador Marshall', 'Combo de 50W con reverb.', 650.00, 5),
('Amplificador Fender', 'Clean tones legendarios de Fender.', 725.50, 7),
('Cable Instrumento', 'Cable de 3 metros con conectores dorados.', 19.90, 60),
('Cuerdas Ernie Ball', 'Juego de cuerdas 10-46.', 11.99, 80),
('Correa para guitarra', 'Correa acolchada de cuero.', 25.00, 40),
('Afinador digital', 'Afinador cromático de clip.', 15.00, 30),
('Guitarra PRS SE', 'Estilo moderno con excelente sustain.', 849.00, 6),
('Guitarra Yamaha Pacifica', 'Buena para principiantes.', 399.00, 20),
('Pedal de Delay', 'Efecto de eco digital.', 120.00, 14),
('Pedal de Chorus', 'Efecto estéreo para guitarra.', 110.00, 10),
('Puente Floyd Rose', 'Sistema de trémolo de alta precisión.', 199.99, 9),
('Clavijas de afinación', 'Set de 6 clavijas cromadas.', 45.00, 50),
('Pastillas Seymour Duncan', 'Set para hard rock.', 225.00, 7),
('Estuche rígido', 'Protección completa para guitarra.', 130.00, 20),
('Soporte de guitarra', 'Soporte plegable con goma antideslizante.', 29.00, 35),
('Juego de púas', 'Set de 12 púas de diferentes grosores.', 8.99, 100),
('Guitarra ESP LTD EC-1000', 'Modelo orientado a metal y rock pesado.', 999.00, 4),
('Pedal Wah Cry Baby', 'Pedal de expresión wah-wah.', 90.00, 18),
('Amplificador Orange Crush 20', 'Sonido británico clásico.', 210.00, 6),
('Soporte múltiple para guitarras', 'Soporta hasta 5 guitarras.', 75.00, 3),
('Cuerdas Elixir Nanoweb', 'Larga duración, gran tono.', 14.50, 55),
('Slide de vidrio', 'Ideal para blues y slide guitar.', 10.00, 25),
('Cejilla metálica', 'Accesorio para transporte rápido.', 15.00, 45),
('Pedal Overdrive MXR', 'Overdrive cálido y dinámico.', 130.00, 11),
('Cable enrollado vintage', 'Estilo retro, sonido moderno.', 24.99, 22),
('Guitarra Jackson JS22 Dinky', 'Diseño agresivo, gran relación calidad/precio.', 299.00, 9);


INSERT INTO Venta (id_cliente, id_empleado, fecha) VALUES
(1, 1, '2025-06-05'),
(2, 2, '2025-05-18'),
(3, 3, '2025-07-02'),
(4, 4, '2025-08-01'),
(5, 5, '2025-05-25'),
(6, 1, '2025-06-15'),
(7, 2, '2025-06-30'),
(8, 3, '2025-07-12'),
(9, 4, '2025-07-20'),
(10, 5, '2025-07-25');


INSERT INTO DetalleVenta (id_venta, id_producto, cantidad, precio_unit) VALUES
(1, 1, 1, 1250.00),
(1, 7, 2, 19.90),
(2, 2, 1, 1399.99),
(2, 8, 3, 11.99),
(3, 3, 1, 999.99),
(3, 9, 1, 25.00),
(4, 4, 3, 79.99),
(4, 10, 1, 15.00),
(5, 5, 1, 650.00),
(5, 11, 1, 849.00),
(6, 6, 1, 725.50),
(6, 12, 2, 399.00),
(7, 13, 1, 120.00),
(7, 14, 1, 110.00),
(8, 15, 1, 199.99),
(8, 16, 2, 45.00),
(9, 17, 1, 225.00),
(9, 18, 1, 130.00),
(10, 19, 3, 29.00),
(10, 20, 10, 8.99);


INSERT INTO Compra (id_proveedor, fecha) VALUES
(1, '2025-06-10'),
(2, '2025-06-15'),
(3, '2025-07-01'),
(4, '2025-07-10'),
(5, '2025-07-20'),
(6, '2025-06-25'),
(7, '2025-06-30'),
(8, '2025-07-05'),
(9, '2025-07-15'),
(10, '2025-07-25');


select * FROM producto;

SELECT * FROM proveedor;

-- **********************************************
-- Entrega nro 2 

USE TiendaGuitarras;

-- VISTAS--------------------------------------------------------

-- Vista 1
CREATE OR REPLACE VIEW VistaClientesVentas AS
SELECT c.id_cliente, c.nombre, c.apellido, v.id_venta, v.fecha
FROM Cliente c
JOIN Venta v ON c.id_cliente = v.id_cliente;

-- Vista 2
CREATE OR REPLACE VIEW VistaStockProductos AS
SELECT id_producto, nombre, stock, precio
FROM Producto;

-- Vista 3
CREATE OR REPLACE VIEW VistaDetalleVentas AS
SELECT v.id_venta, v.fecha, c.nombre AS cliente, p.nombre AS producto,
       dv.cantidad, dv.precio_unit
FROM Venta v
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN DetalleVenta dv ON v.id_venta = dv.id_venta
JOIN Producto p ON dv.id_producto = p.id_producto;

-- Vista 4
CREATE OR REPLACE VIEW VistaVentasPorEmpleado AS
SELECT e.id_empleado, e.nombre, e.apellido, COUNT(v.id_venta) AS total_ventas
FROM Empleado e
LEFT JOIN Venta v ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, e.nombre, e.apellido;

-- Vista 5
CREATE OR REPLACE VIEW VistaComprasPorProveedor AS
SELECT pr.id_proveedor, pr.nombre AS proveedor, COUNT(c.id_compra) AS total_compras
FROM Proveedor pr
LEFT JOIN Compra c ON pr.id_proveedor = c.id_proveedor
GROUP BY pr.id_proveedor, pr.nombre;


-- FUNCIONES------------------------------------------------------

DELIMITER //

CREATE FUNCTION fn_TotalVenta(p_id_venta INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(cantidad * precio_unit) INTO total
    FROM DetalleVenta
    WHERE id_venta = p_id_venta;
    RETURN IFNULL(total,0);
END;
//

CREATE FUNCTION fn_StockDisponible(p_id_producto INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT stock INTO cantidad
    FROM Producto
    WHERE id_producto = p_id_producto;
    RETURN IFNULL(cantidad,0);
END;
//

DELIMITER ;

-- STORED PROCEDURES --------------------------------------

DELIMITER //

CREATE PROCEDURE sp_RegistrarVenta(
    IN p_id_cliente INT,
    IN p_id_empleado INT,
    IN p_fecha DATE
)
BEGIN
    INSERT INTO Venta(id_cliente, id_empleado, fecha)
    VALUES(p_id_cliente, p_id_empleado, p_fecha);
END;
//

CREATE PROCEDURE sp_ActualizarStock(
    IN p_id_producto INT,
    IN p_cantidad INT
)
BEGIN
    UPDATE Producto
    SET stock = stock - p_cantidad
    WHERE id_producto = p_id_producto;
END;
//

DELIMITER ;

-- TRIGGER-------------------------------------------------------------------

DELIMITER //

CREATE TRIGGER trg_AfterVentaDetalle
AFTER INSERT ON DetalleVenta
FOR EACH ROW
BEGIN
    UPDATE Producto
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END;
//

DELIMITER ;

-- ****************************************************************
-- Probando funcuionamiento

-- VISTAS
SELECT * FROM VistaClientesVentas;
SELECT * FROM VistaStockProductos;
SELECT * FROM VistaDetalleVentas;
SELECT * FROM VistaVentasPorEmpleado;
SELECT * FROM VistaComprasPorProveedor;

-- FUNCIONES
SELECT fn_TotalVenta(1) AS Total_Venta_1;
SELECT fn_StockDisponible(1) AS Stock_Producto_1;

-- PROCEDURES
CALL sp_RegistrarVenta(1, 2, CURDATE());
CALL sp_ActualizarStock(1, 2);

SELECT * FROM Venta ORDER BY id_venta DESC LIMIT 5;
SELECT * FROM Producto WHERE id_producto = 1;

-- TRIGGER
SELECT stock FROM Producto WHERE id_producto = 1;

INSERT INTO DetalleVenta (id_venta, id_producto, cantidad, precio_unit)
VALUES (1, 1, 1, 1250.00);

SELECT stock FROM Producto WHERE id_producto = 1;
