🛒 SQL Retail Sales Analysis

📌 Project Overview

This project analyzes retail transaction data using SQL to uncover key business insights around revenue distribution, customer behavior, and market performance.

The goal is to demonstrate the ability to:

- Write efficient SQL queries
- Analyze large datasets
- Translate data into actionable business insights

---

📂 Dataset

The dataset contains transactional retail data with the following key fields:

- Country
- Quantity
- UnitPrice
- InvoiceDate
- CustomerID

---

## 🧠 Key Analysis

### 1. Revenue by Country

```sql
SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;
```

📸 Sample Output

![Revenue by Country](revenue-by-country-top10.png)
---

💡 Business Insights

- The United Kingdom generates the overwhelming majority of total revenue
- Revenue is highly concentrated in a single market, with the UK contributing over 90% of total sales
- Secondary markets such as the Netherlands and EIRE generate revenue, but at a much smaller scale
- The steep drop-off after the UK indicates limited international market penetration

---

🔑 Key Finding

The business is heavily dependent on the United Kingdom, creating both a major strength and a potential risk due to lack of diversification.

---

🚀 Recommendations

- Expand marketing efforts in high-performing secondary markets (Netherlands, Germany)
- Investigate why the UK significantly outperforms other regions (pricing, logistics, demand)
- Diversify revenue streams across multiple countries to reduce risk

---

👥 Customer Analysis

2. Top Customers by Revenue

```sql
SELECT 
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;
```

---

📈 Next Steps

- Perform customer segmentation (high-value vs low-value customers)
- Analyze product-level performance
- Build a dashboard in Tableau or Power BI for visualization

---

📊 Project Value

This project demonstrates the ability to:

- Write SQL queries to analyze large datasets
- Transform raw data into meaningful business insights
- Think critically about business performance and strategy
