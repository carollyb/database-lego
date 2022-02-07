use `lego`;

/*4- Qual o ranking dos anos com mais de 100 sets lançados?*/

 select  year, count(set_num) as "Total" from sets group by  year 
 having count(set_num) > 100 order by total desc limit 10;