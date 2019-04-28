create database friend_finder_db;

use friend_finder_db;

create table questions (
	id int not null auto_increment,
	question varchar(500) not null,
	primary key (id)
);

create table friends (
	id int not null auto_increment,
	name varchar(50) not null,
	picture_link varchar(500) not null,
	primary key (id)
);

create table scores (
	id int not null auto_increment,
	question_id int not null,
	friend_id int not null,
	constraint foreign key (question_id) references questions(id),
	constraint foreign key (friend_id) references friends(id),
	primary key (id)
);
