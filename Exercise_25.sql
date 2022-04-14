# Query_1
select E.`id`,  E.`name`, E.manager_id, E.salary, E.team_id 
from `employees` AS E
where `manager_id` is NULL;

# Query_2
select E.`name`, (select `name` from `employees` where `id` = E.`manager_id`) as `managaer_name`
from `employees` AS E
where E.`manager_id` is not NULL;

# Query_3
select E.*
from `employees` as E
where E.`id` not in (select `manager_id` from `employees` where `manager_id` IS NOT NULL)
order by E.`salary` desc limit 1, 1;

# Query_4
select E.*
from `employees` as E
where E.`manager_id` is NOT  NULL
order by E.`salary` desc limit 1, 1;


# Query_5
select sum(E.`salary`) as `salary_sum`
from `employees` as E
where E.`id` not in (select `manager_id` from `employees` where `manager_id` IS NOT NULL);


# Query_6
select sum(E.`salary`) as `salary_sum`
from `employees` as E
where E.`id` in (select `manager_id` from `employees` where `manager_id` IS not NULL) and E.`manager_id` IS NOT NULL;

# Query_7
select E.`team_id` , (select count(`id`) from `employees` where E.`id` =`team_id`) as `count`
from `employees` as E
where E.`salary` > 2500;

# Query_8
ALTER TABLE `employees` 
ADD `archived` enum ('0', '1') default '0' NOT NULL ;

# Query_9
create table `company`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL);

ALTER TABLE `employees`
ADD `company_id` INT,
ADD CONSTRAINT `fk_employees_company`
FOREIGN KEY `employee`(`company_id`)
REFERENCES `company`(`id`);

# Query_10
update `employees` set `salary` = `salary` + '200'
where `manager_id` = 1;


# Query_11
DELETE FROM `employees`
WHERE `id` IN (select `id` from (SELECT E.`id` FROM `employees` AS E WHERE E.`manager_id` = 3) as D);
delete from `employees`
where `id` = 3;

# Query_12
ALTER TABLE `employees`
DROP CONSTRAINT `fk_employees_company`;
ALTER TABLE `employees`
DROP COLUMN `company_id`;
drop table `company`;