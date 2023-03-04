select * from sales.transactions;

select * from sales.customers;

select count(*) from sales.customers;

select * from sales.transactions where market_code='Mark001';

select distinct product_code from sales.transactions;

select currency from sales.transactions where currency='USD';

select transactions.*,date.* from transactions INNER JOIN date on transactions.order_date=date.date where date.year=2020;

select SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January";

select SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";