-- Selecciona cuenta todos los registros de la tabla 'inventarios'
SELECT COUNT(*) FROM inventarios;

-- Utiliza la funcion de agregacion AVG para calcular el precio promedio
-- De todos los productos en el campo 'precioVenta'
SELECT AVG(precioVenta) FROM inventarios;

-- Selecciona todos los campos de la tabla 'inventarios'
-- donde e lprecio de venta es mayor a 100 y la fecha de
-- fabricaion es posterior al 1 de enero de 2024.
SELECT * FROM inventarios
WHERE precioVenta > 100 AND fechafabricacion > '2024-01-01';

-- Utiliza la funcion de agregacion MIN para encontrar el precio de compra mas bajo,
-- y selecciona todos campos para que ese producto especifico.
SELECT * FROM inventarios WHERE precionCompra = (SELECT MIN(precionCompra) FROM inventarios);

-- Utiliza la funcion de agregacion SUM para calcular la cantidad total
-- de productos en el campo 'cantidadProducto'.
SELECT SUM(cantidadProducto) AS totalProductos FROM inventarios;