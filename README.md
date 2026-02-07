# Chocolate Sales SQL Data Pipeline

An end-to-end **SQL-based data pipeline** for analyzing global chocolate sales, covering raw data ingestion, data cleaning, transformation, and analytics-ready datasets using **PostgreSQL**.

This project demonstrates how raw transactional sales data can be transformed into structured, analysis-ready tables following **data engineering best practices**.

---

## 🎯 Project Objectives

The main goals of this project are to:

- Design a structured SQL data pipeline
- Apply data cleaning and transformation techniques
- Implement schema separation (`raw`, `staging`, `analytics`)
- Build reproducible and reusable SQL workflows
- Generate analytics-ready datasets for business insights

---

## 📊 Dataset Overview

The dataset contains global chocolate sales transactions with the following attributes:

- **Sales Person** – Name of the responsible sales representative
- **Country** – Sales destination country
- **Product** – Chocolate product name
- **Transaction Date** – Date of the sale
- **Sales Amount** – Transaction value in USD
- **Boxes Shipped** – Number of boxes sold

### Data Quality Challenges

The raw dataset includes several real-world data issues:

- Currency symbols and thousand separators in numeric fields
- Dates stored as text
- Numeric values stored as strings
- Inconsistent formatting across columns

These challenges make the dataset suitable for demonstrating **data cleaning and transformation workflows** in SQL.

---
