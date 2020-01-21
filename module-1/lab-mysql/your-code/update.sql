/*Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner.
*/
UPDATE salespersons
SET store = "Miami"
WHERE id_auto_sales = 4;

/*
Also, you received the email addresses of the three customers:
Name	Email
Pablo Picasso	ppicasso@gmail.com
Abraham Lincoln	lincoln@us.gov
Napoléon Bonaparte	hello@napoleon.me
*/
UPDATE customers SET email = "ppicasso@gmail.com" WHERE id_auto_customer = 0;
UPDATE customers SET email = "lincoln@us.gov" WHERE id_auto_customer = 1;
UPDATE customers SET email = "hello@napoleon.me" WHERE id_auto_customer = 2;