

select * from actor

select * from store

select * from customer

select * from payment

SELECT * FROM payment WHERE customer_id=343; -- payment_id -> 17512, 17513, 17514
SELECT * FROM payment WHERE payment_id IN (17512, 17513, 17514);

-- For getting 5 payment ID's
SELECT * FROM payment WHERE customer_id=343; -- payment_ids: 17512, 17513, 17514, 17515, 17516
SELECT * FROM payment WHERE payment_id IN (17512, 17513, 17514, 17515, 17516);


-- 
SELECT * FROM payment WHERE customer_id=342;  --32 rows
SELECT * FROM payment WHERE customer_id=342 LIMIT 5;   -- top 5 of -> select * FROM payment WHERE  customer_id=342 ORDER BY payment_id asc
SELECT payment_id FROM payment WHERE customer_id=342 LIMIT 5;

SELECT * FROM payment WHERE payment_id IN (
	SELECT payment_id FROM payment WHERE customer_id=342
);

SELECT * FROM payment WHERE customer_id=342 

SELECT count(*) FROM payment WHERE payment_id IN (
	SELECT payment_id FROM payment WHERE customer_id=342
);

SELECT * FROM payment WHERE payment_id IN (
	SELECT payment_id FROM payment WHERE customer_id=0 LIMIT 10
);

SELECT COUNT(*) FROM payment WHERE payment_id IN (
	SELECT payment_id FROM payment WHERE customer_id=0 LIMIT 10
);



SELECT amount FROM payment WHERE payment_id IN (SELECT payment_id FROM payment WHERE amount=5.99) -- 1188 rows
SELECT amount FROM payment WHERE amount=5.99 -- 1188 rows


SELECT amount FROM payment WHERE payment_id IN (SELECT payment_id FROM payment WHERE amount>5.99) -- 2423 rows
SELECT amount FROM payment WHERE amount>5.99 -- 2423 rows