INSERT INTO staging.chocolate_sales
SELECT
    sales_person,
    country,
    product,

    -- Date: "04/01/2022" → DATE
    TO_DATE(sale_date, 'DD/MM/YYYY') AS sale_date,

    -- "$5,320.00" → 5320.00
    REPLACE(REPLACE(amount, '$', ''), ',', '')::NUMERIC(12,2) AS amount,

    -- "180" → 180
    boxes_shipped::INT
FROM raw.chocolate_sales;
