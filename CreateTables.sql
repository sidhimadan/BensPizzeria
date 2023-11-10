CREATE TABLE "orders" (
    "row_id" int   NOT NULL,
    "order_id" varchar(10)   NOT NULL,
    "date" date   NOT NULL,
	"time" time NOT NULL,
    "item_id" varchar(10)   NOT NULL,
    "quantity" int   NOT NULL,
    "cust_id" int   NOT NULL,
    "delivery" boolean   NOT NULL,
    "add_id" int   NOT NULL,
    CONSTRAINT "pk_orders" PRIMARY KEY (
        "row_id"
     )
);

CREATE TABLE "customers" (
    "cust_id" int   NOT NULL,
    "cust_firstname" varchar(50)   NOT NULL,
    "cust_lastname" varchar(50)   NOT NULL,
    CONSTRAINT "pk_customers" PRIMARY KEY (
        "cust_id"
     )
);

CREATE TABLE "address" (
    "add_id" int   NOT NULL,
    "delivery_address1" varchar(200)   NOT NULL,
    "delivery_address2" varchar(200)   NULL,
    "delivery_city" varchar(50)   NOT NULL,
    "delivery_zipcode" varchar(20)   NOT NULL,
    CONSTRAINT "pk_address" PRIMARY KEY (
        "add_id"
     )
);

CREATE TABLE "item" (
    "item_id" varchar(10)   NOT NULL,
    "sku" varchar(20)   NOT NULL,
    "item_name" varchar(50)   NOT NULL,
    "item_cat" varchar(50)   NOT NULL,
    "item_size" varchar(20)   NOT NULL,
    "item_price" decimal(5,2)   NOT NULL,
    CONSTRAINT "pk_item" PRIMARY KEY (
        "item_id"
     )
);

CREATE TABLE "ingredient" (
    "ing_id" varchar(10)   NOT NULL,
    "ing_name" varchar(200)   NOT NULL,
    "ing_weight" int   NOT NULL,
    "ing_meas" varchar(20)   NOT NULL,
    "ing_price" decimal(5,2)   NOT NULL,
    CONSTRAINT "pk_ingredient" PRIMARY KEY (
        "ing_id"
     )
);

CREATE TABLE "recipe" (
    "row_id" int   NOT NULL,
    "recipe_id" varchar(20)   NOT NULL,
    "ing_id" varchar(10)   NOT NULL,
    "quantity" int   NOT NULL,
    CONSTRAINT "pk_recipe" PRIMARY KEY (
        "row_id"
     )
);

CREATE TABLE "inventory" (
    "inv_id" int   NOT NULL,
    "item_id" varchar(10)   NOT NULL,
    "quantity" int   NOT NULL,
    CONSTRAINT "pk_inventory" PRIMARY KEY (
        "inv_id"
     )
);

CREATE TABLE "staff" (
    "staff_id" varchar(20)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "position" varchar(100)   NOT NULL,
    "hourly_rate" decimal(5,2)   NOT NULL,
    CONSTRAINT "pk_staff" PRIMARY KEY (
        "staff_id"
     )
);

CREATE TABLE "shift" (
    "shift_id" varchar(20)   NOT NULL,
    "day_of_week" varchar(10)   NOT NULL,
    "start_time" time   NOT NULL,
    "end_time" time   NOT NULL,
    CONSTRAINT "pk_shift" PRIMARY KEY (
        "shift_id"
     )
);

CREATE TABLE "rota" (
    "row_id" int   NOT NULL,
    "rota_id" varchar(20)   NOT NULL,
    "date" date  NOT NULL,
    "shift_id" varchar(20)   NOT NULL,
    "staff_id" varchar(20)   NOT NULL,
    CONSTRAINT "pk_rota" PRIMARY KEY (
        "row_id"
     )
);
//Importing data from csv files for each table
