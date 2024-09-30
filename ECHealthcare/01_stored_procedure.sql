DELIMITER //

CREATE PROCEDURE update_order_price(IN order_id INT, IN new_price INT(50))
BEGIN
    # If order_id exist, update the corresponding row
    IF EXISTS (SELECT * FROM orders WHERE id = order_id) THEN
        UPDATE orders
        SET price = new_price
        WHERE id = order_id;

    # If not exist, create a new entry owned by user_id 1
    ELSE
        INSERT INTO orders (name, price, user_id)
        VALUES ('New User', new_price, 1);
    END IF;
END //

DELIMITER ;

# Stored procedure call
CALL update_order_price(7, 500000);


