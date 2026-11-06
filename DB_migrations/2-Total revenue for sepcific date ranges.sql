SELECT COALESCE(SUM(Orders.total_amount),0) AS total_revenue , COUNT(*) as total_orders_count
From "Order" Orders 
where Orders.order_date >= '2027-5-10' AND Orders.order_date <= '2027-10-14 23:59:59' ;


-- the + interval 1 day because posgresql will calcualate until the start of the day 00:00  even if we added <= ?
-- COALESCE is used to produce the second value if the first value is null 