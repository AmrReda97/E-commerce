-- list of customer who have placed orders totaling more than 500$ in the past month 
-- input : datetime 
-- ouput : list of customer names , total_orders_amount 


SELECT c.first_name || ' ' || c.last_name AS full_name , sum(o.total_amount) as total_orders_amount 
FROM "Order" as o
INNER JOIN "Customer" c ON c.customer_id = o.customer_id  
WHERE o.order_date >= ('2026-10-28 18:29:16.046531+00'::timestamptz - INTERVAL '30 day')
GROUP BY full_name
HAVING sum(o.total_amount) >= 500