CREATE OR REPLACE VIEW analytics.v_monthly_sales_trend AS
SELECT
    DATE_TRUNC('month', sale_date) AS month,
    SUM(amount) AS total_sales,
    SUM(boxes_shipped) AS total_boxes,
    COUNT(*) AS transactions
FROM staging.chocolate_sales
GROUP BY month
ORDER BY month;
