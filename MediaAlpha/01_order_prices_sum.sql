SELECT *
FROM orders
;

SELECT DISTINCT user_id,
       SUM(orders.price) OVER (PARTITION BY orders.user_id)
FROM orders
;

SELECT user_id,
       SUM(price)
FROM orders
GROUP BY user_id
;
