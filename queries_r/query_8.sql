use `lego`;

/*8- Quais foram os anos de lançamento dos 15 maiores sets com tema Aeroporto? */
select sets.name,sets.year,themes.name from sets inner join themes 
  on sets.theme_id = themes.id having themes.name like 'airport';