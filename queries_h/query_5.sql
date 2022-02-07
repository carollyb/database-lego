USE lego;

/*Quais os sets do tema Batman com mais de 500 peças e os anos de lançamento?*/

select sets.name,sets.year , sets.num_parts from sets inner join themes on sets.theme_id = themes.id
where themes.name like '%batman%' and sets.num_parts > 500 order by num_parts desc;