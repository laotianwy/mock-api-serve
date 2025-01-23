-- CreateTable
CREATE TABLE `mock` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `project_name` VARCHAR(255) NOT NULL DEFAULT 'default',
    `api_url` VARCHAR(255) NOT NULL,
    `api_method` CHAR(6) NOT NULL,
    `query` VARCHAR(255) NULL,
    `response_to_mock_struct_data` JSON NOT NULL,
    `create_at` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `update_at` DATETIME(3) NOT NULL,
    `delete_at` DATETIME(3) NULL,

    INDEX `mock_project_name_api_url_api_method_idx`(`project_name`, `api_url`, `api_method`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` ENUM('1', '2') NOT NULL DEFAULT '1',
    `create_at` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `update_at` DATETIME(3) NOT NULL,
    `delete_at` DATETIME(3) NULL,
    `nick_name` VARCHAR(255) NOT NULL,
    `avator` VARCHAR(191) NOT NULL DEFAULT 'http://www.baidu.com',
    `sex` ENUM('男', '女', '未知') NOT NULL DEFAULT '未知',

    UNIQUE INDEX `user_username_key`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;