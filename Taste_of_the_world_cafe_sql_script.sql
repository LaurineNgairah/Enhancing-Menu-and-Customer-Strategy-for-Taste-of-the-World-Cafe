use restaurant_db;

-- The number of items on the menu are 32
select count(*)
from menu_items;

-- Top 5 least expensive items on the menu
select item_name, category, price
from menu_items
order by price asc
limit 5;

-- Top 5 most expensive items on the menu
select item_name, category, price
from menu_items
order by price desc
limit 5;

-- Number of Italian dishes on the menu 9
select count(*)
from menu_items
where category = 'Italian';

-- The top 5 least expensive italian dishes on the menu
select item_name, category, price
from menu_items
where category = 'Italian'
order by price asc
limit 5;

-- The top 5 most expensive italian dishes on the menu
select item_name, category, price
from menu_items
where category = 'Italian'
order by price desc
limit 5;

-- Number of dishes in each category 
select category,
count(item_name) as num_of_dishes
from menu_items
group by category
order by num_of_dishes;

-- The average dish price within each category
select category, 
avg(price) as avg_price_category
from menu_items
group by category
order by avg_price_category;

-- The date range of the order details table
select min(order_date), max(order_date)
from order_details;

-- The number of unique orders made within this date range
select  count(distinct order_id )
from order_details;

-- The number of all items ordered within this date range
select count(*) 
from order_details;

-- Orders that had the most number of items
select order_id,
count(item_id) as num_of_item
from order_details
group by order_id
order by num_of_item desc;

-- Number of orders that had more than 12 items
select count(*) from 
(select order_id,
count(item_id) as num_of_item
from order_details
group by order_id
having num_of_item > 12) as num_of_orders;

-- Joining the menu_items table and order_details table
select *
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id;

-- The least ordered item and category they were in
select item_name, category, count(order_details_id) as num_purchase_per_item
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchase_per_item asc;

-- The most ordered item and category they were in 
select item_name, category, count(order_details_id) as num_purchase_per_item
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchase_per_item desc;

-- The top 5 orders that spent the most money and the categories they were in 
select order_id , sum(price) as total_spend
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc;

-- The top 5 items that brought in the most money and the categories were as follows: 
select item_name, category, sum(price) as sum_of_price_per_item
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by item_name, category
order by sum_of_price_per_item desc;

-- The top 5 orders that spent the most money 
select order_id, sum(price) as total_spend
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc;

-- View the details of the highest spend order. Which specific items were purchased
select category, count(item_id) as num_items
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

-- View the details of the top 5 highest spend orders
select category, count(item_id) as num_items
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957,330, 2675)
group by category;

-- Viewing top 5 specific order_id with their number of items ordered
select category, order_id, count(item_id) as num_items
from order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957,330, 2675)
group by order_id, category;


