-- SELECT
--   customer.email,
--   COUNT(customer.email) AS purchases
-- FROM
--   customer
--   LEFT JOIN address USING (address_id)
--   LEFT JOIN store USING (store_id)
--   LEFT JOIN staff ON store.manager_staff_id = staff.staff_id
--   LEFT JOIN payment USING (customer_id)
-- GROUP BY
--   customer.email;
-- SELECT
--   customer_id,
--   SUM(amount) * 10 as sum
-- FROM
--   payment
-- GROUP BY
--   customer_id
-- ORDER BY
--   sum DESC
-- SELECT
--   first_name || ' ' || last_name as full_name,
--   staff_id,
--   COUNT(payment_id),
--   SUM(amount) amount
-- FROM
--   payment
--   JOIN customer USING (customer_id)
-- GROUP BY
--   customer_id,
--   staff_id
-- ORDER BY
--   amount;
SELECT
  customer_id,
  COUNT(customer_id),
  SUM(amount) AS sum
FROM
  payment
GROUP BY
  customer_id
HAVING
  SUM(amount) BETWEEN 190 AND 290
ORDER BY
  sum DESC;