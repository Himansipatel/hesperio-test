# You have the following tables with their fields:
# users: user_id, username, password, created_date
# orders: id, user_id, product_id, order_amount, order_date
# products: id, name
#
# In this test you will only be tested on Syntax and validity of the queries, there is no database system running on this laptop
#
# Write two SQL queries that will:
# - List all the users and sum their total life order amounts
#   (Expected output: user_id, username, lifetime_order_amount)
== == == == == == == == == == == == == == == == == == Answer 1:
SELECT u.user_id,
    u.username,
    SUM(o.order_amount) as lifetime_order_amount
FROM 'users' as u
    JOIN 'orders' as o ON u.user_id = o.user_id;
#
# - List all of the products and concatenate the usernames of the users who bought it
#   (Expected output: product_id, product_name, usernames) (usernames = john@packwire.com,phil@packwire.com)
== == == == == == == == == == == == == == == == == == Answer 2:
SELECT p.product_id,
    p.product_name,
    CONCAT(u.username)
FROM users u
WHERE u.user_id IN (
        SELECT p.id as product_id,
            p.name as product_name,
            o.user_id
        FROM 'products' as p
            JOIN 'orders' as o ON p.id = o.product_id
    )
GROUP BY product_id;