CREATE DATABASE `LEGO`;
USE `LEGO`;

SELECT *FROM `inventory_parts`;
SELECT *FROM `sets`;
SELECT *FROM `themes`;


/*TESTES
select inventory_id,  count(quantity)from inventory_parts;

select `name` from part_categories order by `name`;

select name , part_num, part_categories.name from parts 
inner join inventory_parts 
inner join part_categories 
using(part_num) on parts.part_cat_id = part_categories.id 
group by part_num;

select `name`, `num_parts`, `year` 
from sets 
order by num_parts 
desc limit 5;

select max(num_parts), `name`, `year` 
from sets;

select themes.`name`, sets.`year` 
from themes 
inner join sets 
on themes.id = sets.theme_id;

select sets.name, count(sets.theme_id) as total from sets 
inner join themes on themes.id= sets.theme_id where themes.name like '%batman%'
group by sets.name having count(sets.theme_id) order by  total desc;

*/

 
