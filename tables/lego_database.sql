CREATE TABLE `Themes` (
  `id` smallint PRIMARY KEY,
  `name` varchar(100),
  `parent_id` smallint
);

CREATE TABLE `Sets` (
  `set_num` varchar(20) PRIMARY KEY,
  `name` varchar(200),
  `year` smallint,
  `theme_id` smallint,
  `num_parts` smallint
);

CREATE TABLE `Parts` (
  `part_num` varchar(100) PRIMARY KEY,
  `name` varchar(200),
  `part_cat_id` smallint
);

CREATE TABLE `Part_categories` (
  `id` smallint PRIMARY KEY,
  `name` varchar(200)
);

CREATE TABLE `Inventory_sets` (
  `inventory_id` smallint,
  `set_num` varchar(100),
  `quantity` tinyint
);

CREATE TABLE `Inventory_parts` (
  `inventory_id` smallint,
  `part_num` varchar(100),
  `color_id` smallint,
  `quantity` tinyint,
  `is_spare` varchar(2)
);

CREATE TABLE `Inventories` (
  `id` smallint PRIMARY KEY,
  `version` tinyint,
  `set_num` varchar(100)
);

CREATE TABLE `Colors` (
  `id` smallint PRIMARY KEY,
  `name` varchar(100),
  `rgb` varchar(100),
  `is_trans` varchar(2)
);

ALTER TABLE `Sets` ADD FOREIGN KEY (`theme_id`) REFERENCES `Themes` (`id`);

ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`inventory_id`) REFERENCES `Inventories` (`id`);

ALTER TABLE `Inventory_sets` ADD FOREIGN KEY (`inventory_id`) REFERENCES `Inventories` (`id`);

ALTER TABLE `Inventory_sets` ADD FOREIGN KEY (`set_num`) REFERENCES `Sets` (`set_num`);

ALTER TABLE `Parts` ADD FOREIGN KEY (`part_cat_id`) REFERENCES `Part_categories` (`id`);

ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`color_id`) REFERENCES `Colors` (`id`);

ALTER TABLE `Inventory_parts` ADD FOREIGN KEY (`part_num`) REFERENCES `Parts` (`part_num`);

select * from colors;

