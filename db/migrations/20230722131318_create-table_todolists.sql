-- migrate:up
CREATE TABLE `todolists` (
  `id` integer PRIMARY KEY,
  `activity_id` integer,
  `title` varchar(255),
  `status` boolean,
  `date` timestamp,
  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `todolists` ADD FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`);

-- migrate:down
DROP TABLE `todolists`;
