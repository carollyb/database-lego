use lego;

select themes.name,sets.name,inventory_sets.quantity,inventories.version from themes
inner join sets on themes.id = sets.theme_id
inner join inventory_sets using(set_num)
inner join inventories on inventory_sets.inventory_id = inventories.id;

/*usar average*/
select sets.name,sets.year,sets.num_parts,themes.name
from sets 
inner join themes 
on sets.theme_id = themes.id having themes.name like 'bionicle' and sets.num_parts > (select avg(num_parts) from sets);

/*usar left join*/
select colors.name,colors.rgb,colors.is_trans from colors left join inventory_parts on colors.id = inventory_parts.color_id where inventory_parts.color_id is null;

/*usar inventory sets - todos que têm 60 peças são minifigures, ou seja, têm 0 partes pois são bonecos indivisíveis*/
select * from inventory_sets
inner join sets
using(set_num)
where quantity between 2 and 59 order by inventory_sets.quantity desc limit 10;

/*usar inventory sets*/
select * from inventory_sets
inner join inventory_parts
using(inventory_id)
inner join sets
using(set_num)
where is_spare = "f" and inventory_sets.quantity > 1;


