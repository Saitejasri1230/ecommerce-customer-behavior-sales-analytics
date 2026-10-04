# E-commerce Customer Behavior and Sales Analytics

# 1. Business Objective

The objective of this project is to analyze e-commerce transaction data and understand sales performance, revenue patterns, and product-level performance.

The analysis focuses on transforming raw transaction data into meaningful business insights through data preparation, exploratory analysis, SQL-based analysis, and an interactive Power BI dashboard.

The key business questions addressed in this project are:

* What is the overall revenue generated?
* Which products or items contribute the most revenue?
* Which products have low or no recorded revenue?
* Which months generate the highest revenue?
* How can interactive visualizations help identify important sales patterns?

## 2. Dataset Overview

The project uses the **Online Retail dataset**, containing transaction records from a UK-based online retailer.

The dataset includes information such as:

* Invoice number
* Stock code
* Product description
* Quantity
* Invoice date
* Unit price
* Customer ID
* Country

The dataset contains real-world transaction characteristics such as missing customer information, cancelled transactions, duplicate records, and transactions with negative quantities.

A revenue measure was derived from:

**Revenue = Quantity × Unit Price**

The processed data was then used for analysis and visualization in Power BI.

## 3. Data Preparation

The transaction data was reviewed and prepared before performing the analysis. The preparation process focused on improving data quality and creating the fields required for sales analysis.

The main preparation steps included:

* Reviewing the structure, data types, and completeness of the dataset.
* Identifying missing values and duplicate records.
* Converting invoice dates into a suitable date format for time-based analysis.
* Identifying cancelled transactions and negative quantities.
* Checking for zero or negative unit prices.
* Creating a revenue field using quantity multiplied by unit price.
* Using valid positive sales transactions for the primary revenue analysis.
* Preparing the processed data for visualization and business analysis in Power BI.

The original transaction data was kept separate from the processed data to maintain a clear distinction between raw and analysis-ready data.

## 4. Key Findings

The analysis and Power BI dashboard revealed the following key findings:

### 4.1 Overall Revenue

The dataset generated a total recorded revenue of **10.64M** across the analyzed transactions.

### 4.2 Highest Revenue Item

**Dotcam postage** recorded the highest revenue among the analyzed items, with total revenue of **206,248.77**.

### 4.3 Lowest Revenue Item

**Pads to match all cushions** recorded **0.00 revenue** in the analyzed data, making it the lowest-performing item based on recorded revenue.

### 4.4 Highest Revenue Month

**December** recorded the highest monthly revenue, generating **254,449.17**.

These findings provide a high-level view of overall revenue, item-level performance, and monthly sales performance. The interactive Power BI dashboard allows these results to be explored further using the available filters and visualizations.


## 5. Business Recommendations

Based on the observed sales patterns, the following actions could be considered:

### 5.1 Review High-Revenue Items

The business could further investigate high-revenue items such as **Dotcam postage** to understand their sales volume, pricing, order frequency, and contribution to overall revenue.

### 5.2 Investigate Items With No Recorded Revenue

Items such as **Pads to match all cushions**, which recorded zero revenue, could be reviewed to determine whether they are inactive products, discontinued items, newly introduced products, or products with limited demand.

### 5.3 Investigate December Performance

Since **December recorded the highest monthly revenue**, the business could examine the transactions contributing to this result and determine whether similar sales patterns occur during other periods.

### 5.4 Use Interactive Analytics for Decision-Making

The Power BI dashboard can be used to filter and compare sales performance across different periods and items, helping analysts investigate specific areas rather than relying only on overall revenue figures.

These recommendations are intended as areas for further investigation and should be validated with additional business and operational data before making decisions.


## 6. Limitations

This analysis is based on historical transaction data and therefore has several limitations:

* The analysis describes historical sales patterns but does not establish the causes behind those patterns.
* Revenue is analyzed as recorded transaction value and should not be interpreted as profit.
* Missing customer information limits the ability to perform complete customer-level analysis.
* The analysis does not include business costs such as product costs, shipping expenses, discounts, or operating expenses.
* The dataset represents a specific historical period, so the findings may not reflect current market conditions.
* Additional information such as marketing campaigns, inventory levels, customer demographics, and product availability would be required for deeper business analysis.

Further analysis could combine transaction data with additional business information to develop more detailed customer segmentation, forecasting, and predictive analytics.
