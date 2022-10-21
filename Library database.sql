CREATE DATABASE Library_database;
USE Library_database;

CREATE TABLE faculty
(fac_id char(5) not null,
fac_name varchar(20) not null,
location varchar(20) not null,
PRIMARY KEY(fac_id)
);

INSERT INTO faculty VALUES
('EN001','Engineering','Ariviyalnagar'),
('AG002','Agriculture','Ariviyalnagar'),
('TC003','Technology','Ariviyalnagar');


CREATE TABLE student
(std_id char(10) not null,
std_name varchar(20) not null,
fac_id char(5) not null,
gender varchar(6) not null,
cont_num varchar(10),
PRIMARY KEY (std_id)
);

INSERT INTO student VALUES
('2019/E/001','Aarthy.V','EN001','female','0771234567'),
('2019/E/002','Aashifa.M.J.F','EN001','female','0701234567'),
('2019/E/003','Croos.A.A.D','EN001','male','0761234567'),
('2019/E/004','Dilushan.G','EN001','male','0751234567'),
('2019/E/005','Diluxhana.R','EN001','female','0721234567'),
('2019/E/006','Fasarath.A.R.M','EN001','male','0711234567'),
('2019/E/007','Gowshikan.N','EN001','male','0741234567'),
('2019/E/008','Issath.M.A.M','EN001','male','0781234567'),
('2019/E/009','Kumar.G.L','EN001','male','0777654321'),
('2019/E/010','Pavithran.S','EN001','male','0767654321'),
('2019/E/011','Kumar.G.L','EN001','male','0757654321'),
('2019/E/012','Rusanya.T','EN001','female','0727654321'),
('2019/E/013','Riza.M.S.I','EN001','female','0707654321'),
('2019/E/014','Vithushan.K','EN001','male','0717654321'),
('2019/E/015','Yesindan.R','EN001','male','0787654321');


CREATE TABLE staff
(staff_id char(8) not null,
staff_name varchar(20) not null,
fac_id char(5) not null,
cont_num varchar(10),
email varchar(30) not null,
PRIMARY KEY (staff_id)
);

INSERT INTO staff VALUES
('EN/L/001','Thilak.S','EN001','0772345678','thilak@eng.jfn.ac.lk'),
('AG/L/001','Ram.J','AG002','0762345678','ram@agr.jfn.ac.lk'),
('ET/L/001','Jeny.R','TC003','0752345678','jeny@tec.jfn.ac.lk'),
('BT/L/001', 'Ruban.Y','TC004','0712345678','ruban@tec.jfn.ac.lk');


CREATE TABLE book
(book_id char(12) not null,
book_title varchar(30) not null,
publisher varchar(30) ,
author varchar(20) not null,
category varchar(20),
cost int,
PRIMARY KEY (book_id)
);

INSERT INTO book VALUES
('2012/COM/001','COMPUTER ORGANIZATION','TUNA PUBLISHER','BETHANY MCLAN','COMPUTER ARCHITECTURE',4500),
('2004/ELC/003','ELECTRIC MEACHINES','PEARSON','FIN HUNTER','ELECTRICAL',3700),
('2009/MEC/041','KINEMATICS','RELX GROUP','STEPHEN LIN','MECHANICAL',5500),
('2007/CIV/013','TRANSPORT DESIGN','THOMSON REUTERS','STEVE MARTIN','TRANSPORT',3850),
('2008/COM/004','NETWORK SECURITY','HACHETTE LIVRE','JOHN CUSSLER','NETWORK',7500),
('2010/COM/006','Fundamentals of Database Systems','PEARSON','Ramez Elmasri, Shamkant B. Navathe','DATABASE', 8000);




CREATE TABLE borrow_book
(brw_id char(6) not null,
std_id char(10) not null,
book_id char(12) not null,
book_title varchar(40) not null,
brw_date date not null,
PRIMARY KEY (brw_id)
);

INSERT INTO borrow_book VALUES
('BR/001','2019/E/033','2010/COM/006','Fundamentals of Database Systems','2022-10-05'),
('BR/002','2019/E/047','2009/MEC/041','KINEMATICS','2022-10-06'),
('BR/003','2019/E/025','2007/CIV/013','TRANSPORT DESIGN','2022-10-07'),
('BR/004','2019/E/132','2012/COM/001','COMPUTER ORGANIZATION','2022-10-07');

CREATE TABLE return_book
(rtn_id char(6) not null,
std_id char(10) not null,
book_id char(12) not null,
book_title varchar(40) not null,
rtn_date date not null,
PRIMARY KEY (rtn_id)
);

INSERT INTO return_book VALUES
('RN/001','2019/E/047','2009/MEC/041','KINEMATICS','2022-10-09'),
('RN/002','2019/E/033','2010/COM/006','Fundamentals of Database Systems','2022-10-10');


