USE LEGO;

 /*No inventário, quais as categorias com mais de 20.000 peças disponíveis?*/

select parts.part_num , part_categories.name, sum(quantity) as "Total"
from parts inner join inventory_parts using(part_num)
inner join part_categories on parts.part_cat_id = part_categories.id
group by part_cat_id having sum(quantity) > 20000 order by total desc;