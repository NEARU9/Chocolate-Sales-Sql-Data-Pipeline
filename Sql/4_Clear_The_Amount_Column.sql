UPDATE raw.chocolate_sales
SET amount = REGEXP_REPLACE(amount, '[$,]', '', 'g');