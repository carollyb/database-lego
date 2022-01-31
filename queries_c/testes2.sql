CREATE TABLE `Themes` (
  `id` smallint,
  `name` varchar(100),
  `parent_id` smallint
);

CREATE TABLE `Sets` (
  `set_num` varchar(20),
  `name` varchar(200),
  `year` smallint,
  `theme_id` smallint,
  `num_parts` smallint
);

CREATE TABLE `Parts` (
  `part_num` varchar(100),
  `name` varchar(200),
  `part_cat_id` smallint
);

CREATE TABLE `Part_categories` (
  `id` smallint,
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
  `id` smallint,
  `version` tinyint,
  `set_num` varchar(100)
);

CREATE TABLE `Colors` (
  `id` smallint,
  `name` varchar(100),
  `rgb` varchar(100),
  `is_trans` varchar(2)
);

