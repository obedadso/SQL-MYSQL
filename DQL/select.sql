-- Selecciona todos los campos (*) de la tabla 'iventarios' y los muestra 
SELECT * FROM inventarios;

-- Selecciona campos especificos de la tabla 'inventarios' y los muestra
SELECT nombre, cantidadproducto FROM inventarios;

-- Selecciona todos los campos (*) de la tabla 'inventarios'
-- donde la cantidad de producto (cantidadproducto) es mayor a 20.
SELECT * FROM inventarios WHERE cantidadproducto > 10;

-- Selecciona todos los campos (*) de la tabla 'inventarios'
-- Donde el nombre del producto contiene la palabra 'Monitor'.
SELECT * FROM inventarios WHERE nombre LIKE '%Monitor%';