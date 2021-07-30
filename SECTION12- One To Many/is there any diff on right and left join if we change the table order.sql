is there any diff on right and left join if we change the table order ?
No. doning left join on A and B  == right join on B and A

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
SELECT * FROM orders
RIGHT JOIN customers
    ON customers.id = orders.customer_id;


OR
SELECT * FROM orders
LEFT JOIN customers
    ON customers.id = orders.customer_id;
SELECT * FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id;


  Actual data remain same , just the order will be diff in final table.
