use `lego`;

/* Relação dos temas mais usados nos anos 80*/
select distinct themes.id, themes.name , count(sets.theme_id) as "Total", year from themes  
inner join sets on themes.id = sets.theme_id where year between "1980" and "1989" 
group by theme_id having count(sets.theme_id) > 30 order by total desc;