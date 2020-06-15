
-- Create user for local access.
CREATE USER 'usremployeecompany'@'localhost' IDENTIFIED BY 'pswemployeecompany';
-- Create database.
CREATE DATABASE employeecompany
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
-- Grant permissions.
GRANT SELECT, INSERT, UPDATE, DELETE ON employeecompany.* TO 'usremployeecompany'@'localhost';
-- Use database.
USE employeecompany;


CREATE TABLE  company (
id int auto_increment,
cif varchar(250)NOT NULL,
foundationYear INT NOT NULL,
name_company varchar(250)NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO company (cif,foundationYear,name_company)
VALUES
('CF15545CD',1995,'Abaela'),
('CR96654BM',2004,'Solaris'),
('CR69874BM',2001,'Ibex'),
('CR45678BM',1995,'Black Rock');



CREATE TABLE  employee (
id int auto_increment,
firstName  varchar(250)NOT NULL,
lastName   varchar(250)NOT NULL,
salary double NOT NULL,
homeWorking  boolean,
id_empresa INT,
PRIMARY KEY (id),
CONSTRAINT FK_empesa_id
FOREIGN KEY (id_empresa) REFERENCES company(id)
);
INSERT INTO employee (firstName,lastName,salary,homeWorking,id_empresa)
VALUES
('Leynor','Mendez Sena',4000,true,1),
('Sara','Perez Valencia',4000,true,2),
('Juan','Mendeza Serrano',1500,false,1),
('Alejandro','Curtis Clarke',2500,false,2),
('Yolamda','Lopez Obrero',1500,true,1),
('Andres','Rigoberto Mendoza',1500,false,2),
('Alexander','Hernandez Sena',1500,true,1),
('Alberto','Fernandez Beltrán',1500,false,2);
