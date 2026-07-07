
-- consulta 1

SELECT 
    p.eco_product_id,
    p.eco_product_name,
    SUM(i.eco_quantity) AS eco_total_stock
FROM eco_products p
LEFT JOIN eco_inventories i ON p.eco_product_id = i.eco_product_id
GROUP BY p.eco_product_id, p.eco_product_name
ORDER BY eco_total_stock DESC;


-- Consulta 2 

SELECT 
    c.eco_city_id,
    c.eco_city_name,
    COUNT(o.eco_order_id) AS eco_total_orders
FROM eco_cities c
LEFT JOIN eco_customers cust ON c.eco_city_id = cust.eco_city_id
LEFT JOIN eco_orders o ON cust.eco_customer_id = o.eco_customer_id
GROUP BY c.eco_city_id, c.eco_city_name
ORDER BY eco_total_orders DESC;


-- Consulta 3 

SELECT 
    cat.eco_category_id,
    cat.eco_category_name,
    COALESCE(SUM(od.eco_quantity * od.eco_unit_price), 0) AS eco_total_revenue
FROM eco_categories cat
LEFT JOIN eco_products p ON cat.eco_category_id = p.eco_category_id
LEFT JOIN eco_order_details od ON p.eco_product_id = od.eco_product_id
GROUP BY cat.eco_category_id, cat.eco_category_name
ORDER BY eco_total_revenue DESC;


-- Consulta 4

SELECT 
    p.eco_product_id,
    p.eco_product_name,
    SUM(i.eco_quantity) AS eco_total_stock
FROM eco_products p
LEFT JOIN eco_inventories i ON p.eco_product_id = i.eco_product_id
GROUP BY p.eco_product_id, p.eco_product_name
HAVING SUM(i.eco_quantity) < 50 
ORDER BY eco_total_stock ASC;


-- Consulta 5 

SELECT 
    cust.eco_customer_id,
    cust.eco_customer_name,
    COUNT(o.eco_order_id) AS eco_total_orders
FROM eco_customers cust
LEFT JOIN eco_orders o ON cust.eco_customer_id = o.eco_customer_id
GROUP BY cust.eco_customer_id, cust.eco_customer_name
ORDER BY eco_total_orders DESC
LIMIT 10; -- Muestra el Top 10 de clientes más activos


-- Consulta 6

SELECT 
    dc.eco_center_id,
    dc.eco_center_name,
    SUM(i.eco_quantity * p.eco_standard_price) AS eco_inventory_value
FROM eco_distribution_centers dc
JOIN eco_inventories i ON dc.eco_center_id = i.eco_center_id
JOIN eco_products p ON i.eco_product_id = p.eco_product_id
GROUP BY dc.eco_center_id, dc.eco_center_name
ORDER BY eco_inventory_value DESC;