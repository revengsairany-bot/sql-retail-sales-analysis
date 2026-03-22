🛒 Online Retail Sales Analysis (SQL)

📌 Project Overview

This project analyzes international retail transaction data to uncover revenue trends, customer behavior, and geographic performance using SQL.

The goal is to simulate real-world business analysis and provide actionable insights that support decision-making in a retail business.

---

🛠 Tools Used

- SQL (SQLite)
- DB Browser for SQLite
- Excel (data source)

---

📂 Dataset

- Online Retail Dataset
- Contains transactional data including:
  - Customer ID
  - Country
  - Quantity
  - Unit Price
  - Invoice data

---

📊 Key Analysis

1. Revenue by Country

SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;

📸 Sample Output

"Revenue by Country" (revenue-by-country-top10.png)

---

🧠 Business Insights

- The United Kingdom generates the overwhelming majority of total revenue, exceeding all other countries by a significant margin
- Revenue is highly concentrated in a single market, with the UK contributing over 90% of total sales
- Secondary markets such as the Netherlands and EIRE generate revenue, but at a much smaller scale
- The steep drop-off after the UK indicates limited international market penetration

---

📈 Key Finding

The business is heavily dependent on the United Kingdom, creating both a major strength and a potential risk due to lack of geographic diversification.

---

💡 Recommendations

- Expand marketing efforts in high-performing secondary markets such as the Netherlands and Germany
- Investigate why the UK significantly outperforms other regions (pricing, logistics, demand) and replicate that strategy globally
- Diversify revenue streams across multiple countries to reduce risk

---

📊 Customer Analysis

2. Top Customers by Revenue

SELECT 
    CustomerID,
    ROUND(SUM(Quantity * UnitPrice), 2) AS revenue
FROM retail
GROUP BY CustomerID
ORDER BY revenue DESC
LIMIT 10;

---

🚀 Next Steps

- Perform customer segmentation (high-value vs low-value customers)
- Analyze product-level performance
- Build a dashboard in Tableau or Power BI for visualization

---

📎 Project Value

This project demonstrates the ability to:

- Write SQL queries to analyze large datasets
- Translate raw data into meaningful business insights
- Think critically about business performance and strategy

---

🔗 Author

Revenge Sairany
Aspiring Data Analyst
