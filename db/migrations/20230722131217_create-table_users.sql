-- migrate:up
CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `code` integer,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

-- migrate:down
DROP TABLE `users`;