SELECT * FROM colors;

select count(is_trans) from colors group by is_trans having is_trans = 'f';

