--
-- Dumping data for table status
--
INSERT INTO status (status_id, status_name) VALUES 
(1, 'cold'),
(2, 'attempted to'),
(3, 'contact in future'),
(4, 'contacted'),
(5, 'hot'),
(6, 'junk lead'),
(7, 'lost lead'),
(8, 'not contacted'),
(9, 'pre qualified'),
(10, 'qualified'),
(11, 'warm');

--
-- Dumping data for table sources
--
INSERT INTO sources (source_id, source_name) VALUES 
(1, 'conference'),
(2, 'website'),
(3, 'facebook'),
(4, 'existing customer');

--
-- Dumping data for table orders_status
--
INSERT INTO orders_status (order_status_id, order_status_name) VALUES 
(1, 'pending'),
(2, 'shipped'),
(3, 'delivered'),
(4, 'returned'),
(5, 'cancelled'),
(6, 'refunded');

--
-- Dumping data for table roles
--
INSERT INTO roles (role_id, role_name) VALUES 
(1, 'sales manager'),
(2, 'sales representatives'),
(3, 'customer support representative'),
(4, 'marketing manager'),
(5, 'CFO'),
(6, 'sales');

--
-- Dumping data for table permissions
--
INSERT INTO permissions (permission_id, permission_name) VALUES 
(1, 'create'),
(2, 'read'),
(3, 'update'),
(4, 'delete');

--
-- Dumping data for table genders
--
INSERT INTO genders (gender_id, gender_name) VALUES 
(1, 'male'),
(2, 'female');

--
-- Dumping data for table activities_targets
--
INSERT INTO activities_targets (activity_target_id, activity_target_name) VALUES 
(1, 'call'),
(2, 'meeting');

--
-- Dumping data for table activities_types
--
INSERT INTO activities_types (activity_type_id, activity_type_name) VALUES 
(1, 'to do'),
(2, 'event');

--
-- Dumping data for table activities_status
--
INSERT INTO activities_status (activity_status_id, activity_status_name) VALUES 
(1, 'planned'),
(2, 'held'),
(3, 'not held'),
(4, 'done');

--
-- Dumping data for table countries
--
INSERT INTO countries (country_id, country_code, country_code_alpha2, country_code_alpha3, country_name, country_name_ar) VALUES
(1, '93', 'AF', 'AFG', 'Afghanistan', 'أفغانستان'),
(2, '355', 'AL', 'ALB', 'Albania', 'ألبانيا'),
(3, '213', 'DZ', 'DZA', 'Algeria', 'الجزائر'),
(4, '1-684', 'AS', 'ASM', 'American Samoa', 'ساموا-الأمريكي'),
(5, '376', 'AD', 'AND', 'Andorra', 'أندورا'),
(6, '244', 'AO', 'AGO', 'Angola', 'أنغولا'),
(7, '1-264', 'AI', 'AIA', 'Anguilla', 'أنغويلا'),
(8, '672', 'AQ', 'ATA', 'Antarctica', 'أنتاركتيكا'),
(9, '1-268', 'AG', 'ATG', 'Antigua and Barbuda', 'أنتيغوا وبربودا'),
(10, '54', 'AR', 'ARG', 'Argentina', 'الأرجنتين'),
(11, '374', 'AM', 'ARM', 'Armenia', 'أرمينيا'),
(12, '297', 'AW', 'ABW', 'Aruba', 'أروبه'),
(13, '61', 'AU', 'AUS', 'Australia', 'أستراليا'),
(14, '43', 'AT', 'AUT', 'Austria', 'النمسا'),
(15, '994', 'AZ', 'AZE', 'Azerbaijan', 'أذربيجان'),
(16, '1-242', 'BS', 'BHS', 'Bahamas', 'الباهاماس'),
(17, '973', 'BH', 'BHR', 'Bahrain', 'البحرين'),
(18, '880', 'BD', 'BGD', 'Bangladesh', 'بنغلاديش'),
(19, '1-246', 'BB', 'BRB', 'Barbados', 'بربادوس'),
(20, '375', 'BY', 'BLR', 'Belarus', 'روسيا البيضاء'),
(21, '32', 'BE', 'BEL', 'Belgium', 'بلجيكا'),
(22, '501', 'BZ', 'BLZ', 'Belize', 'بيليز'),
(23, '229', 'BJ', 'BEN', 'Benin', 'بنين'),
(24, '1-441', 'BM', 'BMU', 'Bermuda', 'جزر برمودا'),
(25, '975', 'BT', 'BTN', 'Bhutan', 'بوتان'),
(26, '591', 'BO', 'BOL', 'Bolivia', 'بوليفيا'),
(27, '387', 'BA', 'BIH', 'Bosnia and Herzegovina', 'البوسنة و الهرسك'),
(28, '267', 'BW', 'BWA', 'Botswana', 'بوتسوانا'),
(29, '47', 'BV', 'BVT', 'Bouvet Island', 'جزيرة بوفيه'),
(30, '55', 'BR', 'BRA', 'Brazil', 'البرازيل'),
(31, '246', 'IO', 'IOT', 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني'),
(32, '673', 'BN', 'BRN', 'Brunei Darussalam', 'بروني'),
(33, '359', 'BG', 'BGR', 'Bulgaria', 'بلغاريا'),
(34, '226', 'BF', 'BFA', 'Burkina Faso', 'بوركينا فاسو'),
(35, '257', 'BI', 'BDI', 'Burundi', 'بوروندي'),
(36, '855', 'KH', 'KHM', 'Cambodia', 'كمبوديا'),
(37, '237', 'CM', 'CMR', 'Cameroon', 'كاميرون'),
(38, '1', 'CA', 'CAN', 'Canada', 'كندا'),
(39, '238', 'CV', 'CPV', 'Cape Verde', 'الرأس الأخضر'),
(40, '1-345', 'KY', 'CYM', 'Cayman Islands', 'جزر كايمان'),
(41, '236', 'CF', 'CAF', 'Central African Republic', 'جمهورية أفريقيا الوسطى'),
(42, '235', 'TD', 'TCD', 'Chad', 'تشاد'),
(43, '56', 'CL', 'CHL', 'Chile', 'شيلي'),
(44, '86', 'CN', 'CHN', 'China', 'جمهورية الصين الشعبية'),
(45, '61', 'CX', 'CXR', 'Christmas Island', 'جزيرة كريسماس'),
(46, '61', 'CC', 'CCK', 'Cocos (Keeling) Islands', 'جزر كوكوس'),
(47, '57', 'CO', 'COL', 'Colombia', 'كولومبيا'),
(48, '269', 'KM', 'COM', 'Comoros', 'جزر القمر'),
(49, '242', 'CG', 'COG', 'Congo, Republic of (Brazzaville)', 'جمهورية الكونغو'),
(50, '682', 'CK', 'COK', 'Cook Islands', 'جزر كوك'),
(51, '506', 'CR', 'CRI', 'Costa Rica', 'كوستاريكا'),
(52, '385', 'HR', 'HRV', 'Croatia', 'كرواتيا'),
(53, '53', 'CU', 'CUB', 'Cuba', 'كوبا'),
(54, '357', 'CY', 'CYP', 'Cyprus', 'قبرص'),
(55, '599', 'CW', 'CUW', 'Curacao', 'كوراساو'),
(56, '420', 'CZ', 'CZE', 'Czech Republic', 'الجمهورية التشيكية'),
(57, '243', 'CD', 'COD', 'Democratic Republic of the Congo', 'جمهورية الكونغو الديمقراطية'),
(58, '45', 'DK', 'DNK', 'Denmark', 'الدانمارك'),
(59, '253', 'DJ', 'DJI', 'Djibouti', 'جيبوتي'),
(60, '1-767', 'DM', 'DMA', 'Dominica', 'دومينيكا'),
(61, '1-809 1-829 1-849', 'DO', 'DOM', 'Dominican Republic', 'الجمهورية الدومينيكية'),
(62, '670', 'TL', 'TLS', 'East Timor Timor-Leste', 'تيمور الشرقية'),
(63, '593', 'EC', 'ECU', 'Ecuador', 'إكوادور'),
(64, '20', 'EG', 'EGY', 'Egypt', 'مصر'),
(65, '503', 'SV', 'SLV', 'El Salvador', 'إلسلفادور'),
(66, '240', 'GQ', 'GNQ', 'Equatorial Guinea', 'غينيا الاستوائي'),
(67, '291', 'ER', 'ERI', 'Eritrea', 'إريتريا'),
(68, '372', 'EE', 'EST', 'Estonia', 'استونيا'),
(69, '251', 'ET', 'ETH', 'Ethiopia', 'أثيوبيا'),
(70, '500', 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'جزر فوكلاند'),
(71, '298', 'FO', 'FRO', 'Faroe Islands', 'جزر فارو'),
(72, '679', 'FJ', 'FJI', 'Fiji', 'فيجي'),
(73, '358', 'FI', 'FIN', 'Finland', 'فنلندا'),
(74, '33', 'FR', 'FRA', 'France', 'فرنسا'),
(75, '594', 'GF', 'GUF', 'French Guiana', 'غويانا الفرنسية'),
(76, '689', 'PF', 'PYF', 'French Polynesia', 'بولينيزيا الفرنسية'),
(77, '3166', 'FX', 'FXX', 'France Metropolitan', 'فرنسا متروبوليتان'),
(78, '3166-1', 'TF', 'ATF', 'French Southern Territories', 'أراض فرنسية جنوبية وأنتارتيكية'),
(79, '241', 'GA', 'GAB', 'Gabon', 'الغابون'),
(80, '220', 'GM', 'GMB', 'Gambia', 'غامبيا'),
(81, '995', 'GE', 'GEO', 'Georgia', 'جيورجيا'),
(82, '49', 'DE', 'DEU', 'Germany', 'ألمانيا'),
(83, '233', 'GH', 'GHA', 'Ghana', 'غانا'),
(84, '350', 'GI', 'GIB', 'Gibraltar', 'جبل طارق'),
(85, '30', 'GR', 'GRC', 'Greece', 'اليونان'),
(86, '299', 'GL', 'GRL', 'Greenland', 'جرينلاند'),
(87, '1-473', 'GD', 'GRD', 'Grenada', 'غرينادا'),
(88, '1-671', 'GU', 'GUM', 'Guam', 'جوام'),
(89, '502', 'GT', 'GTM', 'Guatemala', 'غواتيمال'),
(90, '590', 'GP', 'GDP', 'Guadeloupe', 'جزر جوادلوب'),
(91, '44-1481', 'GK', 'GGY', 'Guernsey', 'غيرنزي'),
(92, '224', 'GN', 'GIN', 'Guinea', 'غينيا'),
(93, '245', 'GW', 'GNB', 'Guinea-Bissau', 'غينيا-بيساو'),
(94, '592', 'GY', 'GUY', 'Guyana', 'غيانا'),
(95, '509', 'HT', 'HTI', 'Haiti', 'هايتي'),
(96, '3166-1', 'HM', 'HMD', 'Heard and Mcdonald Islands', 'جزيرة هيرد وجزر ماكدونالد'),
(97, '504', 'HN', 'HND', 'Honduras', 'هندوراس'),
(98, '852', 'HK', 'HKG', 'Hong Kong', 'هونغ كونغ'),
(99, '36', 'HU', 'HUN', 'Hungary', 'المجر'),
(100, '354', 'IS', 'ISL', 'Iceland', 'آيسلندا'),
(101, '91', 'IN', 'IND', 'India', 'الهند'),
(102, '44-1624', 'IM', 'IMN', 'Isle of Man', 'جزيرة مان'),
(103, '62', 'ID', 'IDN', 'Indonesia', 'أندونيسيا'),
(104, '98', 'IR', 'IRN', 'Iran', 'إيران'),
(105, '964', 'IQ', 'IRQ', 'Iraq', 'العراق'),
(106, '353', 'IE', 'IRL', 'Ireland', 'إيرلندا'),
(107, '972', 'IL', 'ISR', 'Israel', 'إسرائيل'),
(108, '39', 'IT', 'ITA', 'Italy', 'إيطاليا'),
(109, '225', 'CI', 'CIV', 'Ivory Coast', 'ساحل العاج'),
(110, '1-876', 'JM', 'JAM', 'Jamaica', 'جمايكا'),
(111, '81', 'JP', 'JPN', 'Japan', 'اليابان'),
(112, '44-1534', 'JE', 'JEY', 'Jersey', 'جيرزي'),
(113, '962', 'JO', 'JOR', 'Jordan', 'الأردن'),
(114, '7', 'KZ', 'KAZ', 'Kazakhstan', 'كازاخستان'),
(115, '254', 'KE', 'KEN', 'Kenya', 'كينيا'),
(116, '686', 'KI', 'KIR', 'Kiribati', 'كيريباتي'),
(117, '850', 'KP', 'PRK', 'Korea (North Korea)', 'كوريا الشمالية'),
(118, '82', 'KR', 'KOR', 'Korea (South Korea)', 'كوريا الجنوبية'),
(119, '383', 'XK', 'XKX', 'Kosovo', 'كوسوفو'),
(120, '965', 'KW', 'KWT', 'Kuwait', 'الكويت'),
(121, '996', 'KG', 'KGZ', 'Kyrgyzstan', 'قيرغيزستان'),
(122, '856', 'LA', 'LAO', 'Lao Peoples Democratic Republic', 'لاوس'),
(123, '371', 'LV', 'LVA', 'Latvia', 'لاتفيا'),
(124, '961', 'LB', 'LBN', 'Lebanon', 'لبنان'),
(125, '266', 'LS', 'LSO', 'Lesotho', 'ليسوتو'),
(126, '231', 'LR', 'LBR', 'Liberia', 'ليبيريا'),
(127, '218', 'LY', 'LBY', 'Libya', 'ليبيا'),
(128, '423', 'LI', 'LIE', 'Liechtenstein', 'ليختنشتين'),
(129, '370', 'LT', 'LTU', 'Lithuania', 'لتوانيا'),
(130, '352', 'LU', 'LUX', 'Luxembourg', 'لوكسمبورغ'),
(131, '853', 'MO', 'MAC', 'Macao', 'ماكاو'),
(132, '389', 'MK', 'MKD', 'Macedonia, Rep. of', 'مقدونيا'),
(133, '261', 'MG', 'MDG', 'Madagascar', 'مدغشقر'),
(134, '265', 'MW', 'MWI', 'Malawi', 'مالاوي'),
(135, '60', 'MY', 'MYS', 'Malaysia', 'ماليزيا'),
(136, '960', 'MV', 'MDV', 'Maldives', 'المالديف'),
(137, '223', 'ML', 'MLI', 'Mali', 'مالي'),
(138, '356', 'MT', 'MLT', 'Malta', 'مالطا'),
(139, '692', 'MH', 'MHL', 'Marshall Islands', 'جزر مارشال'),
(140, '596', 'MQ', 'MTQ', 'Martinique', 'مارتينيك'),
(141, '222', 'MR', 'MRT', 'Mauritania', 'موريتانيا'),
(142, '230', 'MU', 'MUS', 'Mauritius', 'موريشيوس'),
(143, '52', 'MX', 'MEX', 'Mexico', 'المكسيك'),
(144, '691', 'FM', 'FSM', 'Micronesia', 'مايكرونيزيا'),
(145, '262', 'TY', 'MYT', 'Mayotte', 'مايوت'),
(146, '373', 'MD', 'MDA', 'Moldova', 'مولدافيا'),
(147, '377', 'MC', 'MCO', 'Monaco', 'موناكو'),
(148, '976', 'MN', 'MNG', 'Mongolia', 'منغوليا'),
(149, '382', 'ME', 'MNE', 'Montenegro', 'الجبل الأسو'),
(150, '1-664', 'MS', 'MSR', 'Montserrat', 'مونتسيرات'),
(151, '212', 'MA', 'MAR', 'Morocco', 'المغرب'),
(152, '258', 'MZ', 'MOZ', 'Mozambique', 'موزمبيق'),
(153, '95', 'MM', 'MMR', 'Myanmar Burma', 'ميانمار'),
(154, '264', 'NA', 'NAM', 'Namibia', 'ناميبيا'),
(155, '674', 'NR', 'NRU', 'Nauru', 'نورو'),
(156, '977', 'NP', 'NPL', 'Nepal', 'نيبال'),
(157, '31', 'NL', 'NLD', 'Netherlands', 'هولندا'),
(158, '599', 'AN', 'ANT', 'Netherlands Antilles', 'جزر الأنتيل الهولندي'),
(159, '687', 'NC', 'NCL', 'New Caledonia', 'كاليدونيا الجديدة'),
(160, '64', 'NZ', 'NZL', 'New Zealand', 'نيوزيلندا'),
(161, '505', 'NI', 'NIC', 'Nicaragua', 'نيكاراجوا'),
(162, '227', 'NE', 'NER', 'Niger', 'النيجر'),
(163, '234', 'NG', 'NGA', 'Nigeria', 'نيجيريا'),
(164, '683', 'NU', 'NIU', 'Niue', 'ني'),
(165, '672', 'NF', 'NFK', 'Norfolk Island', 'جزيرة نورفولك'),
(166, '1-670', 'MP', 'MNP', 'Northern Mariana Islands', 'جزر ماريانا الشمالية'),
(167, '47', 'NO', 'NOR', 'Norway', 'النرويج'),
(168, '968', 'OM', 'OMN', 'Oman', 'عُمان'),
(169, '92', 'PK', 'PAK', 'Pakistan', 'باكستان'),
(170, '680', 'PW', 'PLW', 'Palau', 'بالاو'),
(171, '970', 'PS', 'PSE', 'Palestine', 'فلسطين'),
(172, '507', 'PA', 'PAN', 'Panama', 'بنما'),
(173, '675', 'PG', 'PNG', 'Papua New Guinea', 'بابوا غينيا الجديدة'),
(174, '595', 'PY', 'PRY', 'Paraguay', 'باراغواي'),
(175, '51', 'PE', 'PER', 'Peru', 'بيرو'),
(176, '63', 'PH', 'PHL', 'Philippines', 'الفليبين'),
(177, '48', 'PL', 'POL', 'Poland', 'بولونيا'),
(178, '64', 'PN', 'PCN', 'Pitcairn', 'جزر بيتكيرن'),
(179, '351', 'PT', 'PRT', 'Portugal', 'البرتغال'),
(180, '1-787 1-939', 'PR', 'PRI', 'Puerto Rico', 'بورتو ريكو'),
(181, '974', 'QA', 'QAT', 'Qatar', 'قطر'),
(182, '262', 'RE', 'REU', 'Reunion Island', 'ريونيون'),
(183, '40', 'RO', 'ROU', 'Romania', 'رومانيا'),
(184, '7', 'RU', 'RUS', 'Russia', 'روسيا'),
(185, '250', 'RW', 'RWA', 'Rwanda', 'رواندا'),
(186, '590', 'BL', 'BLM', 'Saint Barthelemy', 'سان بارتيلمي'),
(187, '290', 'SH', 'SHN', 'Saint Helena', 'سانت هيلينا'),
(188, '1-869', 'KN', 'KNA', 'Saint Kitts and Nevis', 'سانت كيتس ونيفس'),
(189, '1-758', 'LC', 'LCA', 'Saint Lucia', 'سانت لوسيا'),
(190, '590', 'MF', 'MAF', 'Saint Martin', 'سانت مارتن'),
(191, '508', 'PM', 'SPM', 'Saint Pierre and Miquelon', 'سانت بيير وميكلون'),
(192, '1-784', 'VC', 'VCT', 'Saint Vincent and the', 'سانت فنسنت وجزر غرينادين'),
(193, '685', 'WS', 'WSM', 'Samoa', 'المناطق'),
(194, '378', 'SM', 'SMR', 'San Marino', 'سان مارينو'),
(195, '239', 'ST', 'STP', 'Sao Tome and Príncipe', 'ساو تومي وبرينسيبي'),
(196, '966', 'SA', 'SAU', 'Saudi Arabia', 'المملكة العربية السعودية'),
(197, '221', 'SN', 'SEN', 'Senegal', 'السنغال'),
(198, '381', 'RS', 'SRB', 'Serbia', 'جمهورية صربيا'),
(199, '248', 'SC', 'SYC', 'Seychelles', 'سيشيل'),
(200, '232', 'SL', 'SLE', 'Sierra Leone', 'سيراليون'),
(201, '65', 'SG', 'SGP', 'Singapore', 'سنغافورة'),
(202, '1-721', 'SX', 'SXM', 'Sint Maarten', 'سنت مارتين'),
(203, '421', 'SK', 'SVK', 'Slovakia', 'سلوفاكيا'),
(204, '386', 'SI', 'SVN', 'Slovenia', 'سلوفينيا'),
(205, '677', 'SB', 'SLB', 'Solomon Islands', 'جزر سليمان'),
(206, '252', 'SO', 'SOM', 'Somalia', 'الصومال'),
(207, '27', 'ZA', 'ZAF', 'South Africa', 'جنوب أفريقيا'),
(208, '500', 'GS', 'SGS', 'South Georgia South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية'),
(209, '211', 'SS', 'SSD', 'South Sudan', 'جنوب السودان'),
(210, '34', 'ES', 'ESP', 'Spain', 'إسبانيا'),
(211, '94', 'LK', 'LKA', 'Sri Lanka', 'سريلانكا'),
(212, '249', 'SD', 'SDN', 'Sudan', 'السودان'),
(213, '597', 'SR', 'SUR', 'Suriname', 'سورينام'),
(214, '268', 'SZ', 'SWZ', 'Swaziland', 'سوازيلند'),
(215, '47', 'SJ', 'SJM', 'Svalbard and Jan Mayen Islands', 'يان ماين'),
(216, '46', 'SE', 'SWE', 'Sweden', 'السويد'),
(217, '41', 'CH', 'CHE', 'Switzerland', 'سويسرا'),
(218, '963', 'SY', 'SYR', 'Syria', 'سوريا'),
(219, '886', 'TW', 'TWN', 'Taiwan', 'تايوان'),
(220, '992', 'TJ', 'TJK', 'Tajikistan', 'طاجيكستان'),
(221, '255', 'TZ', 'TZA', 'Tanzania', 'تنزانيا'),
(222, '66', 'TH', 'THA', 'Thailand', 'تايلندا'),
(223, '228', 'TG', 'TGO', 'Togo', 'توغو'),
(224, '690', 'TK', 'TKL', 'Tokelau', 'توكيلاو'),
(225, '676', 'TO', 'TON', 'Tonga', 'تونغا'),
(226, '1-868', 'TT', 'TTO', 'Trinidad and Tobago', 'ترينيداد وتوباغو'),
(227, '216', 'TN', 'TUN', 'Tunisia', 'تونس'),
(228, '90', 'TR', 'TUR', 'Turkey', 'تركيا'),
(229, '993', 'TM', 'TKM', 'Turkmenistan', 'تركمانستان'),
(230, '688', 'TV', 'TUV', 'Tuvalu', 'توفالو'),
(231, '1-649', 'TC', 'TCA', 'Turks and Caicos Islands', 'جزر توركس وكايكوس'),
(232, '256', 'UG', 'UGA', 'Uganda', 'أوغندا'),
(233, '380', 'UA', 'UKR', 'Ukraine', 'أوكرانيا'),
(234, '971', 'AE', 'ARE', 'United Arab Emirates', 'الإمارات العرب'),
(235, '44', 'GB', 'GBR', 'United Kingdom', 'المملكة المتحدة'),
(236, '1', 'US', 'USA', 'United States', 'الولايات المتحدة'),
(237, '246', 'UM', 'UMI', 'United States minor outlying islands', 'جزر الولايات المتحدة الصغيرة النائية'),
(238, '598', 'UY', 'URY', 'Uruguay', 'أورغواي'),
(239, '998', 'UZ', 'UZB', 'Uzbekistan', 'أوزباكستان'),
(240, '678', 'VU', 'VUT', 'Vanuatu', 'فانواتو'),
(241, '379', 'VA', 'VAT', 'Vatican City State', 'الفاتيكان'),
(242, '58', 'VE', 'VEN', 'Venezuela', 'فنزويلا'),
(243, '84', 'VN', 'VNM', 'Vietnam', 'فيتنام'),
(244, '1', 'VG', 'VGB', 'Virgin Islands (British)', 'الجزر العذراء البريطانية'),
(245, '1-340', 'VI', 'VIR', 'Virgin Islands (U.S.)', 'الجزر العذراء الأمريكي'),
(246, '681', 'WF', 'WLF', 'Wallis and Futuna Islands', 'والس وفوتونا'),
(247, '212', 'EH', 'ESH', 'Western Sahara', 'الصحراء الغربية'),
(248, '967', 'YE', 'YEM', 'Yemen', 'اليمن'),
(249, '260', 'ZM', 'ZMB', 'Zambia', 'زامبيا'),
(250, '263', 'ZW', 'ZWE', 'Zimbabwe', 'زمبابوي');

--
-- Dumping data for table companies
--
INSERT INTO companies (company_id, company_name, company_website, company_industry, company_email, company_phone, company_fax, company_address, company_country, company_city, company_region, company_postal_code, company_details, company_created, company_updated) VALUES
(1, 'الاهرام للاعلان', 'www.ahram.com', 'دعاية و اعلان', 'ahram@gmail.com', '0923898293', '98239798732', '11 شارع فيصل', 64, 'الجيزة', 'فيصل', '11511', 'Below is a static modal example (meaning its position and display have been overridden). Included are the modal header, modal body (required for padding), and modal footer (optional). We ask that you include modal headers with dismiss actions whenever possible, or provide another explicit dismiss action.', '2021-03-31 07:50:25', NULL);


--
-- Dumping data for table users
--
INSERT INTO users (user_id, user_first_name, user_last_name, user_full_name, user_gender, user_role, user_website, user_phone, user_fax, user_address, user_country, user_city, user_region, user_birth_day, user_birth_month, user_birth_year, user_image, user_postal_code, user_details, user_status, user_created, user_updated, email, email_verified_at, password, remember_token) VALUES
(1, 'ahmed', 'muhammed', 'ahmed hassan hassan muhammed', 1, 4, '91ahmed.github.io', '01069200923', '9802384', '123 Main Street, New York, NY 10030', 64, 'cairo', 'Azhar', NULL, NULL, NULL, '7d59afc7b4931acbb08d1369605031d0.jpg', '11511', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, '2021-03-28 01:11:46', NULL, 'ahmedh12491@gmail.com', NULL, '$2y$10$pp2ECusLuIDar0L/bdJ77OzP0ORGHig6OFX9ukAb2r3P/aIQAopiG', 'dkDEi4p3fIAlJ32opBLWiReQXm5NtkZz94wpuQrBIyWC4bEh34A7w2nfqmuh'),
(2, 'عمر', 'وليد', 'عمر وليد عبد القادر', 1, 5, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, '651f3a90e206205609f897638d194d2f.jpg', NULL, NULL, 0, '2021-03-29 00:39:58', NULL, 'omar@gmail.com', NULL, '$2y$10$UGMhLRTLsbME./iE8ER3KeBs3yQKH42UHGhcsA8RrOExfq01SOGwO', 'kDCTaa5eT8TiHPHOUZvAeR6T4SXQoOJ6u3zIavuaKLAEEZ8S1ryn3rcFz45j'),
(3, 'samy', 'muhammed', 'samy muhammed hassan', 1, 3, 'www.google.com', '01270930765', '89758586', '250 Hartford Avenue, Bellingham MA 2019', 44, 'Escaldes', 'Shāriqah', 15, 8, 1990, '18d9a0e980676d4b0323e3d32f21d0c2.jpg', '9820', 'In Informatics, dummy data is benign information that does not contain any useful data, but serves to reserve space where real data is nominally present. Dummy data can be used as a placeholder for both testing and operational purposes.', 0, '2021-03-29 01:26:51', NULL, 'samy@gmail.com', NULL, '$2y$10$xA.mqbNqeBdFV.drTSQOEOq90kYubJuwdv3aCqF3xldgIuAYM5gNq', NULL);

--
-- Dumping data for table leads
--
INSERT INTO leads (lead_id, lead_first_name, lead_last_name, lead_full_name, lead_company, lead_gender, lead_email, lead_website, lead_phone, lead_fax, lead_address, lead_country, lead_city, lead_region, lead_birth_day, lead_birth_month, lead_birth_year, lead_image, lead_postal_code, lead_details, lead_status, lead_source, lead_assigned_to, lead_created, lead_updated) VALUES
(1, 'نادية', 'عثمان', 'نادية عثمان أحمد عثمان', NULL, 2, 'nadia@gmail.com', 'nadia928.com', '01279004937', '31232', '10 El Hamzawy ST, Azhar', 120, 'cairo', 'Azhar', 15, 7, 1965, NULL, '11511', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 6, 1, 1, '2021-03-28 03:40:23', NULL),
(2, 'سلوي', 'سمير', 'سلوي سمير عبد المنعم', NULL, 2, 'ss4000@gmail.com', NULL, '0923898293', NULL, '11 شارع فيصل', 64, 'الجيزة', 'فيصل', 16, 6, 1993, 'bbc4eea029eb4731d9284bb5014bd8a6.jpg', '11511', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام \"هنا يوجد محتوى نصي، هنا يوجد محتوى نصي\" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال \"lorem ipsum\" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.', 4, 2, 2, '2021-03-29 02:00:08', NULL),
(3, 'farouk', 'ahmed', 'farouk ahmed alwy', NULL, 1, 'farouk@yahoo.com', NULL, '092886877', NULL, '9400 GLACIER HWY', 58, 'Alex', NULL, 20, 10, 1921, '2ad093fc2ae91c2ee41a64d6b724e8ed.jpg', '97967', NULL, 10, 3, 2, '2021-03-29 03:48:53', NULL),
(4, 'muhammed', 'gamal', 'muhammed gamal hussin', NULL, 1, 'muhammed@gmail.com', NULL, '01069200923', NULL, NULL, 101, NULL, NULL, 13, 10, 2004, 'c7476a7ba870db32ad41bd570785a2e5.jpg', NULL, NULL, 5, 3, 3, '2021-03-30 14:27:57', NULL),
(5, 'sarah', 'muhammed', 'sarah mohamed sayed', 1, 1, 'sarah@yahoo.com', NULL, '0928993009', '936276', '42 Fairhaven Commons Way, Fairhaven MA 2719', 73, 'Armenia', 'Baghlān', 30, 9, 2014, 'e7528cd7b434a9cdad8bd255569a0170.jpg', '87383', 'In Informatics, dummy data is benign information that does not contain any useful data, but serves to reserve space where real data is nominally present. Dummy data can be used as a placeholder for both testing and operational purposes.', 9, 3, 3, '2021-04-02 05:35:03', NULL);

