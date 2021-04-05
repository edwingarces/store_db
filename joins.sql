SELECT s.name AS store_name, d.name AS department_name, p.name, p.brand, p.description, p.stock
FROM products AS p
INNER JOIN stores AS s
ON p.store_id = s.store_id
INNER JOIN departments AS d
ON p.department_id = d.department_id;

SELECT s.name AS store_name, d.name AS department_name, p.name, p.brand, p.description, p.stock
FROM products AS p
LEFT JOIN stores AS s
ON s.store_id = p.store_id
INNER JOIN departments AS d
ON d.department_id = p.department_id
WHERE p.name = 'Guitarra' AND s.store_id = 1;