
//===========book table=========================
create table book (book_id int not null AUTO_INCREMENT ,book_title varchar(30) not null,
book_author varchar(20) not null,book_edition varchar(10),book_publisher varchar(15) not null,
book_arrival_date varchar(10),book_price double(5,3),book_category varchar(10),PRIMARY KEY(book_id));