-- Se ingresa información a las tablas, se obtien los scripts de dbeaver



INSERT INTO public.eco_clients (client_name) VALUES
    ('Super Max'),
    ('Fresh Mart'),
    ('Mini Shop'),
    ('Eco Store'),
    ('Market One'),
    ('Food Plus'),
    ('Green Buy'),
    ('Quick Food'),
    ('Retail Co');


INSERT INTO public.eco_city (city_name) VALUES
    ('Bogotá'),
    ('Medellín'),
    ('Cali'),
    ('Barranquilla'),
    ('Cartagena'),
    ('Bucaramanga'),
    ('Pereira'),
    ('Manizales'),
    ('Cúcuta');

INSERT INTO public.eco_warehouses (warehouse_name) VALUES
	('North Center'),
	('West Center'),
	('South Hub'),
	('Coast DC'),
	('East Hub'),
	('Coffee Center');


INSERT INTO public.eco_category (category_name) VALUES
    ('Fruits'),
    ('Dairy'),
    ('Meats'),
    ('Grains'),
    ('Oil'),
    ('Vegetables');

INSERT INTO public.eco_products (product_name,id_category,unit_price) VALUES
	('Apple Gala',1,2.50),
    ('Bananas',1,1.20),
	('Milk 1L',2,3.80),
	('Chicken',3,6.50),
	('Rice',4,2.00),
	('Extra Virgin Olive Oil',5,8.90),
	('Eggs x12',2,4.20),
	('Tomato',6,1.80),
	('Lettuce',6,1.10),
	('Spaghett',4,2.30);


INSERT INTO public.eco_orders (order_code,order_date,id_client,id_city,id_warehouse) VALUES
    ('O1001','2026-05-01',1,1,1),
    ('O1002','2026-05-02',1,1,1),
    ('O1003','2026-05-02',2,2,2),
    ('O1004','2026-05-03',2,2,2),
    ('O1005','2026-05-04',3,3,3),
    ('O1006','2026-05-05',3,3,3),
    ('O1007','2026-05-06',1,4,4),
    ('O1008','2026-05-07',1,4,4),
    ('O1009','2026-05-08',4,5,4),
    ('O1010','2026-05-09',4,5,4),
    ('O1011','2026-05-10',5,6,5),
    ('O1012','2026-05-11',5,6,5),
    ('O1013','2026-05-12',9,7,6),
    ('O1014','2026-05-13',9,7,6),
    ('O1015','2026-05-14',6,8,6),
    ('O1016','2026-05-15',6,8,6),
    ('O1017','2026-05-16',7,1,1),
    ('O1018','2026-05-17',7,1,1),
    ('O1019','2026-05-18',8,9,5),
    ('O1020','2026-05-19',8,9,5);

INSERT INTO public.eco_inventory (id_product,id_warehouse,stock) VALUES
    (1,1,95),
    (2,2,165),
    (3,3,52),
    (4,4,60),
    (5,4,182),
    (6,7,36),
    (7,5,81),
    (8,5,104),
    (9,1,43),
    (10,7,127);


INSERT INTO public.eco_order_detail (id_order,id_product,quantity) VALUES
    (1,1,10),
    (2,1,5),
    (3,2,20),
    (4,2,15),
    (5,3,12),
    (6,3,8),
    (7,4,25),
    (8,4,10),
    (9,5,30),
    (10,5,18),
    (11,6,6),
    (12,6,4),
    (13,7,14),
    (14,7,9),
    (15,8,22),
    (16,8,16),
    (17,9,11),
    (18,9,7),
    (19,10,19),
    (20,10,13);

