-- Agrupar productos por nombres y mostrar la cantidad total disponible para cada grupo
SELECT nombre, SUM(cantidadProducto) AS totalporNombre
FROM iventarios
GROUP BY nombre;

-- Mostrar solo aquellos grupos donde la cantidad total sea mayor a 30
SELECT nombre, SUM(cantidadProducto) AS totalporNombre
FROM inventarios
GROUP BY nombre
HAVING SUM(cantidadProducto) > 30;