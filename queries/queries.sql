/*1- Relação dos temas mais usados nos anos 80*/

select distinct themes.id, themes.name , count(sets.theme_id) as "Total", year from themes
inner join sets on themes.id = sets.theme_id where year between "1980" and "1989" 
group by theme_id having count(sets.theme_id) > 30 order by total desc;

/*2- Qual o ranking dos 5 sets com mais peças e em que ano foram lançados?*/

select name, num_parts, year from sets order by num_parts desc limit 5;

/*3- No inventário, quais as categorias com mais de 20.000 peças disponíveis?*/

select parts.part_num , part_categories.name, sum(quantity) as "Total"
from parts inner join inventory_parts using(part_num) 
inner join part_categories on parts.part_cat_id = part_categories.id 
group by part_cat_id having sum(quantity) > 20000 order by total desc;

/*4- Qual o ranking dos anos com mais de 100 sets lançados?*/

select  year, count(set_num) as "Total" from sets group by  year 
having count(set_num) > 100 order by total desc limit 10;

/*5- Quais os sets do tema Batman com mais de 500 peças e os anos de lançamento?*/

select sets.name,sets.year , sets.num_parts from sets inner join themes on sets.theme_id = themes.id 
where themes.name like '%batman%' and sets.num_parts > 500 order by num_parts desc;

/*6- Quais são os sets do tema Bionicle que têm o número de peças maior que a média geral dos sets?*/

select sets.name,sets.year,sets.num_parts,themes.name from sets inner join themes 
on sets.theme_id = themes.id having themes.name like 'bionicle' 
and sets.num_parts > (select avg(num_parts) from sets);

/*7- Quais foram os sets relançados a partir dos anos 80 e qual o número de partes?*/
 
select inventories.version,sets.name,sets.year,sets.num_parts from inventories 
inner join sets using(set_num) where version > 1 and sets.year > '1980'
   
/*8- Quais foram os anos de lançamento dos 15 maiores sets com tema Aeroporto?*/
 
select sets.name,sets.year,themes.name from sets inner join themes 
on sets.theme_id = themes.id having themes.name like 'airport';

/*9- quais são as cores cadastradas que não estão sendo usadas em nenhuma peça?*/

select colors.name from colors left join inventory_parts on colors.id = inventory_parts.color_id 
where inventory_parts.color_id is null;

/*10- quais os anos de lançamento dos minifigures com 60 peças no inventário?*/
   
select inventory_sets.quantity,sets.name,sets.year from inventory_sets
inner join sets
using(set_num)
where quantity = 60;