CREATE OR REPLACE VIEW analytics.v_top_sales_person AS
SELECT
    sales_person,
    SUM(amount) AS total_sales
FROM staging.chocolate_sales
GROUP BY sales_person
ORDER BY total_sales DESC
LIMIT 10;
