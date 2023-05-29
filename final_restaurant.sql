DROP database if exists restaurant_management_system;
create database restaurant_management_system;
USE restaurant_management_system ;

-- -----------------------------------------------------
-- Table `restaurant_management_system`.`customer`
-- -----------------------------------------------------
CREATE TABLE customer (
  Customer_ID int not NULL auto_increment,
  name_       VARCHAR(50) NOT NULL,
  email       VARCHAR(50) NOT NULL,
  password_   VARCHAR(50) not NULL,
  address_     VARCHAR(50) ,
  street      VARCHAR(50) ,
  city        VARCHAR(40) ,
  phone       int ,
  CONSTRAINT pk_customer PRIMARY KEY (customer_ID),
  CONSTRAINT uk_ID UNIQUE (customer_ID) ,
  CONSTRAINT uk_email UNIQUE (email) 
  );
insert into customer ( name_, email, password_, street, city, phone) values ( 'Esma Cahani', 'ecahani0@google.ru', 'gTUMKy6hQ','20 Center', 'Versailles', '2752907');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Trixie McKeller', 'tmckeller1@google.com.au', 'JgD5VCNF', '99 Holy', 'Chotepe', '4696820');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Jermaine Frantz', 'jfrantz2@admin.ch', 'yKAWbTe365', '6103', 'Maradi', '1527800');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Sianna Coopman', 'scoopman3@amazon.de', 'KnhTuohFO', '3 Parkside ', 'Ban Lam Luk Ka', '6817055');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Culver Trewhela', 'ctrewhela4@paginegialle.it', 'Ye4Jzr9rY', '521 Thompson ', 'Příbor', '1729210');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Reade Postins', 'rpostins5@amazon.co.uk', 'UEK2NVK6ja', '88029 Katie Avenue', 'Paracuru', '3833575');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Jayme Munford', 'jmunford6@cmu.edu', '358vBY4c9t', '1521 Ramsey Road', 'Töysä', '3611819');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Cathee MacInherney', 'cmacinherney7@vistaprint.com', '21CfJFRpu', '2859', 'Gémeos', '8107366');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Steffane Studdard', 'sstuddard8@ebay.com', 'phUWoO', '1837 Grayhawk Drive', 'Versailles', '4664516');
insert into customer ( name_, email, password_, street, city, phone) values ( 'Marie-ann Kloska', 'mkloska9@fastcompany.com', '9an43iEH3', '2115 Mesta ', 'Ambarakaraka', '6591457');
  
  


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`orders`
-- -----------------------------------------------------
CREATE TABLE orders (
  orders_ID   int NOT NULL auto_increment ,
  Total       int NULL ,
  cashin      float  ,
  payment     VARCHAR(50),
  change_     float ,
  Customer_ID int NOT NULL ,
  CONSTRAINT pk_Orders PRIMARY KEY (orders_ID),
  CONSTRAINT fk_orders_customer foreign key (Customer_ID) references customer(Customer_ID)
  );
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 61158, 343362 ,'cash', cashin-total , 1);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 98367, 549437, 'visa', cashin-total , 2);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 61193, 850839, 'cash', cashin-total , 1);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 46984, 526753, 'visa', cashin-total , 4);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 28770, 540043, 'visa', cashin-total , 2);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 50813, 546427, 'cash', cashin-total , 6);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 18773, 663055, 'visa', cashin-total , 7);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 53966, 941273, 'cash', cashin-total , 1);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 16957, 226418, 'visa', cashin-total , 9);
insert into orders ( total, cashin, payment, change_, Customer_ID) values ( 88578, 360974, 'cash', cashin-total , 3);


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`comments`
-- -----------------------------------------------------
CREATE TABLE comments (
  comments_ID   int NOT NULL auto_increment,
  title         VARCHAR(200) ,
  description_  VARCHAR(255) , 
  status_       VARCHAR(200) ,
  image         VARCHAR(255) ,
  rate          int ,
  Customer_ID   int ,
  Orders_ID     int ,
  CONSTRAINT pk_comments PRIMARY KEY (comments_ID),
  CONSTRAINT fk_comments_customer foreign key (Customer_ID) references customer(customer_ID)
  );
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('nullam varius nulla', 'erat  sollicitudin mi sit amet   sapien non mi integer ac  duis', 'http://dummyimage.com/121x100.png/cc0000/ffffff', 7, 1, 1);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('sapien quis libero', 'nonummy integer non velit donec diam eget  ut', 'http://dummyimage.com/105x100.png/5fa2dd/ffffff', 5, 2, 2);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('ante ipsum primis', 'at nibh in hac habitasse platea   augue quam sollicitudin', 'http://dummyimage.com/207x100.png/cc0000/ffffff', 9, 1, 3);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('justo in hac habitasse platea', 'tellus nulla ut erat id elementum nullam varius', 'http://dummyimage.com/113x100.png/dddddd/000000', 3, 4, 4);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('sed augue', 'pede ullamcorper augue a suscipit nulla  ac sed vel enim', 'http://dummyimage.com/162x100.png/5fa2dd/ffffff', 5, 2, 5);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('luctus rutrum nulla tellus in', 'odio  id luctus nec  sed justo pellentesque viverra', 'http://dummyimage.com/164x100.png/cc0000/ffffff', 1, 6, 6);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('mauris eget massa', 'cum sociis natoque  et magnis dis montes nascetur ridiculus mus vivamus', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', 9, 7, 7);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('at nibh in hac', 'cras non velit nec nisi  nonummy tincidunt lacus at velit vivamus vel nulla', 'http://dummyimage.com/175x100.png/ff4444/ffffff', 4, 1, 8);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('mattis pulvinar nulla pede ullamcorper', ' quis eget elit sodales scelerisque mauris sit amet eros suspendisse', 'http://dummyimage.com/146x100.png/5fa2dd/ffffff', 3, 9, 9);
insert into comments (title, description_, image, rate, Customer_ID, Orders_ID) values ('vitae mattis nibh', 'a feugiat et eros  ac est lacinia nisi tristique fusce congue', 'http://dummyimage.com/130x100.png/5fa2dd/ffffff', 8, 3, 10);

  
-- -----------------------------------------------------
-- Table `restaurant_management_system`.`users`
-- -----------------------------------------------------
CREATE TABLE users (
  user_ID int NOT NULL ,
  name_ VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password_ VARCHAR(50),
  role VARCHAR(30) ,
  
  CONSTRAINT pk_users PRIMARY KEY (user_ID),
  CONSTRAINT users_ID UNIQUE (user_ID) ,
  CONSTRAINT users_name UNIQUE (name_) 
  );
insert into users (user_ID, name_, email, password_, role) values (1, 'Beryle', 'bgowanson0@studiopress.com', 'LPpm1cyV', 'General Manager');
insert into users (user_ID, name_, email, password_, role) values (2, 'Orelie', 'olyfield1@bloomberg.com', 'L3a4Bt8rmv', 'Line Cook');
insert into users (user_ID, name_, email, password_, role) values (3, 'Monique', 'mdiscombe2@netvibes.com', 'Nuzdb1Lt', 'Chef');
insert into users (user_ID, name_, email, password_, role) values (4, 'Dougy', 'dkollas3@blinklist.com', 'bCdGrSbET', 'Cashier');
insert into users (user_ID, name_, email, password_, role) values (5, 'Winfield', 'wmea4@homestead.com', 'V8hT2XK4', 'Kitchen Manager');
insert into users (user_ID, name_, email, password_, role) values (6, 'Genni', 'gstanyforth5@senate.gov', 'iUZQjhp0r', 'Chef');
insert into users (user_ID, name_, email, password_, role) values (7, 'Alvis', 'asellers6@goodreads.com', 'xe58v7l', 'Cashier');
insert into users (user_ID, name_, email, password_, role) values (8, 'Antoni', 'agrigoli7@dmoz.org', 'KB4l3t', 'Chef');
insert into users (user_ID, name_, email, password_, role) values (9, 'Vincent', 'vissac8@microsoft.com', '1OPeZqSA3a3', 'Cashier');
insert into users (user_ID, name_, email, password_, role) values (10, 'Alyson', 'atchaikovsky9@hc360.com', 'OPFugY', 'Dishwasher');




-- -----------------------------------------------------
-- Table `restaurant_management_system`.`menus`
-- -----------------------------------------------------
CREATE TABLE menus (
  menus_ID int NOT NULL ,
  title VARCHAR(30) NOT NULL,
  type_ VARCHAR(30) ,
  description VARCHAR(100) ,
  status_ boolean NOT NULL ,
  image VARCHAR(100) ,
  Users_ID INT(11) NOT NULL,
  CONSTRAINT pk_menus PRIMARY KEY (menus_ID),
  CONSTRAINT fk_menus_users foreign key (users_ID) references users(user_ID),
  CONSTRAINT menus UNIQUE (menus_ID) ,
  CONSTRAINT title UNIQUE (title) 
 );

-- -----------------------------------------------------
-- Table `restaurant_management_system`.`items`
-- -----------------------------------------------------
CREATE TABLE items (
  items_ID int NOT NULL ,
  title VARCHAR(30) ,
  description VARCHAR(200) ,
  status_ boolean NOT NULL,
  image VARCHAR(100) ,
  price float ,
  Itemscol VARCHAR(45) ,
  Menus_ID int NOT NULL,
  Users_ID int NOT NULL,
  CONSTRAINT items_ID PRIMARY KEY (items_ID),
  CONSTRAINT items_ID UNIQUE (items_ID) ,
  CONSTRAINT title UNIQUE (title) ,
  CONSTRAINT fk_items_Menus foreign key (Menus_ID) references Menus(menus_ID),
  CONSTRAINT fk_items_Users foreign key (Users_ID) references users(User_ID)
  );
  


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`meals`
-- -----------------------------------------------------
CREATE TABLE meals (
  meals_ID int NOT NULL ,
  title VARCHAR(30) NOT NULL,
  status_ boolean ,
  image VARCHAR(100) ,
  price float,
  Users_ID int,
  CONSTRAINT meals_ID PRIMARY KEY (meals_ID),
  CONSTRAINT title UNIQUE (title) ,
  CONSTRAINT fk_meals_users foreign key (Users_ID) references Users(user_ID)
  );


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`items_has_meals`
-- -----------------------------------------------------
CREATE TABLE items_has_meals (
  Items_ID int NOT NULL,
  Meals_ID int NOT NULL,
  discount int ,
  CONSTRAINT Meals_ID PRIMARY KEY (meals_ID,Items_ID),
  
  CONSTRAINT FK_items_has_meals foreign key (Items_ID) references items(items_ID),
  CONSTRAINT fk_items_has_meals2 foreign key (Meals_ID) references meals(meals_ID)
  );
  
  
-- -----------------------------------------------------
-- Table `restaurant_management_system`.`orders_has_items`
-- -----------------------------------------------------
CREATE TABLE orders_has_items (
  Orders_ID int NOT NULL,
  Items_ID int NOT NULL,
  CONSTRAINT Orders_ID PRIMARY KEY (Orders_ID , Items_ID),
 
  CONSTRAINT fk_orders_has_items foreign key (Orders_ID) references orders(orders_ID),
  CONSTRAINT fk_orders_has_items2 foreign key (Items_ID) references items(items_ID)
  );


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`orders_has_meals`
-- -----------------------------------------------------
CREATE TABLE orders_has_meals (
  Orders_ID int NOT NULL,
  Meals_ID int NOT NULL,
  CONSTRAINT Orders_ID PRIMARY KEY (Orders_ID,meals_ID),
 
  CONSTRAINT orders_has_meals foreign key (Orders_ID) references orders(orders_ID),
  CONSTRAINT orders_has_meals2 foreign key (Meals_ID) references meals(meals_ID)
 );


-- -----------------------------------------------------
-- Table `restaurant_management_system`.`orders_has_users`
-- -----------------------------------------------------
CREATE TABLE orders_has_users (
  Orders_ID int NOT NULL,
  Users_ID int NOT NULL,
  type_ VARCHAR(45)  ,
  created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP  ,
  updated_at TIMESTAMP NULL DEFAULT NULL ,
CONSTRAINT Orders_ID PRIMARY KEY (Orders_ID,Users_ID),
  
  CONSTRAINT orders_has_users foreign key (Orders_ID) references users(user_ID),
  CONSTRAINT orders_has_users2 foreign key (Users_ID) references orders(orders_ID)
  );


