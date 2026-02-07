CREATE OR REPLACE VIEW analytics.v_top_products AS
SELECT
    product,
    SUM(boxes_shipped) AS total_boxes,
    SUM(amount) AS total_sales,
    COUNT(*) AS transactions
FROM staging.chocolate_sales
GROUP BY product
ORDER BY total_boxes DESC
LIMIT 10;
