create database `SQL`;
use `SQL`;

create table `employees`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
`manager_id` INT,
`salary` DECIMAL(19,2) NOT NULL DEFAULT 0,
`team_id` INT);

INSERT INTO employees (name, manager_id, salary, team_id)
VALUES
       ( 'Michael', NULL, 8000, NULL),
       ( 'George', 1, 6000, 1),
       ( 'Greg', 1, 5000, 1),
       ( 'Peter', 2 , 2000, 2),
       ( 'John', 2, 3500, 3),
       ( 'Hans', 2, 3000, 2),
       ( 'Jack', 2, 3000, 4),
       ( 'Hugh', 3, 1500, 5);


