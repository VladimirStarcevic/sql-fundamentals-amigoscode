SELECT
    car.make,
    COUNT(*) AS num_cars,
    AVG(car.price) AS avg_price
FROM car
GROUP BY car.make
HAVING COUNT(*) > 10
ORDER BY avg_price DESC;


SELECT
    make,
    model,
    price AS original_price,
    ROUND(car.price - car.price * 0.2, 2) AS discounted_price,
    ROUND(car.price * 0.2, 2) AS discount_amount
FROM car
LIMIT 10;
