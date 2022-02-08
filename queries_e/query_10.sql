use `lego`;

/*10- quais os anos de lançamento dos minifigures com 60 peças no inventário?*/
   
select inventory_sets.quantity,sets.name,sets.year from inventory_sets
inner join sets
using(set_num)
where quantity = 60;