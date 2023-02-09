INSERT INTO user (user_email, user_password, user_name, user_lastname, user_birthdate, user_signindate, user_phone_number, user_is_verified, user_roles, user_vat, user_pro, user_pro_company_name, user_pro_duns)
VALUES
("Brent8@hotmail.com", "1CI11jD7VTMbfzd", "Shayna", "Frami", "1954-2-1", "2022-9-1", "+33 28 447 09 71", true, "5", "20", true, "Schulist, Bayer and Reynolds", '26955258'),
("Noe_Lebsack60@gmail.com", "cVNuKpVrRD5OJCm", "Gideon", "Ondricka", "1950-10-5", "2022-1-6", "+33 79 421 57 90", true, "5", "20", true, "Nolan Inc", '95299107'),
("Teresa_Franecki@yahoo.com", "rcjdb5qfswBBjSc", "Monique", "Hoppe", "1943-9-1", "2021-11-1", "+33 47 340 30 19", true, "3", "20", false, null, null),
("Ansley_Stanton64@yahoo.com", "4PGfOxZP2WFvXMu", "Lafayette", "Abernathy", "1961-9-2", "2022-6-1", "+33 29 476 11 49", false, "3", "20", true, "Mohr - Hoeger", '19121040'),
("Blake_Dietrich@gmail.com", "QJEhRXRwWIhaGb_", "Casandra", "Stoltenberg", "1999-2-2", "2022-9-3", "+33 31 670 19 19", true, "2", "20", true, "Yost - Nicolas", '87199882');

INSERT INTO category (category_name) Values 
("Bowed Strings"),
("Woodwind"),
("Brass Instruments"),
("Percussions"),
("Keyboards"),
("Guitar");

INSERT INTO supplier (supplier_name) Values 
("Becker, Kshlerin and Anderson"),
("Swift, Schowalter and Koelpin"),
("Howe LLC"),
("Prosacco LLC"),
("Kling Group");

INSERT INTO address (address_street, address_country, address_zipcode, address_city)
VALUES
("4703 Kozey Ridges", "Botswana", "7545", "Augustuscester" ) ,
("1380 McCullough Ports", "Tonga", "7880", "Bashirianstead" ) ,
("918 Dexter Viaduct", "Russian Federation", "5465", "Grand Forks" ) ,
("51261 Emard Unions", "Svalbard & Jan Mayen Islands", "9373", "Hershelhaven" ) ,
("64596 Weimann Lakes", "Suriname", "0803", "West Ruthe" );

INSERT INTO cart ( cart_quantity,	cart_user_id )
VALUES
(4, 2),
(2,4),
(3,5),
(4,1);

INSERT INTO product (product_supplier_id, product_category_id, product_name, product_description, product_reference,  product_price, product_discount,  product_stock_quantity)
VALUES
(1, 3,  "Fender Jaguar Telecaster","Electric Guitar Volume and tone control Vintage tuners Sonic Blue", "ER6VDB", 1199 , 20, 3  ),
(4, 6, "Premier drum set 1960 red sparkle", " a 20 bass drum, a 12 tom, and a 16 floor tom.", "FS78TR", 4500, 15, 1),
(3, 3,"Moon and Stars Martin trumpet", " A model T3460 “Committee” trumpet with a midnight blue epoxy body and gilt moon and stars decorations, commissioned by jazz legend Miles Davis","OB67QR", 25000, 45, 1 ),
(2, 2, "Jinx's Pow Pow " , "A machine gun of her own design, this would be Jinx's primary weapon during her usual escapades around Piltover and Zaun", "JX24PZ", 400, null, null),
(1, 5, "Dark moon Greatsword", "Raise the sword aloft, bathing it in the light of the dark moon.","ERDS3", 250, null, 1);


INSERT INTO `order` (  order_date, order_shipped,	order_billing_date,	order_payment_method,	order_pay,	order_billing_address_id, order_delivery_address_id, order_user_id 	)
VALUES
('2022-9-1', true, '2022-9-1', 'card', true, 2, 2, 4 ),
('2021-5-24', true, '2021-6-1', 'card', true, 1, 3, 5 ),
('2022-10-4', false, '2022-10-4', null, false, 2, 2, 4 ),
('2022-7-12', false, '2022-9-1', 'card', true, 4, 1, 3 ),
('2022-7-29', true, '2022-9-1', 'card', true, 5, 5, 2 );


INSERT INTO  order_details ( order_details_quantity, 	order_details_unit_price, 	order_details_additional_discount, 	order_details_order_id, order_details_product_id )
VALUES
(2,'800', null , 1, 4),
(1,'4500', 0.15 , 2, 2),
(2,'400', 0.30 , 3, 1),
(3,'3597', null , 4, 5),
(1,'25000', null, 5, 3);


INSERT INTO order_delivery ( order_delivery_date, order_delivery_shipment, order_delivery_bill, order_delivery_order_id	)
VALUES
('2022-9-1', '2022-8-25', '2022-9-1', 1),
('2022-8-4', '2022-8-25', '2022-9-1', 3),
('2022-10-8', '2022-8-25', '2022-7-6', 4),
('2022-8-1', '2022-10-20', '2022-9-1', 5),
('2022-9-6', '2022-8-25', '2022-9-1', 2);


INSERT INTO image (image_title, image_path , image_product_id )
VALUES 
('jaguar', "https://upload.wikimedia.org/wikipedia/commons/b/be/Fender_Jaguars.jpg", 1),
('Premier',"https://upload.wikimedia.org/wikipedia/commons/4/4f/Pictures_of_Lily_drumkit.jpg", 2),
('Stars', "https://upload.wikimedia.org/wikipedia/commons/d/d1/Miles_Davis_1984.jpg?uselang=fr", 3),
('POWPOW', "https://static.wikia.nocookie.net/leagueoflegends/images/b/b1/Jinx_Arcane_Concept_02.jpg/revision/latest/scale-to-width-down/1000?cb=20220107192712",4),
('Moon',"https://eldenring.wiki.fextralife.com/file/Elden-Ring/dark_moon_greatsword_weapon_elden_ring_wiki_guide_200px.png", 5);

INSERT INTO live_in (live_in_user_id, live_in_address_id)
VALUES 
(1,3),
(2,4),
(3,1),
(4,5),
(5,2);

INSERT INTO delivered ( delivered_order_details_id, 	delivered_order_delivery_id, 	delivered_order_delivery_quantity)
VALUES 
(1,3, 1),
(2,4, 3),
(3,1, 4),
(4,5, 6),
(5,2, 3);


INSERT INTO contained (contained_product_id, contained_cart_id )
VALUES 
(2,1),
(3,2),
(4,3),
(1,4);
