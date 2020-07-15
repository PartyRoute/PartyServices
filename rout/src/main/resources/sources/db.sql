create table category(
id serial primary key,
name VARCHAR (50) NOT NULL,
description VARCHAR (50) NOT null,
parent_id int 
);

create table entertainments(
id serial primary key,
name VARCHAR(50) NOT NULL,
description VARCHAR(50) NOT null,
start_date timestamp,
end_date timestamp,
category_id int REFERENCES category (id),
duration timestamp,
location varchar(50) not null,
address varchar(50) not null,
contact varchar(50) not null,
price decimal(50,2)
);

create table gender(
id serial primary key,
name varchar(50) not null
);


create table groups(
id serial primary key,
name varchar(50) not null,
description varchar(50)
);

create table route(
id serial primary key,
name varchar(50),
start_date timestamp not null,
end_date timestamp,
group_id int references groups (id)
);


create table rout_mapping_entertainments(
id serial primary key,
entertainments_id int references entertainments(id),
group_id  int references groups (id)
);


create table users(
id serial primary key,
first_name VARCHAR(50) NOT NULL,
last_name varchar(50) not null,
middle_name VARCHAR(50),
email VARCHAR(50) NOT NULL,
age int not null,
contact varchar(50),
gender_id int references gender(id),
location varchar(50) not null,
group_id int references groups(id)
);
