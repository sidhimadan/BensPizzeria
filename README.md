# BensPizzeria
Ben's Pizzeria - Project Overview
Ben’s Pizzeria is a takeout and delivery-only franchise.
The owner wants to store all client information generated to monitor the business’s performance through dashboards.  
Dashboards will overlook Order Activity, Inventory Management, and Staff Shifts.

Client Brief - Main Areas of Focus
Customer Orders
Stock Control
Staff 

Stock Control Requirements
The owner wants to know whenit’s time to order new stock.
To achieve this we need more information about:
            - what ingredients go into each pizza
            - ingredient quantity based on pizza size
            - existing stock level
We’ll assume the lead time for delivery by suppliers is the same for all ingredients.

Staff Data Requirements
The owner wants to know which staff members are working when
Based on staff salary information, how much does each pizza cost (ingredients + chefs + delivery)

Data Required - Data Collected from Customer Orders
Row ID
Order ID
Item name
Item category
Item size
Item price
Quantity
Customer first name
Customer last name
Delivery address 1
Delivery address 2
Delivery city
Delivery zip code

Dashboard 1 - Order Activity
For this, we will need the following data:
Total orders
Total sales
Total items
Average order value
Sales by category
Top selling items
Orders by hour
Sales by hour
Orders by address
Orders by delivery/pickup 

Dashboard 2 - Inventory Management
Here, we need to calculate how much inventory is being used and identify items that need reordering. We also have to calculate cost per pizza based on ingredient cost to calculate pricing and Profit/Loss. What we need:
Total quantity by ingredient
Total cost of ingredients
Calculated cost of pizza
Percentage stock remaining by ingredient

Dashboard 3 - Staff Shifts/Rota
Here, we will calculate the duration worked by each staff member using their shift start and end time.
