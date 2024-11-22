# Creating database Famous fashion designers

CREATE DATABASE Famous_Fashion_Designers;

# Creating table 
CREATE TABLE Famous_Fashion_Designers (Designer_Id INT PRIMARY KEY AUTO_INCREMENT, Designer_Name TEXT, Country_of_Birth TEXT, Date_of_Birth DATE);

# Inserting Values into the table
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Yves Saint Laurent", "Algeria", "1936-08-01"); 
SELECT * FROM famous_fashion_designers;
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Coco Chanel", "France", "1883-08-19"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Donna Karan", "America", "1948-10-02"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Giorgion Armani", "Italy", "1934-07-11"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Calvin Klein", "America", "1942-11-19"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Gianni Versace", "Italy", "1946-12-02"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Christian Dior", "France", "1905-01-21"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Tom Ford", "America", "1961-08-27"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Christian Louboutin", "France", "1963-01-07"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Ralph Lauren", "America", "1939-10-14");
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Karl Lagerfeld", "Germany", "1933-09-10"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Marc Jacobs", "America", "1963-04-09"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Alexander McQueen", "United Kingdom", "1969-03-17"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Carolina Herrera", "Venezuela", "1939-01-08"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Valentino Garavani", "Italy", "1932-05-11"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Coco Chanel", "France", "1883-08-19"); 
INSERT INTO famous_fashion_designers (Designer_Name, Country_of_Birth, Date_of_Birth) VALUES ("Miuccia Prada", "Italy", "1949-05-10"); 

#Viewing the table
SELECT * FROM famous_fashion_designers;

# Deleting a duplicate

DELETE FROM famous_fashion_designers WHERE designer_id = 16;

#Viewing table again
SELECT * FROM famous_fashion_designers;

#Fashion School Table
CREATE TABLE Fashion_School (School_Id INT PRIMARY KEY, School_Name TEXT, Location TEXT, Designer_Id INT);

#Inserting table values
INSERT INTO fashion_school VALUES (1, "Did not attend fashion School", "diverse", 1);
INSERT INTO fashion_school VALUES (2, "Did not attend fashion School", "diverse", 9);
INSERT INTO fashion_school VALUES (3, "Did not attend fashion School", "diverse", 11);
INSERT INTO fashion_school VALUES (4, "Did not attend fashion School", "diverse", 6);
INSERT INTO fashion_school VALUES (5, "Did not attend fashion School", "diverse", 10);
INSERT INTO fashion_school VALUES (6, "Did not attend fashion School", "diverse", 17);
INSERT INTO fashion_school VALUES (7, "Parsons School of Designs","New York", 3);
INSERT INTO fashion_school VALUES (8, "Parsons School of Designs", "New York", 12);
INSERT INTO fashion_school VALUES (9, "Parsons School of Designs", "New York", 8);
INSERT INTO fashion_school VALUES (10, "Parisian cabaret Folies Bergère", "Paris", 9);
INSERT INTO fashion_school VALUES (11, " Chambre Syndicale de la Haute Couture", "Paris", 2);
INSERT INTO fashion_school VALUES (12, "Central Saint Martin's College of Art & Design", "London", 13);
INSERT INTO fashion_school VALUES (13, "University of Piacenza", "Italy", 4);
INSERT INTO fashion_school VALUES (14, "Fashion Institute of Technology (FIT)", "New York", 5);
INSERT INTO fashion_school VALUES (15, "Fashion Institute of Technology (FIT)", "New York", 14);
INSERT INTO fashion_school VALUES (16, " Chambre Syndicale de la Haute Couture", "Paris", 15);
INSERT INTO fashion_school VALUES (17, " École des Beaux-Arts", "Paris", 15);
INSERT INTO fashion_school VALUES (18, "  École des Sciences Politiques", "Paris", 7);

#Viewing the table
SELECT * FROM fashion_school;

#Joining the two whole tables

SELECT * FROM famous_fashion_designers JOIN fashion_school ON famous_fashion_designers.designer_id = fashion_school.designer_id;

#famous fashion designers , where they were born and where they attended fashion school (  name and location)

SELECT famous_fashion_designers.designer_name, famous_fashion_designers.country_of_birth, fashion_school.school_name, fashion_school.location FROM famous_fashion_designers INNER JOIN fashion_school ON famous_fashion_designers.designer_id = fashion_school.designer_id;
SELECT designer_name, country_of_birth, school_name, location FROM famous_fashion_designers JOIN fashion_school ON famous_fashion_designers.designer_id = fashion_school.designer_id;

#Creating a third table contataining the brands of these famous fashion designers
CREATE TABLE Fashion_Brands (Brand_id INT PRIMARY KEY AUTO_INCREMENT, Brand_name TEXT, Year_established DATE, Style_they_are_known_for TEXT, famous_fashion_designer_id INT);

#dropping fashion_brands table due to error in data type of year
DROP TABLE fashion_brands;

#Recreating  fashion_brands table
CREATE TABLE Fashion_Brands (Brand_id INT PRIMARY KEY AUTO_INCREMENT, Brand_name TEXT, Year_established YEAR, Style_they_are_known_for TEXT, famous_fashion_designer_id INT);

#Filling the table with Values
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Chanel", 1910, "Timeless elegance, tweed suits, little black dresses, and perfumes", 1);

#Viewing the fashion_brands table
SELECT * FROM fashion_brands;
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Yves Saint Laurent (YSL)", 1961, "Luxurious ready-to-wear, tuxedo jackets for women (Le Smoking), and chic, avant-garde fashion", 2);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Donna Karan New York (DKNY)", 1984, "Urban sophistication, versatile pieces for modern women, and sleek, comfortable fashion", 3);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Giorgio Armani", 1975, "Luxurious men's and women's suits, understated elegance, and clean lines.", 4);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Calvin Klein", 1968, "Minimalist designs, underwear, denim, and modern, clean aesthetics", 5);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Versace", 1978, "Bold prints, glamorous, provocative clothing, and opulent designs.", 6);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Dior", 1946, "Feminine silhouettes, the 'New Look', luxurious haute couture, and elegant evening wear", 7);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Tom Ford", 2005, "Sexy, sophisticated designs, bold menswear, and glamour-infused fashion.", 8);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Christian Louboutin", 1991, "Luxury footwear, especially signature red-soled shoes.", 9);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Ralph Lauren", 1967, "Classic American style, preppy designs, polo shirts, and luxury lifestyle collections", 10);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Karl Lagerfeld", 1984, "Modern, edgy designs, and creative direction at Chanel and Fendi", 11);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES (" Marc Jacobs", 1984, "Grunge-inspired fashion, eclectic and youthful designs", 12);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Alexander McQueen", 1992, "Dramatic, avant-garde designs, dark romanticism, and theatrical runway shows", 13);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Carolina Herrera", 1981, "Timeless, elegant designs, sophisticated evening gowns, and red carpet glamour", 14);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Valentino", 1960, "Romantic, feminine designs, signature 'Valentino red' dresses, and luxurious couture", 15);
INSERT INTO fashion_brands (Brand_name, Year_established, Style_they_are_known_for, famous_fashion_designer_id) VALUES ("Prada", 1913, "Intellectual, unconventional designs, minimalist elegance, and luxury accessories", 17);

#Joining the two whole tables

SELECT * FROM famous_fashion_designers JOIN fashion_brands ON famous_fashion_designers.designer_id = fashion_brands.famous_fashion_designer_id;

#Which year had the most brands established
SELECT year_established, COUNT(year_established) FROM fashion_brands GROUP BY Year_established;

/** Year with highest number of brands established is 1984. 
Now pulling out the brands established in the year 1984**/

SELECT Brand_id, Brand_name, Year_established FROM fashion_brands WHERE year_established = "1984";

#School with the highest number of famous designers
SELECT school_name, COUNT(school_name) FROM fashion_school GROUP BY school_name;

/** School that churned out the highest number of famous fashion is Parsons School of Designs 
Now pulling out the famous fashion designers that attended Parsons School of Designs**/

SELECT Famous_Fashion_Designers.Designer_ID, Famous_Fashion_Designers.Designer_Name, Fashion_School.School_name, Fashion_School.School_ID FROM Famous_Fashion_Designers INNER JOIN Fashion_School ON Famous_Fashion_Designers.designer_id = Fashion_School.designer_id WHERE School_name = "Parsons School of Designs";

#Note that 6 out of 16 famous designers on the list did not attend fashion school. Meaning you do not need to attend fashion school to be good at it.

/**Does the location a designer was born affect them reaching stardom? 
Pulling out the country with the highest number of designers hailing from? **/

SELECT Country_of_Birth, COUNT(Country_of_Birth) FROM famous_fashion_designers GROUP BY Country_of_Birth ORDER BY COUNT(Country_of_Birth) DESC;

/**Does the location of a fashion school affect them reaching stardom? 
Pulling out the location with the highest number of fashion schools? **/

SELECT location, COUNT(location) FROM fashion_school GROUP BY location ORDER BY COUNT(location) DESC;

SELECT 
    *
FROM
    famous_fashion_designers
        JOIN
    fashion_school ON famous_fashion_designers.designer_id = fashion_school.designer_id
        JOIN
    fashion_brands ON fashion_school.designer_id = fashion_brands.famous_fashion_designer_id;

SELECT 
    famous_fashion_designers.designer_id,
    famous_fashion_designers.designer_name,
    famous_fashion_designers.country_of_birth,
    fashion_school.school_name,
    fashion_school.location,
    fashion_brands.Brand_name,
    fashion_brands.brand_id,
    fashion_brands.year_established,
    fashion_brands.style_they_are_known_for
FROM
    famous_fashion_designers
        INNER JOIN
    fashion_school ON famous_fashion_designers.designer_id = fashion_school.designer_id
        INNER JOIN
    fashion_brands ON fashion_school.designer_id = fashion_brands.famous_fashion_designer_id;


