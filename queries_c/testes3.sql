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
select colors.name from colors left join inventory_parts on colors.id = inventory_parts.color_id where inventory_parts.color_id is null;


