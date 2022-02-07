use `lego`;

/* Qual o ranking dos 5 sets com mais peças e em que ano foram lançados?*/
select name, num_parts, year from sets order by num_parts desc limit 5;