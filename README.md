📚 Library Management System (SQL Project)
 
A fully structured SQL-based Library Management System designed using PostgreSQL, demonstrating data modeling, query logic, and data governance following enterprise-grade standards.
This project simulates how real data teams manage relational systems, ensuring clean schema design, referential integrity, and data quality checks.

🧭 Project Overview

Project Title: Library Management System
Level: Intermediate
Database: PostgreSQL (library_management_system)

This project demonstrates the implementation of a complete Library Management System using SQL.
It includes creating and managing tables, performing CRUD operations, defining relationships, and executing analytical queries.
The goal is to showcase skills in database design, data manipulation, and query optimization aligning with professional data engineering and analytics practices.

Core Features:

•	Set up the Library Database: Create and populate tables for branches, employees, members, books, issued status, and return status.  
•	CRUD Operations: Perform Create, Read, Update, and Delete actions on entities.  
•	CTAS (Create Table As Select): Create new tables dynamically from existing queries.  
•	Data Validation: Identify and handle null values, duplicates, and inconsistent records.  
•	Analytical Reporting: Generate insights like category-wise rentals, branch performance, and revenue analysis.  

🖼️ Project Visualization

<p align="center">
  <img src="library_digital_banner.png" width="700">
  <br><em>System Overview – Digital Library Management Architecture</em>
</p>

🧠 Database ER Diagram

<p align="center">
  <img src="erd_diagram.png" width="600">
  <br><em>Database Schema – Entity-Relationship Diagram for Library System</em>
</p>

💡 Concept Visualization

<p align="center">
  <img src="library_environment.jpg" width="500">
  <br><em>Real-World Context – Physical Library Environment Representation</em>
</p>


A library environment where members borrow and return books, managed through an efficient, data-driven system.


🏗️ Project Structure  

sql/  
├── 001_create_tables.sql        -- Defines all entity tables  
├── 002_add_constraints.sql      -- Adds primary/foreign keys, indexes  
├── 003_sample_queries.sql       -- CRUD and analytical examples  
├── 004_views_and_reports.sql    -- Reporting views and summaries  
├── 005_data_quality_checks.sql  -- Null/duplicate/integrity validations  
├── 006_seed_data.sql            -- Inserts sample data  


⚙️ How to Run the Project:

1.	Create a new PostgreSQL database
2.	CREATE DATABASE library_management_system;
3.	Run SQL files in this order:
1.	001_create_tables.sql
2.	002_add_constraints.sql
3.	006_seed_data.sql
4.	003_sample_queries.sql
5.	004_views_and_reports.sql
6.	005_data_quality_checks.sql
4.	Validate structure
5.	\dt     -- Show tables
6.	\dv     -- Show views


📊 Skills Demonstrated:

🧱 Database Design  
•	Normalized schema (3NF)  
•	Audit columns (created_at, updated_at)  

🔗 Relationships & Constraints  
•	Primary and foreign keys  
•	Referential integrity enforcement  
•	Indexing for optimized joins  

⚡ SQL Operations  
•	CRUD operations  
•	Aggregation and grouping  
•	Business logic queries  

📈 Analytical Views & Reports  
•	Category-wise book rentals  
•	Branch performance reports  
•	Revenue summaries by author or category  

✅ Data Quality & Governance  
•	Null and duplicate detection  
•	Consistency and range validation  
•	Quality assurance queries  

🧩 Tools & Technologies  
• Tool	Purpose    
• PostgreSQL	Database engine    
• pgAdmin4	Database client    
• VS Code	SQL scripting and documentation    
• Git / GitHub	Version control and collaboration    
• Excel	Data validation and exploration    

📘 Example Use Cases  
•	Track book issues, returns, and overdue status  
•	Monitor branch performance and employee workloads  
•	Identify expensive books or popular categories  
•	Generate category-wise revenue and utilization reports  

🚀 Optional Extensions  
You can enhance this project by:  
•	Adding triggers to auto-update updated_at  
•	Creating stored procedures for issue/return transactions  
•	Building Power BI or Tableau dashboards using the SQL views  


👨‍💻  Author – Yadnyesh Thakare  
🔗  LinkedIn -linkedin.com/in/yadnyesh-thakare  
📧  thakareyadnyesh@gmail.com  

🏁 Summary:

This project applies a structured, modular SQL development approach — separating table creation, constraints, analytical queries, and data-quality checks.
It reflects strong database design, data analysis, and governance practices aligned with real-world enterprise workflows.






