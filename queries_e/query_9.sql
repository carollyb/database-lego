use `lego`;

/*9- quais são as cores cadastradas que não estão sendo usadas em nenhuma peça?*/

select colors.name from colors left join inventory_parts on colors.id = inventory_parts.color_id 
where inventory_parts.color_id is null;