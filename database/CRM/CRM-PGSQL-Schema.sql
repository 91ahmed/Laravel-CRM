-- create database
create database crm
owner 'postgres'
encoding 'UTF8';

-- create roles table
create table if not exists "roles" 
(
	role_id serial not null,
	role_name varchar(100) not null,
	
	primary key (role_id)
);

-- create status table
create table if not exists "status"
(
	status_id serial not null,
	status_name varchar(100) not null,
	
	primary key (status_id)
);

-- create sources table
create table if not exists "sources" 
(
	source_id serial,
	source_name varchar(100) not null,
	
	primary key (source_id)
);

-- create genders table
create table if not exists "genders" 
(
	gender_id serial not null,
	gender_name varchar(50) not null,
	
	primary key (gender_id)
);

-- create countries table
create table if not exists "countries" 
(
	country_id serial not null,
	country_code varchar(20) not null,
	country_code_alpha2 varchar(2) not null,
	country_code_alpha3 varchar(3) not null,
	country_name varchar(150) not null,
	country_name_ar varchar(150) not null,

	primary key (country_id)
);

-- create companies table
create table if not exists "companies" 
(
	company_id serial,
	company_name varchar(100) not null,
	company_website varchar(150) null,-- null
	company_industry varchar(100) null,-- null
	company_email varchar(100) null,-- null
	company_phone varchar(20) null, -- null
	company_fax varchar(20) null, -- null
	company_address varchar(150) null, -- null
	company_country integer not null, -- # foreign key
	company_city varchar(100) null,-- null
	company_region varchar(100) null, -- null
	company_postal_code varchar(15) null, -- null
	company_details text null, -- null
	company_created date not null default current_date,
	company_updated timestamp null default current_timestamp , -- null
	
	constraint fk_company_country foreign key (company_country) references countries (country_id),
	
	primary key (company_id)
);

-- create users table
create table if not exists "users"
(
	user_id serial not null,
	user_first_name varchar(20) not null,
	user_last_name varchar(20) not null,
	user_full_name varchar(100) not null,
	user_gender integer not null, -- # foreign key
	user_role integer not null, -- # foreign key
	user_website varchar(150) null,  -- null
	user_phone varchar(20) null, -- null
	user_fax varchar(20) null, -- null
	user_address varchar(150) null, -- null
	user_country integer not null, -- # foreign key
	user_city varchar(100) null,-- null
	user_region varchar(100) null, -- null
	user_birth_day smallint null, -- null
	user_birth_month smallint null, -- null
	user_birth_year smallint null, -- null
	user_image varchar(100) null,	-- null
	user_postal_code varchar(15) null, -- null
	user_details text null, -- null
	user_status smallint not null default 0,
	user_created date not null default current_date,
	user_updated timestamp null default current_timestamp , -- null
	
	-- Login Info
	email varchar(80) not null UNIQUE,
	email_verified_at timestamp null default current_timestamp ,
	password CHAR(60) not null,
	remember_token varchar(100) null, -- null
	
	constraint fk_user_role foreign key (user_role) references roles (role_id),
	constraint fk_user_gender foreign key (user_gender) references genders (gender_id),
	constraint fk_user_country foreign key (user_country) references countries (country_id),
	
	primary key (user_id)
);

-- create campaigns table
create table if not exists "campaigns"
(
	campaign_id serial not null,
	campaign_name varchar(150) not null,
	campaign_start date not null,
	campaign_end date not null,
	campaign_details text null, -- null
	campaign_created date not null default current_date,
	campaign_updated timestamp null default current_timestamp , -- null
	campaign_assigned_to integer not null,

	constraint fk_campaign_assigned_to foreign key (campaign_assigned_to) references users (user_id),
	
	primary key (campaign_id)
);

-- create products table
create table if not exists "products"
(
	product_id serial not null,
	product_sku varchar(12) not null,
	product_name varchar(150) not null,
	product_price decimal(9,2) not null default 0,
	product_quantity integer not null default 0,
	product_image varchar(150) null, -- null
	product_details text null, -- null
	product_created date not null default current_date,
	product_updated timestamp null default current_timestamp , -- null
	product_assigned_to integer not null,

	constraint fk_product_assigned_to foreign key (product_assigned_to) references users (user_id),
	
	primary key (product_id)
);

-- create permissions table
create table if not exists "permissions"
(
	permission_id serial not null,
	permission_name varchar(100) not null,
	
	primary key (permission_id)
);

-- create user_permission table
create table if not exists "user_permission" 
(
	user_permission_id serial not null,
	permission_id integer not null,
	user_id integer not null,

	constraint fk_permission_id foreign key (permission_id) references permissions (permission_id) on delete cascade on update cascade,
	constraint fk_user_id foreign key (user_id) references users (user_id) on delete cascade on update cascade,
	
	primary key (user_permission_id)
);

-- create leads table
create table if not exists "leads"
(
	lead_id serial not null,
	lead_first_name varchar(20) not null,
	lead_last_name varchar(20) not null,
	lead_full_name varchar(100) not null,
	lead_company integer null, -- # foreign key
	lead_gender integer not null, -- # foreign key
	lead_email varchar(80) null UNIQUE,
	lead_website varchar(150) null,  -- null
	lead_phone varchar(20) null, -- null
	lead_fax varchar(20) null, -- null
	lead_address varchar(150) null, -- null
	lead_country integer not null, -- # foreign key
	lead_city varchar(100) null,-- null
	lead_region varchar(100) null, -- null
	lead_birth_day smallint null, -- null
	lead_birth_month smallint null, -- null
	lead_birth_year smallint null, -- null
	lead_image varchar(100) null,	-- null
	lead_postal_code varchar(15) null, -- null
	lead_details text null, -- null
	lead_status integer not null, -- # foreign key
	lead_source integer null, -- # foreign key
	lead_assigned_to integer not null, -- # foreign key
	lead_created date not null default current_date,
	lead_updated timestamp null default current_timestamp , -- null
	
	constraint fk_lead_gender foreign key (lead_gender) references genders (gender_id),
	constraint fk_lead_country foreign key (lead_country) references countries (country_id),
	constraint fk_lead_status foreign key (lead_status) references status (status_id),
	constraint fk_lead_source foreign key (lead_source) references sources (source_id),
	constraint fk_lead_assigned foreign key (lead_assigned_to) references users (user_id),
	constraint fk_lead_company foreign key (lead_company) references companies (company_id),
	
	primary key (lead_id)
);

-- create orders_status table
create table if not exists "orders_status"
(
	order_status_id serial not null,
	order_status_name varchar(50) not null UNIQUE,

	primary key (order_status_id)
);

-- create orders table
create table if not exists "orders"
(
	order_id serial not null,
	order_lead integer not null,
	order_product integer not null,
	order_quantity integer not null default 1,
	order_address varchar(150) not null,
	order_phone varchar(20) not null,
	order_details text null,
	order_created date not null default current_date,
	order_status integer not null,

	constraint fk_order_lead foreign key (order_lead) references leads (lead_id),
	constraint fk_order_product foreign key (order_product) references products (product_id),
	constraint fk_order_status foreign key (order_status) references orders_status (order_status_id) ON DELETE CASCADE,

	primary key (order_id)
);

-- create notes table
create table if not exists "notes"
(
	note_id bigserial not null,
	note_user_id integer not null, -- # foreign key
	note_lead_id integer not null, -- # foreign key
	note_content text not null,
	note_date date not null default current_date,
	
	constraint fk_note_user_id foreign key (note_user_id) references users (user_id) on delete cascade on update cascade,
	constraint fk_note_lead_id foreign key (note_lead_id) references leads (lead_id) on delete cascade on update cascade,
	
	primary key (note_id)
);

-- create replays table
create table if not exists "replays"
(
	replay_id bigserial not null,
	replay_note_id bigint not null, -- # foreign key
	replay_user_id integer not null, -- # foreign key
	replay_content text not null,
	replay_date date not null default current_date,
	
	constraint fk_replay_note_id foreign key (replay_note_id) references notes (note_id) on delete cascade on update cascade,
	constraint fk_replay_user_id foreign key (replay_user_id) references users (user_id) on delete cascade on update cascade,
	
	primary key (replay_id)
);

-- create activities_targets table
create table if not exists "activities_targets"
(
	activity_target_id serial not null,
	activity_target_name varchar(100) not null,
	
	primary key (activity_target_id)
);

-- create activities_types table
create table if not exists "activities_types"
(
	activity_type_id serial not null,
	activity_type_name varchar(100) not null,
	
	primary key (activity_type_id)
);

-- create activities_status table
create table if not exists "activities_status"
(
	activity_status_id serial not null,
	activity_status_name varchar(100) not null,
	
	primary key (activity_status_id)
);

-- create activities table
create table if not exists "activities"
(
	activity_id bigserial not null,
	
	activity_subject TEXT not null,
	activity_details text null,
	
	activity_lead integer not null, -- # foreign key
	activity_user integer not null, -- # foreign key
	
	activity_target integer not null, -- # foreign key
	activity_type integer not null, -- # foreign key
	activity_status integer not null, -- # foreign key
	
	activity_start_date date not null,
	activity_start_time time not null,
	activity_due_date date not null,
	
	activity_created date not null default current_date,
	activity_updated timestamp null default current_timestamp , -- null
	
	constraint fk_activity_user foreign key (activity_user) references users (user_id) on delete cascade on update cascade,
	constraint fk_activity_lead foreign key (activity_lead) references leads (lead_id) on delete cascade on update cascade,
	
	constraint fk_activity_target foreign key (activity_target) references activities_targets (activity_target_id),
	constraint fk_activity_type foreign key (activity_type) references activities_types (activity_type_id),
	constraint fk_activity_status foreign key (activity_status) references activities_status (activity_status_id),
	
	primary key (activity_id)
);

-- Create notifi table
create table if not exists "notifi"
(
	notifi_id bigserial not null,
	notifi_user integer not null,
	notifi_subject varchar(100) not null,
	notifi_details TEXT not null,
	notifi_link varchar(100) not null,
	notifi_status tinyint(1) not null default 0,
	notifi_time date not null default current_date,

	constraint fk_notifi_user foreign key (notifi_user) references users (user_id) on delete cascade on update cascade,

	primary key (notifi_id)
);

/*
	Statistics and Charts
	=====================
	Lead By Status
	Lead By Source
*/