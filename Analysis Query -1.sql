#Show all customer records
SELECT * FROM customers;

#Show total number of customers
SELECT count(*) FROM customers;

#Show transactions for Chennai market (market code for chennai is Mark001
SELECT * FROM transactions where market_code='Mark001';

#Show distrinct product codes that were sold in chennai
SELECT distinct product_code FROM transactions where market_code='Mark001';

#Show transactions where currency is US dollars
SELECT * from transactions where currency="USD";

#Show transactions in 2020 join by date table
select * from sales.transactions join sales.date on order_date=date where date.year=2020;
#or (both are correct)
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

#Show total revenue in year 2020,
select sum(sales_amount) as total_revenue from transactions inner join date on transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r";
#or
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";


#Show total revenue in year 2020, January Month,
select * from transactions;
select * from date;

select sum(sales_amount) as total_revenue from transactions inner join date on transactions.order_date=date.date where date.year=2020 and date.month_name="January";
#or
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");


#Show total revenue in year 2020 in Chennai
select sum(transactions.sales_amount) from transactions inner join date on transactions.order_date=date.year where date.year=2020 and transactions.market_code='Mark001';
#or
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";











