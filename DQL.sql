


SELECT 
    p.id_product,
    p.product_name,
    SUM(i.stock) AS eco_total_stock
FROM eco_products p
LEFT JOIN eco_inventory i ON p.id_product = i.id_product
GROUP BY p.id_product, p.product_name
ORDER BY eco_total_stock DESC;

-- Consulta 2 
SELECT 
    c.id_city,
    c.city_name,
    COUNT(o.id_order) AS eco_total_orders
FROM eco_city c
LEFT JOIN eco_orders o ON c.id_city = o.id_city
GROUP BY c.id_city, c.city_name
ORDER BY eco_total_orders DESC;

-- Consulta 3 
SELECT 
    cat.id_category,
    cat.category_name,
    COALESCE(SUM(od.quantity * p.unit_price), 0) AS eco_total_revenue
FROM eco_category cat
LEFT JOIN eco_products p ON cat.id_category = p.id_category
LEFT JOIN eco_order_detail od ON p.id_product = od.id_product
GROUP BY cat.id_category, cat.category_name
ORDER BY eco_total_revenue DESC;

-- Consulta 4 
SELECT 
    p.id_product,
    p.product_name,
    SUM(i.stock) AS eco_total_stock
FROM eco_products p
LEFT JOIN eco_inventory i ON p.id_product = i.id_product
GROUP BY p.id_product, p.product_name
HAVING SUM(i.stock) < 100 
ORDER BY eco_total_stock ASC;

-- Consulta 5 
SELECT 
    cust.id_client,
    cust.client_name,
    COUNT(o.id_order) AS eco_total_orders
FROM eco_clients cust
LEFT JOIN eco_orders o ON cust.id_client = o.id_client
GROUP BY cust.id_client, cust.client_name
ORDER BY eco_total_orders DESC
LIMIT 10; 

-- Consulta 6 
SELECT 
    dc.id_warehouse,
    dc.warehouse_name,
    SUM(i.stock * p.unit_price) AS eco_inventory_value
FROM eco_warehouses dc
JOIN eco_inventory i ON dc.id_warehouse = i.id_warehouse
JOIN eco_products p ON i.id_product = p.id_product
GROUP BY dc.id_warehouse, dc.warehouse_name
ORDER BY eco_inventory_value DESC;