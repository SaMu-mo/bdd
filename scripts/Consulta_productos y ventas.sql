SELECT p.nombre, p.stock, v.cantidad
FROM productos p
JOIN ventas v ON p.codigo = v.codigo_producto
WHERE p.nombre ILIKE '%m%'
   OR p.descripcion = '0';
SELECT nombre, stock
FROM productos
WHERE codigo IN (
  SELECT codigo_producto
  FROM ventas
  WHERE cantidad = 5
);

