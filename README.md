# EcoMarket Riwi S.A.S. - Relational Database Project

## Project Description
This project designs and implements a professional relational database solution for **EcoMarket Riwi S.A.S.**. The organization previously managed its operation using a single flat Excel sheet, causing data duplication, inconsistent city names, and incorrect inventory tracking. 

This solution normalizes the data up to the Third Normal Form (3FN), eliminating errors and ensuring database integrity.

---

## Technologies
- **Database Engine:** PostgreSQL 15
- **Containerization:** Docker & Docker Compose
- **Database Tool:** DBeaver Community Edition
- **Language:** SQL (DDL and DML)

---

## Database Configuration
- **Database Name:** `bd_Laura_Neira_PuertaDeOro`
- **Naming Rule:** All tables and columns are in English and start with the prefix **`eco_`**.

---

## Project Structure
```text
├── Data/                       # Contains clean CSV data files for loading
├── Docs/                       # Contains the Entity-Relationship Diagram (ERD)
├── Dataset_EcoMarketRiwi...xlsx # Original legacy Excel file
├── DDL.sql                     # Database schema creation script
├── docker-compose.yml          # Docker container configuration setup
└── README.md                   # Project documentation
```

---

## Normalization Process
1. **First Normal Form (1FN):** Removed multi-valued data cells. Ensured atomicity and created a Primary Key (`eco_id`) for every row.
2. **Second Normal Form (2FN):** Removed partial dependencies. Separated core product profiles from individual sales transaction lines.
3. **Third Normal Form (3FN):** Removed transitive dependencies. Separated geographical locations and cities into an independent table.

---

## Entity Relationship Diagram (ERD)
The model includes the following main tables:
- `eco_cities`
- `eco_categories`
- `eco_products`
- `eco_customers`
- `eco_distribution_centers`
- `eco_inventories`
- `eco_orders`
- `eco_order_details`

*(Add your ERD image file inside the Docs/ folder and reference it below)*
![ERD Diagram](./Docs/eco_market_erd.png)

---

## Setup & Deployment Instructions

### 1. Run the Docker Container
Open your terminal in the project root folder and execute:
```bash
docker compose up -d
```

### 2. Connect via DBeaver
Create a new **PostgreSQL** connection with these parameters:
- **Host:** `localhost`
- **Port:** `5433`
- **Database:** `bd_Laura_Neira_PuertaDeOro`
- **Username:** `admin`
- **Password:** `admin123`

### 3. Database Initialization & Data Loading Sequence
Open a SQL Editor in DBeaver and execute your scripts in this exact order to prevent Foreign Key constraint errors:
1. Run **`DDL.sql`** to generate the database structure.
2. Load data into independent tables first: `eco_cities` and `eco_categories`.
3. Load data into main entities next: `eco_customers`, `eco_distribution_centers`, and `eco_products`.
4. Load operational data last: `eco_inventories`, `eco_orders`, and `eco_order_details`.

---

## SQL Query Reference
The project includes ready-to-run queries inside DBeaver for business decision-making:
- **Query 1:** Available inventory stock per individual product.
- **Query 2:** Historical log of total orders grouped by city.
- **Query 3:** Total sales revenue generated per food category.
- **Query 4:** Low stock warning for products close to running out.
- **Query 5:** Top active customers ranked by their order count.
- **Query 6:** Total economic valuation of inventory per distribution hub.

---

## Developer Information
- **Name:** Laura Neira
- **Clan:** Puerta de Oro
- **Role:** coder
- **GitHub Repository:** https://github.com/Lneiras/prueba-desempe-o-DB.git