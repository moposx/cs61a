.read data.sql


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) AS average_price FROM products GROUP BY category;

-- lowest price for every item.
CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) AS price FROM inventory GROUP BY item;


-- Helper table
CREATE TABLE deal_per_item AS
  SELECT name, MIN(MSRP / rating)
  FROM products
  GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT d.name AS item, l.store AS store
  FROM deal_per_item AS d, lowest_prices AS l
  WHERE d.name = l.item
  ORDER BY d.name;


CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs)
  FROM shopping_list AS a, stores AS b
  WHERE a.store = b.store;
