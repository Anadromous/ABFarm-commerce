SELECT * FROM `farm-ecommerce`.order_item;
SELECT * FROM `farm-ecommerce`.customer;

ALTER TABLE `farm-ecommerce`.order_item
ADD COLUMN category_id bigint;

ALTER TABLE `farm-ecommerce`.order_item RENAME COLUMN produce_name TO product_name;