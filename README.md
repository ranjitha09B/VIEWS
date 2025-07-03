# VIEWS
Let's break down the SQL code and the concepts behind creating and using views in a relational database, specifically focusing on the customer and orders tables.

# 1.Overview of the Tables
# Customers Table: This table contains information about customers.
# Columns:
* id: Unique identifier for each customer.
* name: Name of the customer.
* phone_number: Contact number of the customer.
* country: Country where the customer resides.

# Orders Table: This table contains information about orders placed by customers.
# Columns:
* id: Unique identifier for each order.
* product_name: Name of the product ordered.
* order_date: Date when the order was placed.
* customer_id: Foreign key that links to the id in the customers table, indicating which customer placed the order.

# 2.Creating a View
* Purpose: This statement creates a view named customer_orders_view. A view is a virtual table that provides a way to present data from one or more tables in a specific format.
* Columns Selected: The view includes the customer's name, phone number, country, product name, and order date.
* Join Operation: The JOIN operation combines records from the customer and orders tables based on a common column, custome_id. Note that there is a typo in the column name; it should be customer_id instead of custome_id.

# 3. Retrieving Data from the View
This statement retrieves all records from the customer_orders_view. It allows users to access the combined data from the customer and orders tables without needing to write the join query each time.

# 4. Creating a Secure View
* Purpose: This statement creates another view named CUSTOMER_ORDERS_SEC. This view is likely intended for security and abstraction purposes.
* Columns Selected: It includes the customer's name, customer ID, and product name. This view does not expose sensitive information like phone numbers or order dates.
* Join Operation: Similar to the previous view, it joins the CUSTOMER and ORDERS tables based on the CUSTOME_ID column, which again contains a typo.

# 5. Retrieving Data from the Secure View
This statement retrieves all records from the CUSTOMER_ORDERS_SEC view. This allows users to access essential information without exposing sensitive data.

# Summary
* Views: They are used to simplify complex queries, provide a layer of abstraction, and enhance security by limiting the data exposed to users.
* Security: The second view (CUSTOMER_ORDERS_SEC) is designed to provide a more secure way to access customer and order information by limiting the columns returned.
