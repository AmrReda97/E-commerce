-- top selling prodcuts in a given month
-- input : datetime : start of the month 
-- ouput : list of products with their name,decription,category and sold_units 


select Product.name , Product.description , C.category_name , SUM(OD.quantity) AS sold_units , SUM(OD.quantity * OD.unit_price) total_revenue
from "Product" Product 
INNER JOIN "Category" C ON Product.category_id = C.category_id
INNER JOIN "Order_details" OD ON Product.product_id = OD.product_id
INNER JOIN "Order" O ON O.order_id = OD.order_id
WHERE O.order_date >= '2026-01-10 10:15:00+00'::timestamptz AND O.order_date < ('2026-01-10 10:15:00'::timestamptz + INTERVAL '30 day')
GROUP BY Product.product_id , C.category_name
ORDER BY sold_units desc 


-- select * from "Order"