## Sales Insights Data Analysis Project
use sales;
## 1. Show all customer records
SELECT * FROM customers;

## 2. Show total number of customers
SELECT count(*) FROM sales.customers;

## 3. show total number of transactions
SELECT count(*) FROM sales.transactions;

## 4. Show transactions for Chennai market (market code for chennai is Mark001)
SELECT * from sales.transactions where market_code='Mark001';

## 5. Show distrinct product codes that were sold in chennai
SELECT distinct product_code FROM SALES.transactions where market_code = 'Mark001';

## 6. Show transactions where currency is US dollars
SELECT * FROM sales.transactions where currency = 'USD';

## 7. Show transactions in 2020 join by date table
SELECT transactions.* , date.* FROM transactions INNER JOIN date 
ON transactions.order_date = date.date where date.year=2020; 

## 8. Show total revenue in year 2020
SELECT sum(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date = date.date where date.year=2020;

## 9. Show total revenue in year 2020, January Month
SELECT sum(transactions.sales_amount) from transactions inner join date 
on transactions.order_date = date.date where date.year=2020 and date.month_name='January'
and (transactions.currency="INR\r" or transactions.currency="USD\r");

## 10. Show total revenue in year 2020 in Chennai
SELECT sum(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date = date.date where date.year=2020 and transactions.market_code='Mark001';

## 11. Show sales amount less than or equal to 0 and give count
SELECT * FROM sales.transactions WHERE sales_amount<=0;
SELECT count(*) FROM sales.transactions WHERE sales_amount<=0;
