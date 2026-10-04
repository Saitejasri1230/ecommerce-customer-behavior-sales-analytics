import pandas as pd
from sqlalchemy import create_engine

# CSV file location
csv_path = r"C:\Users\Shyam\OneDrive\Desktop\ecommerce-sales-analytics\Data\processed\clean_sales.csv"

# Connect to MySQL
engine = create_engine(
    "mysql+pymysql://root:root@localhost:3306/ecommerce_analytics"
)

# Read CSV
df = pd.read_csv(csv_path, low_memory=False)

# Rename CSV columns to match MySQL table
df = df.rename(columns={
    "InvoiceNo": "invoice_no",
    "StockCode": "stock_code",
    "Description": "description",
    "Quantity": "quantity",
    "InvoiceDate": "invoice_date",
    "UnitPrice": "unit_price",
    "CustomerID": "customer_id",
    "Country": "country",
    "Revenue": "revenue"
})

# Import data into the existing sales table
df.to_sql(
    "sales",
    con=engine,
    if_exists="append",
    index=False
)

print("Data imported successfully!")
print("Rows imported:", len(df))