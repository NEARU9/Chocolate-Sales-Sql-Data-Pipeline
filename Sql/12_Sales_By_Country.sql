CREATE OR REPLACE VIEW analytics.v_sales_per_country AS
SELECT
    country,
    SUM(amount) AS total_sales,
    SUM(boxes_shipped) AS total_boxes,
    COUNT(*) AS transactions
FROM staging.chocolate_sales
GROUP BY country
ORDER BY total_sales DESC;
