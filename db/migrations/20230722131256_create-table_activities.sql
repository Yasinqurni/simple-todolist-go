-- migrate:up
CREATE TABLE `activities` (
  `id` integer PRIMARY KEY,
  `user_id` integer,
  `title` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

ALTER TABLE `activities` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

-- migrate:down
DROP TABLE  `activities`;
