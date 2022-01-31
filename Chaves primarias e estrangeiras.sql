/*chaves primárias*/
alter table themes add primary key(id);
alter table sets add primary key(set_num);
alter table parts add primary key(part_num);
alter table part_categories add primary key(id);
alter table inventories add primary key(id);
alter table colors add primary key(id);


/*chaves estrangeiras*/
ALTER TABLE `Sets` ADD FOREIGN KEY (`theme_id`) REFERENCES `Themes` (`id`);
ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`inventory_id`) REFERENCES `Inventories` (`id`);
ALTER TABLE `Inventory_sets` ADD FOREIGN KEY (`inventory_id`) REFERENCES `Inventories` (`id`);
ALTER TABLE `Inventory_sets` ADD FOREIGN KEY (`set_num`) REFERENCES `Sets` (`set_num`);
ALTER TABLE `Parts` ADD FOREIGN KEY (`part_cat_id`) REFERENCES `Part_categories` (`id`);
ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`color_id`) REFERENCES `Colors` (`id`);
ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`part_num`) REFERENCES `Parts` (`part_num`);
