# 📊 Sales Bottleneck Analysis Case Study (SQL + Power BI)

## 🧠 Project Overview

This project focuses on analyzing regional sales data to identify **business bottlenecks, revenue leakage, and performance gaps**.

It combines:

* **SQL** → Data analysis & KPI extraction
* **Power BI** → Data visualization & dashboard

The goal is to transform raw data into **actionable business insights**.

---

## 🎯 Business Problem

The company is facing:

* 📉 Declining sales in certain regions
* ❌ High order cancellations and returns
* 💸 Revenue loss
* ⚖️ Uneven performance across sales agents

👉 Objective:
Identify root causes and provide **data-driven solutions**.

---

## 📂 Dataset Information

📁 **Dataset Name:** `RegionalSales2025.csv`

### Key Columns:

* `OrderID` – Unique order identifier
* `Date` – Transaction date
* `Region` – Sales region
* `Category` – Product category
* `SalesAgent` – Sales representative
* `CustomerID` – Customer identifier
* `OrderStatus` – Completed / Cancelled / Returned
* `TotalAmount` – Order value

---

## 🔄 Data Source & Integration

This project uses a **single CSV file as a unified data source**.

### 🔹 Data Flow:

* CSV → SQL (MySQL) for analysis
* CSV → Power BI for dashboard

### ✅ Benefits:

* Ensures **data consistency**
* Avoids mismatch between tools
* Maintains clean and simple pipeline

---

## 🛠️ Tools & Technologies

* SQL (MySQL)
* Microsoft Power BI
* Data Modeling (Basic Star Schema)
* DAX (for KPIs and measures)

---

## ⚙️ Project Workflow

1. **Data Import**

   * CSV loaded into SQL database (`SalesDB`)
   * Table created: `RegionalSales2025`

2. **SQL Analysis**

   * Queries written for KPIs & insights

3. **Power BI Development**

   * Dashboard built using same dataset
   * Interactive visuals created

4. **Insight Generation**

   * Business problems identified
   * Recommendations provided

---

## 📈 SQL Analysis

### ✔ Key Queries Performed:

* Monthly Sales Trend
* Region-wise Cancel & Return %
* Revenue Loss Analysis
* Average Order Value (AOV)
* Top 5 Sales Agents
* Category Contribution
* High Return Customers

---

## 📊 Power BI Dashboard

### 🔹 Key Visuals:

* KPI Cards → Total Sales, Revenue Loss, AOV
* 📈 Line Chart → Monthly Sales Trend
* 🌍 Heatmap → Region vs Category
* 📊 Stacked Bar → Order Status by Region
* 🏆 Bar Chart → Top Sales Agents
* 🎛️ Filters → Region, Category, Date

---

## 🔍 Key Insights

* ⚠️ Some regions have **high cancellation rates**
* 💸 Top regions contribute major **revenue loss**
* 🛒 Certain categories show **higher AOV**
* 🏆 Few agents generate majority of sales
* 🔁 Some customers frequently return products

---

## 🚀 Business Recommendations

* Improve logistics in high-cancellation regions
* Investigate reasons for product returns
* Focus on high-performing categories
* Provide training for low-performing agents
* Monitor high-return customers

---

## 📁 Project Structure

```bash
├── RegionalSales2025.csv
├── SQL_Analysis.sql
├── PowerBI_Dashboard.pbix
├── README.md
```

---

## 🧾 Sample SQL Query

```sql
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(TotalAmount) AS TotalSales
FROM RegionalSales2025
WHERE OrderStatus = 'Completed'
GROUP BY Month;
```

---

## 🎓 Learning Outcomes

* Real-world business case study execution
* SQL for data analysis
* Power BI dashboard building
* Data storytelling & visualization
* Insight-driven decision making

---

## 🏁 Conclusion

This project demonstrates how combining **SQL and Power BI** can:

* Identify business problems
* Visualize data effectively
* Support strategic decision-making

---

> “I used a single CSV as a unified data source to ensure consistency between SQL analysis and Power BI visualization. This prevents data mismatch and keeps insights aligned across tools.”

---

