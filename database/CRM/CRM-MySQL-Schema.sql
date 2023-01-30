-- Drop Database
DROP DATABASE IF EXISTS `crm`;

-- Create Database
CREATE DATABASE IF NOT EXISTS `crm`
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

-- Use Database
USE `crm`;

-- Create `roles` Table
CREATE TABLE IF NOT EXISTS `roles` 
(
	`role_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`role_name` varchar(100) NOT NULL,
	
	PRIMARY KEY (`role_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `status` Table
CREATE TABLE IF NOT EXISTS `status` 
(
	`status_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`status_name` varchar(100) NOT NULL,
	
	PRIMARY KEY (`status_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `sources` Table
CREATE TABLE IF NOT EXISTS `sources` 
(
	`source_id` INT UNSIGNED NULL AUTO_INCREMENT,
	`source_name` varchar(100) NOT NULL,
	
	PRIMARY KEY (`source_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `genders` Table
CREATE TABLE IF NOT EXISTS `genders` 
(
	`gender_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`gender_name` varchar(50) NOT NULL,
	
	PRIMARY KEY (`gender_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `countries` Table
CREATE TABLE IF NOT EXISTS `countries` 
(
	`country_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`country_code` varchar(20) NOT NULL,
	`country_code_alpha2` varchar(2) NOT NULL,
	`country_code_alpha3` varchar(3) NOT NULL,
	`country_name` varchar(150) NOT NULL,
	`country_name_ar` varchar(150) NOT NULL,

	PRIMARY KEY (`country_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `companies` Table
CREATE TABLE IF NOT EXISTS `companies` 
(
	`company_id` INT UNSIGNED NULL AUTO_INCREMENT,
	`company_name` varchar(100) NOT NULL,
	`company_website` varchar(150) NULL,-- NULL
	`company_industry` varchar(100) NULL,-- NULL
	`company_email` varchar(100) NULL,-- NULL
	`company_phone` VARCHAR(20) NULL, -- NULL
	`company_fax` VARCHAR(20) NULL, -- NULL
	`company_address` VARCHAR(150) NULL, -- NULL
	`company_country` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`company_city` VARCHAR(100) NULL,-- NULL
	`company_region` VARCHAR(100) NULL, -- NULL
	`company_postal_code` VARCHAR(15) NULL, -- NULL
	`company_details` LONGTEXT NULL, -- NULL
	`company_created` DATETIME DEFAULT NOW(),
	`company_updated` TIMESTAMP NULL, -- NULL
	
	CONSTRAINT fk_company_country FOREIGN KEY (`company_country`) REFERENCES `countries` (`country_id`),
	
	PRIMARY KEY (`company_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `users` Table
CREATE TABLE IF NOT EXISTS `users`
(
	`user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`user_first_name` VARCHAR(20) NOT NULL,
	`user_last_name` VARCHAR(20) NOT NULL,
	`user_full_name` VARCHAR(100) NOT NULL,
	`user_gender` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`user_role` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`user_website` VARCHAR(150) NULL,  -- NULL
	`user_phone` VARCHAR(20) NULL, -- NULL
	`user_fax` VARCHAR(20) NULL, -- NULL
	`user_address` VARCHAR(150) NULL, -- NULL
	`user_country` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`user_city` VARCHAR(100) NULL,-- NULL
	`user_region` VARCHAR(100) NULL, -- NULL
	`user_birth_day` TINYINT UNSIGNED NULL, -- NULL
	`user_birth_month` TINYINT UNSIGNED NULL, -- NULL
	`user_birth_year` SMALLINT UNSIGNED NULL, -- NULL
	`user_image` VARCHAR(100) NULL,	-- NULL
	`user_postal_code` VARCHAR(15) NULL, -- NULL
	`user_details` LONGTEXT NULL, -- NULL
	`user_status` TINYINT NOT NULL DEFAULT 0,
	`user_created` DATETIME DEFAULT NOW(),
	`user_updated` TIMESTAMP NULL, -- NULL
	
	-- Login Info
	`email` VARCHAR(80) NOT NULL UNIQUE,
	`email_verified_at` TIMESTAMP NULL,
	`password` CHAR(60) NOT NULL,
	`remember_token` VARCHAR(100) NULL, -- NULL
	
	CONSTRAINT fk_user_role FOREIGN KEY (`user_role`) REFERENCES `roles` (`role_id`),
	CONSTRAINT fk_user_gender FOREIGN KEY (`user_gender`) REFERENCES `genders` (`gender_id`),
	CONSTRAINT fk_user_country FOREIGN KEY (`user_country`) REFERENCES `countries` (`country_id`),
	
	PRIMARY KEY (`user_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `campaigns` table
CREATE TABLE IF NOT EXISTS `campaigns`
(
	`campaign_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`campaign_name` VARCHAR(150) NOT NULL,
	`campaign_start` DATE NOT NULL,
	`campaign_end` DATE NOT NULL,
	`campaign_details` LONGTEXT NULL, -- NULL
	`campaign_created` DATETIME DEFAULT NOW(),
	`campaign_updated` TIMESTAMP NULL, -- NULL
	`campaign_assigned_to` INT UNSIGNED NOT NULL,

	CONSTRAINT fk_campaign_assigned_to FOREIGN KEY (`campaign_assigned_to`) REFERENCES `users` (`user_id`),
	
	PRIMARY KEY (`campaign_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `products` table
CREATE TABLE IF NOT EXISTS `products`
(
	`product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`product_sku` VARCHAR(12) NOT NULL,
	`product_name` VARCHAR(150) NOT NULL,
	`product_price` DECIMAL(9,2) NOT NULL DEFAULT 0,
	`product_quantity` INT UNSIGNED NOT NULL DEFAULT 0,
	`product_image` VARCHAR(150) NULL, -- NULL
	`product_details` LONGTEXT NULL, -- NULL
	`product_created` DATETIME DEFAULT NOW(),
	`product_updated` TIMESTAMP NULL, -- NULL
	`product_assigned_to` INT UNSIGNED NOT NULL,

	CONSTRAINT fk_product_assigned_to FOREIGN KEY (`product_assigned_to`) REFERENCES `users` (`user_id`),
	
	PRIMARY KEY (`product_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `permissions` Table
CREATE TABLE IF NOT EXISTS `permissions` 
(
	`permission_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`permission_name` VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (`permission_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `user_permission` Table
CREATE TABLE IF NOT EXISTS `user_permission` 
(
	`user_permission_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`permission_id` INT UNSIGNED NOT NULL,
	`user_id` INT UNSIGNED NOT NULL,

	CONSTRAINT fk_permission_id FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_user_id FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	
	PRIMARY KEY (`user_permission_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `leads` Table
CREATE TABLE IF NOT EXISTS `leads`
(
	`lead_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`lead_first_name` VARCHAR(20) NOT NULL,
	`lead_last_name` VARCHAR(20) NOT NULL,
	`lead_full_name` VARCHAR(100) NOT NULL,
	`lead_company` INT UNSIGNED NULL, -- # FOREIGN KEY
	`lead_gender` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`lead_email` VARCHAR(80) NULL UNIQUE,
	`lead_website` VARCHAR(150) NULL,  -- NULL
	`lead_phone` VARCHAR(20) NULL, -- NULL
	`lead_fax` VARCHAR(20) NULL, -- NULL
	`lead_address` VARCHAR(150) NULL, -- NULL
	`lead_country` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`lead_city` VARCHAR(100) NULL,-- NULL
	`lead_region` VARCHAR(100) NULL, -- NULL
	`lead_birth_day` TINYINT UNSIGNED NULL, -- NULL
	`lead_birth_month` TINYINT UNSIGNED NULL, -- NULL
	`lead_birth_year` SMALLINT UNSIGNED NULL, -- NULL
	`lead_image` VARCHAR(100) NULL,	-- NULL
	`lead_postal_code` VARCHAR(15) NULL, -- NULL
	`lead_details` LONGTEXT NULL, -- NULL
	`lead_status` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`lead_source` INT UNSIGNED NULL, -- # FOREIGN KEY
	`lead_assigned_to` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`lead_created` DATETIME DEFAULT NOW(),
	`lead_updated` TIMESTAMP NULL, -- NULL
	
	CONSTRAINT fk_lead_gender FOREIGN KEY (`lead_gender`) REFERENCES `genders` (`gender_id`),
	CONSTRAINT fk_lead_country FOREIGN KEY (`lead_country`) REFERENCES `countries` (`country_id`),
	CONSTRAINT fk_lead_status FOREIGN KEY (`lead_status`) REFERENCES `status` (`status_id`),
	CONSTRAINT fk_lead_source FOREIGN KEY (`lead_source`) REFERENCES `sources` (`source_id`),
	CONSTRAINT fk_lead_assigned FOREIGN KEY (`lead_assigned_to`) REFERENCES `users` (`user_id`),
	CONSTRAINT fk_lead_company FOREIGN KEY (`lead_company`) REFERENCES `companies` (`company_id`),
	
	PRIMARY KEY (`lead_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `orders_status` table
CREATE TABLE IF NOT EXISTS `orders_status`
(
	`order_status_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`order_status_name` VARCHAR(50) NOT NULL UNIQUE,

	PRIMARY KEY (`order_status_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;


-- Create `orders` table
CREATE TABLE IF NOT EXISTS `orders`
(
	`order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`order_lead` INT UNSIGNED NOT NULL,
	`order_product` INT UNSIGNED NOT NULL,
	`order_quantity` INT UNSIGNED NOT NULL DEFAULT 1,
	`order_address` VARCHAR(150) NOT NULL,
	`order_phone` VARCHAR(20) NOT NULL,
	`order_details` LONGTEXT NULL,
	`order_created` DATETIME DEFAULT NOW(),
	`order_status` INT UNSIGNED NOT NULL,

	CONSTRAINT fk_order_lead FOREIGN KEY (`order_lead`) REFERENCES `leads` (`lead_id`),
	CONSTRAINT fk_order_product FOREIGN KEY (`order_product`) REFERENCES `products` (`product_id`),
	CONSTRAINT fk_order_status FOREIGN KEY (`order_status`) REFERENCES `orders_status` (`order_status_id`) ON DELETE CASCADE,

	PRIMARY KEY (`order_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `notes` Table
CREATE TABLE IF NOT EXISTS `notes`
(
	`note_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`note_user_id` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`note_lead_id` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`note_content` LONGTEXT NOT NULL,
	`note_date` DATETIME DEFAULT NOW(),
	
	CONSTRAINT fk_note_user_id FOREIGN KEY (`note_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_note_lead_id FOREIGN KEY (`note_lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	
	PRIMARY KEY (`note_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `replays` Table
CREATE TABLE IF NOT EXISTS `replays`
(
	`replay_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`replay_note_id` BIGINT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`replay_user_id` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`replay_content` LONGTEXT NOT NULL,
	`replay_date` DATETIME DEFAULT NOW(),
	
	CONSTRAINT fk_replay_note_id FOREIGN KEY (`replay_note_id`) REFERENCES `notes` (`note_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_replay_user_id FOREIGN KEY (`replay_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	
	PRIMARY KEY (`replay_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `activities_targets` Table
CREATE TABLE IF NOT EXISTS `activities_targets`
(
	`activity_target_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`activity_target_name` VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (`activity_target_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `activities_types` Table
CREATE TABLE IF NOT EXISTS `activities_types`
(
	`activity_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`activity_type_name` VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (`activity_type_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `activities_status` Table
CREATE TABLE IF NOT EXISTS `activities_status`
(
	`activity_status_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`activity_status_name` VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (`activity_status_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

-- Create `activities` Table
CREATE TABLE IF NOT EXISTS `activities`
(
	`activity_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	
	`activity_subject` TEXT NOT NULL,
	`activity_details` LONGTEXT NULL,
	
	`activity_lead` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`activity_user` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	
	`activity_target` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`activity_type` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	`activity_status` INT UNSIGNED NOT NULL, -- # FOREIGN KEY
	
	`activity_start_date` DATE NOT NULL,
	`activity_start_time` TIME NOT NULL,
	`activity_due_date` DATE NOT NULL,
	
	`activity_created` DATETIME DEFAULT NOW(),
	`activity_updated` TIMESTAMP NULL, -- NULL
	
	CONSTRAINT fk_activity_user FOREIGN KEY (`activity_user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_activity_lead FOREIGN KEY (`activity_lead`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CONSTRAINT fk_activity_target FOREIGN KEY (`activity_target`) REFERENCES `activities_targets` (`activity_target_id`),
	CONSTRAINT fk_activity_type FOREIGN KEY (`activity_type`) REFERENCES `activities_types` (`activity_type_id`),
	CONSTRAINT fk_activity_status FOREIGN KEY (`activity_status`) REFERENCES `activities_status` (`activity_status_id`),
	
	PRIMARY KEY (`activity_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

create table if not exists `notifi`
(
	`notifi_id` BIGINT not null AUTO_INCREMENT,
	`notifi_user` integer UNSIGNED not null,
	`notifi_subject` varchar(100) not null,
	`notifi_details` TEXT not null,
	`notifi_link` varchar(100) not null,
	`notifi_status` tinyint(1) not null default 0,
	`notifi_time` DATETIME DEFAULT NOW(),

	constraint fk_notifi_user foreign key (`notifi_user`) references `users` (`user_id`) on delete cascade on update cascade,

	primary key (`notifi_id`)
)
	ENGINE innoDB
	DEFAULT CHARACTER SET utf8mb4
	DEFAULT COLLATE utf8mb4_general_ci
	AUTO_INCREMENT 1
;

/*
	Statistics and Charts
	=====================
	Lead By Status
	Lead By Source
*/