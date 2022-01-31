/* select count(is_spare), part_num from inventory_parts group by part_num; quais partes são reserva?*/

select is_spare, part_num,parts.name from inventory_parts inner join parts using(part_num) group by part_num having is_spare = 't'; 
/*quais são os nomes das peças reservas?*/

select inventories.version,sets.name,sets.year,sets.num_parts from inventories inner join sets using(set_num) where version > 1 and sets.year > '1980';
/*quais foram os sets relançados a partir dos anos 80 e qual o número de partes?*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like 'airport';
/*quais foram os anos de lançamento dos sets com tema Aeroporto?*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like 'bionicle';
/*quais foram os anos de lançamento dos sets com tema Bionicle? - salvou o lego da falência*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like 'bohrok';
/*quais foram os anos de lançamento dos sets com tema Bohrok - as galinhas?*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like 'castle%' order by year;
/* ver as décadas - quais foram os anos de lançamento dos sets com tema medieval*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like '%kingdom%';
/*ver sobreposição*/

select sets.name,sets.year,themes.name from sets inner join themes on sets.theme_id = themes.id having themes.name like '%studios%';
/*quando foi lançado o lego do studio de steven spielberg?*/

select sets.name,sets.year,sets.set_num,themes.name from sets inner join themes on sets.theme_id = themes.id having sets.set_num like '%7890%';
/*em qual ano foi lançada a ambulancia*/

select sets.name,sets.year,sets.set_num,themes.name from sets inner join themes on sets.theme_id = themes.id having sets.set_num like '%8761%';
/*em qual ano foi lançada a rodaka*/

select sets.name,sets.year,sets.set_num,themes.name from sets inner join themes on sets.theme_id = themes.id having sets.set_num like '%6594%';
/*em qual ano foi lançado o caminhão de gasolina*/