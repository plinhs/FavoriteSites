CREATE DATABASE favorite_sites;

CREATE TABLE userinfo (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) unique not null,
    password varchar(255) not null
);

INSERT INTO userinfo(username, password) VALUES ("pelind", "12345");
INSERT INTO userinfo(username, password) VALUES ("denizk", "54321");
INSERT INTO userinfo(username, password) VALUES ("pinod", "pinpin");

CREATE TABLE visits (
	visit_id int not null AUTO_INCREMENT PRIMARY KEY,
    username varchar(255),
	country_name varchar(255),
    city_name varchar(255),
    year_visited int,
    season_visited varchar(10),
    best_feature varchar(255),
    comments text,
    rating int 
    check (rating between 1 and 5),
    foreign key (username) references userinfo(username)
);


CREATE TABLE sharedvisits (
	username_to varchar(255),
    visit_id int,
    username_from varchar(255)
);

 



