use `lego`

/*Quais são os sets do tema Bionicle que têm o número de peças maior que a média geral dos sets? */;

select sets.name,sets.year,sets.num_parts,themes.name from sets inner join themes 
on sets.theme_id = themes.id having themes.name like 'bionicle' 
and sets.num_parts > (select avg(num_parts) from sets)