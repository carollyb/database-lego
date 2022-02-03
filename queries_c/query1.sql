/*quais foram os sets relançados a partir dos anos 80 e qual o número de partes?*/
use lego;

select inventories.version,sets.name,sets.year,sets.num_parts from inventories inner join sets using(set_num) where version > 1 and sets.year > '1980';
