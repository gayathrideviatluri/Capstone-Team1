-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `answer_evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add userdetails model', 7, 'add_userdetailsmodel'),
(26, 'Can change userdetails model', 7, 'change_userdetailsmodel'),
(27, 'Can delete userdetails model', 7, 'delete_userdetailsmodel'),
(28, 'Can view userdetails model', 7, 'view_userdetailsmodel'),
(29, 'Can add question model', 8, 'add_questionmodel'),
(30, 'Can change question model', 8, 'change_questionmodel'),
(31, 'Can delete question model', 8, 'delete_questionmodel'),
(32, 'Can view question model', 8, 'view_questionmodel'),
(33, 'Can add answer model', 9, 'add_answermodel'),
(34, 'Can change answer model', 9, 'change_answermodel'),
(35, 'Can delete answer model', 9, 'delete_answermodel'),
(36, 'Can view answer model', 9, 'view_answermodel'),
(37, 'Can add temp model', 10, 'add_tempmodel'),
(38, 'Can change temp model', 10, 'change_tempmodel'),
(39, 'Can delete temp model', 10, 'delete_tempmodel'),
(40, 'Can view temp model', 10, 'view_tempmodel'),
(41, 'Can add subject model', 11, 'add_subjectmodel'),
(42, 'Can change subject model', 11, 'change_subjectmodel'),
(43, 'Can delete subject model', 11, 'delete_subjectmodel'),
(44, 'Can view subject model', 11, 'view_subjectmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'userdetailsmodel'),
(8, 'adminapp', 'questionmodel'),
(9, 'userapp', 'answermodel'),
(10, 'userapp', 'tempmodel'),
(11, 'adminapp', 'subjectmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-06 10:09:06.679279'),
(2, 'auth', '0001_initial', '2024-02-06 10:09:08.423167'),
(3, 'admin', '0001_initial', '2024-02-06 10:09:08.915133'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-06 10:09:08.935132'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-06 10:09:08.953129'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-06 10:09:09.112121'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-06 10:09:09.188115'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-06 10:09:09.269111'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-06 10:09:09.291108'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-06 10:09:09.420100'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-06 10:09:09.424099'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-06 10:09:09.442098'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-06 10:09:09.656085'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-06 10:09:09.752079'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-06 10:09:09.859071'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-06 10:09:09.876071'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-06 10:09:09.955066'),
(18, 'sessions', '0001_initial', '2024-02-06 10:09:10.080058'),
(19, 'userapp', '0001_initial', '2024-02-07 09:57:52.362413'),
(20, 'userapp', '0002_delete_userdetailsmodel', '2024-02-07 10:29:01.322039'),
(21, 'userapp', '0003_initial', '2024-02-07 10:29:15.735104'),
(22, 'adminapp', '0001_initial', '2024-02-08 05:45:56.760561'),
(23, 'userapp', '0004_answermodel', '2024-02-08 10:56:20.932039'),
(24, 'userapp', '0005_alter_answermodel_answer', '2024-02-08 12:39:34.779479'),
(25, 'userapp', '0006_alter_answermodel_datetime_answered', '2024-02-09 06:11:27.918555'),
(26, 'userapp', '0007_remove_answermodel_question_id_and_more', '2024-02-09 07:45:10.349665'),
(27, 'userapp', '0008_remove_answermodel_marks_answermodel_score', '2024-02-09 08:16:47.000461'),
(28, 'userapp', '0009_tempmodel', '2024-02-09 13:03:11.190553'),
(29, 'adminapp', '0002_subjectmodel', '2024-02-13 12:59:44.732086');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n95m45yk6gp9kcjckj5169u919b1wjwh', 'eyJ1c2VyX2lkIjoyfQ:1pRXdD:uFVn5i9rUqEqO9CLUCaBV9aNS_xXJrUPeNjnXTyF0tg', '2024-02-27 12:08:27.739193'),
('v6wufypbojfizmo134hbwdhn7l0pdbfd', 'eyJ1c2VyX2lkIjoyfQ:1pRXMk:UyUxvUSoZC2RoGm-Tu9ai1eDy4nE0go584vpOIFeuss', '2024-02-27 11:51:26.487179'),
('0kxzf6r9vrqqo1c8dc2rbb8etf9cctfq', 'eyJ1c2VyX2lkIjoyfQ:1pRXmr:LYIJjQabNFKjBk33_QvcGozSBccyua0T0sPDowglARQ', '2024-02-27 12:18:25.456304');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

DROP TABLE IF EXISTS `question_answer`;
CREATE TABLE IF NOT EXISTS `question_answer` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(10000) NOT NULL,
  `answer` varchar(10000) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `datetime_created` datetime(6) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`question_id`, `question`, `answer`, `subject`, `datetime_created`) VALUES
(1, 'Write a brief essay on Pollution due to Urbanization.', 'Urbanization, the growth of cities and increased urban development, often leads to increased pollution in the form of air pollution, water pollution, and noise pollution. Cities are often filled with cars, factories, and other sources of emissions that contribute to smog and other harmful air pollutants, while runoff from urban areas can carry pollutants into waterways and harm aquatic life. Noise pollution from traffic, construction, and other sources can be loud and disruptive, causing stress and health problems. To minimize these environmental impacts and protect the health of people and the environment, it\'s crucial to manage urban growth in a responsible and sustainable way.', 'english', '2024-02-08 11:16:16.085325'),
(2, 'Should plastic be banned?', 'The use of plastic has become a widespread issue due to its negative impact on the environment, including pollution of land and oceans and harm to wildlife. There is growing consensus that reducing the use of single-use plastic items such as bags, straws, and water bottles is necessary to mitigate these impacts. Banning plastic altogether is a complex issue, as it is a versatile material that has many benefits, including being lightweight and durable, making it ideal for various products and packaging. However, there are alternative materials that can be used to replace single-use plastic items, and governments and industries can take steps to promote the use of these alternatives and reduce plastic waste through recycling and waste management programs. Ultimately, a balance between the benefits and drawbacks of plastic use must be found to protect the environment and promote sustainability.', 'english', '2024-02-08 11:23:20.539172'),
(3, 'Should education be free ?', 'The question of whether education should be free is a complex and controversial one that is debated by scholars, policymakers, and the general public. On one hand, making education free would ensure that everyone, regardless of income or social status, has access to the benefits of learning and the opportunities that come with it. This could help to reduce inequality and promote social mobility. On the other hand, providing free education requires significant funding, and there are questions about where that funding would come from and how it would be managed effectively. There are also concerns about the quality of education that could be provided for free, as well as the impact that free education could have on the workforce and the economy. Ultimately, there are many factors to consider when evaluating whether education should be free, and different countries may approach this issue differently based on their specific circumstances and priorities.', 'english', '2024-02-08 11:24:48.938518'),
(4, 'What are the benefits of practicing self-compassion ?', 'Practicing self-compassion involves treating oneself with kindness and understanding, and has numerous benefits for mental and emotional well-being. Research has shown that self-compassion can increase resilience, reduce anxiety and depression, improve self-esteem, and enhance overall life satisfaction. It also encourages individuals to view their failures and difficulties as opportunities for growth and learning rather than personal shortcomings, leading to a more positive outlook and greater motivation. Additionally, self-compassion can foster better relationships with others, as it promotes empathy and understanding for both oneself and others. Overall, self-compassion is a valuable tool for promoting a healthier and happier life, and can be cultivated through various practices such as mindfulness, self-reflection, and kind self-talk.', 'english', '2024-02-08 11:26:52.687627'),
(8, 'What is the importance of practicing self-care ?', 'Practicing self-care involves taking steps to prioritize one\'s own physical, mental, and emotional well-being. It has numerous benefits for overall health and happiness. Self-care helps to reduce stress and prevent burnout, improves sleep and physical health, boosts mood and self-esteem, and fosters a sense of control and balance in life. It also allows individuals to recharge and refocus, promoting greater creativity, productivity, and overall satisfaction with life. By prioritizing self-care, individuals can maintain their physical and emotional well-being, and better cope with the demands and challenges of daily life. Self-care can take many forms, including physical activities, mindfulness practices, healthy eating, and hobbies and interests. Incorporating self-care into daily routines can have a significant positive impact on overall health and well-being.', 'english', '2024-02-09 19:18:35.848028'),
(10, 'What is the concept of energy and how does it relate to work?', 'Energy is the property of an object or system that allows it to perform work. Energy can take many forms, including kinetic energy, potential energy, thermal energy, and electromagnetic energy. Work is defined as the transfer of energy from one object to another, or the transfer of energy from an object to its surroundings. The relationship between energy and work can be described by the equation work = force x distance, where the amount of work done is equal to the force applied to an object multiplied by the distance it moves in the direction of the force.', 'physics', '2024-02-13 13:58:36.478648'),
(11, 'What is the concept of electric potential and how does it relate to electric potential energy?', 'Electric potential is a measure of the amount of electric potential energy per unit of charge in an electric field. It is represented by the symbol V and is measured in volts. Electric potential energy is the energy stored in an object due to its position or arrangement in an electric field. The electric potential energy of a system of charges is directly proportional to the electric potential and the amount of charge in the system. The relationship between electric potential and electric potential energy can be described by the equation U = qV, where U is the electric potential energy, q is the charge, and V is the electric potential.', 'physics', '2024-02-13 13:59:14.715143'),
(12, 'What is the concept of the wave-particle duality of light and matter?', 'The wave-particle duality of light and matter is the concept that light and matter can exhibit both wave-like and particle-like behavior. Light has been shown to behave like both a wave and a particle, depending on the experiment being performed. Similarly, matter can also exhibit both wave-like and particle-like behavior, as described by the principles of quantum mechanics. The wave-particle duality is a fundamental aspect of quantum mechanics and is one of the key differences between the classical and quantum theories of physics.', 'physics', '2024-02-13 13:59:45.480161'),
(13, 'What is the concept of entropy and how does it relate to the second law of thermodynamics?', 'Entropy is a measure of the disorder or randomness of a system. It is represented by the symbol S and is measured in joules per kelvin. The second law of thermodynamics states that the entropy of a closed system will always increase over time. This means that the amount of disorder in the system will increase, and the amount of energy available for useful work will decrease. The second law of thermodynamics is a fundamental principle of thermodynamics and has important implications for the functioning of engines, the efficiency of power plants, and the sustainability of energy sources.', 'physics', '2024-02-13 14:00:21.555763'),
(14, 'What is the concept of special relativity and how does it differ from classical Newtonian mechanics?', 'Special relativity is a theory of physics that describes the behavior of objects moving at speeds close to the speed of light. It was developed by Albert Einstein and is based on two fundamental postulates: the laws of physics are the same in all inertial frames of reference, and the speed of light is constant for all observers. Special relativity differs from classical Newtonian mechanics in several important ways, including the fact that time and space are relative and can be distorted by the presence of mass and energy. This leads to a number of predictions, such as time dilation and length contraction, that are not consistent with classical mechanics and have been confirmed by numerous experiments.', 'physics', '2024-02-13 14:00:54.744588'),
(15, 'What is an ionic compound?', 'An ionic compound is a type of chemical compound made up of positively charged ions (cations) and negatively charged ions (anions) that are held together by electrostatic forces in a crystal lattice structure. Ionic compounds are typically formed from metal and nonmetal elements, and they typically have high melting and boiling points due to the strong bonds between the ions.', 'chemistry', '2024-02-13 14:03:01.831261'),
(16, 'How do acids and bases differ?', 'Acids are substances that release hydrogen ions (H+) in a solution, while bases are substances that release hydroxide ions (OH-) in a solution. Acids have a pH less than 7, while bases have a pH greater than 7. The strength of an acid or base is determined by the concentration of hydrogen or hydroxide ions present in the solution, with strong acids and bases having higher concentrations of ions.', 'chemistry', '2024-02-13 14:03:32.482252'),
(17, 'What is an enzyme?', 'An enzyme is a type of protein that acts as a catalyst, increasing the rate of a chemical reaction without being consumed in the process. Enzymes are highly specific and can only catalyze specific reactions, and their activity is influenced by factors such as temperature, pH, and substrate concentration. Enzymes play critical roles in many biological processes, including digestion, metabolism, and cellular respiration.', 'chemistry', '2024-02-13 14:03:59.178504'),
(18, 'How does the mole concept apply to chemistry?', 'The mole concept is a fundamental idea in chemistry that allows chemists to relate the macroscopic properties of a substance to its microscopic structure. One mole of a substance is defined as Avogadro\'s number of particles, which is equal to 6.022 x 10^23 particles. The mole concept allows chemists to convert between the mass, moles, and number of particles of a substance, and it is used to calculate the amount of a substance needed to react with another substance in a chemical reaction.', 'chemistry', '2024-02-13 14:04:28.227601'),
(19, 'What is the difference between a physical and chemical change?', 'A physical change is a change in the form or appearance of a substance, but the chemical composition remains the same. Examples of physical changes include changes in state (such as melting or boiling), changes in size or shape, and changes in the mixture of substances (such as mixing salt and water). A chemical change, on the other hand, is a change in the chemical composition of a substance, resulting in the formation of one or more new substances. Examples of chemical changes include rusting, combustion, and digestion.', 'chemistry', '2024-02-13 14:04:54.895853'),
(20, 'What is the impact of social media on college students?', 'Social media has had a profound impact on college students, influencing the way they communicate, interact with each other, and consume information. On one hand, it has made it easier for students to connect with each other and form communities, share information, and express themselves. On the other hand, it has also led to issues like cyberbullying, decreased face-to-face communication, and the spread of false information. Overall, the impact of social media on college students is complex and can be both positive and negative, depending on how it is used.', 'social', '2024-02-13 14:05:57.198771'),
(21, 'What is the role of peer pressure in college life?', 'Peer pressure plays a significant role in college life, as students are often surrounded by new people and are trying to fit in and make friends. This pressure can lead students to engage in behaviors they might not otherwise participate in, such as excessive drinking, drug use, or skipping classes. On the other hand, peer pressure can also lead to positive outcomes, such as participating in student organizations or pursuing academic goals. Ultimately, it is up to each individual to make decisions about their own behavior and to resist negative peer pressure.', 'social', '2024-02-13 14:06:23.474050'),
(22, 'How does technology impact college students\' mental health?', 'Technology has both positive and negative effects on college students\' mental health. On the one hand, technology provides students with access to information and resources that can help them manage their mental health, such as online counseling services or mental health apps. On the other hand, technology can also contribute to mental health issues, such as social media addiction, cyberbullying, and the constant barrage of news and information. College students need to be mindful of how they use technology and take steps to protect their mental health, such as setting limits on screen time and seeking help when they need it.', 'social', '2024-02-13 14:06:49.686331'),
(23, 'What are some of the challenges faced by first-generation college students?', 'First-generation college students face many challenges, including navigating the college admission process, adjusting to college life, and balancing academic and financial responsibilities. They may also struggle with a lack of support from family and friends who are not familiar with the college experience. Additionally, first-generation students may feel isolated or disconnected from the college community, and may not have access to the same resources and networks as their peers. Despite these challenges, many first-generation college students are able to overcome them and go on to achieve great success in their academic and professional careers.', 'social', '2024-02-13 14:07:11.295916'),
(24, 'How does diversity impact college students\' experiences?', 'Diversity can have a significant impact on college students\' experiences, both positive and negative. On the one hand, being exposed to people from different backgrounds can broaden students\' perspectives and help them develop a deeper understanding of and appreciation for different cultures and experiences. On the other hand, students may also face challenges related to prejudice, discrimination, and microaggressions, which can create an unwelcoming or hostile environment. College campuses must work to create inclusive environments that celebrate diversity and support all students, regardless of their background or identity.', 'social', '2024-02-13 14:07:34.824374'),
(25, 'What was the significance of the Treaty of Westphalia in shaping the modern European political system?', 'The Treaty of Westphalia was a series of agreements signed in 1648 that brought an end to the Thirty Years\' War in the Holy Roman Empire. The treaty marked the beginning of the modern European political system by establishing the principle of sovereignty, which holds that each nation-state has the right to govern itself independently. The treaty also established the concept of territoriality, which holds that a state has jurisdiction over its own territory. These principles have been central to the development of the European Union and the international system as a whole.', 'history', '2024-02-13 19:26:48.902843'),
(26, 'How did the industrial revolution impact the economic and social structure of Europe and North America in the 19th century?', 'The industrial revolution, which took place in Europe and North America in the late 18th and early 19th centuries, transformed the economies of these regions. The introduction of new technologies such as the steam engine and the power loom led to increased productivity and economic growth. The rise of industry also led to the growth of cities, as rural populations migrated to urban areas to find work. The industrial revolution had a profound impact on the social structure of Europe and North America, as it brought about a shift from an agrarian to an industrial economy. The growth of industry created new classes of people, such as factory workers and industrial capitalists, and led to changes in family structure, gender roles, and leisure time.', 'history', '2024-02-13 19:27:21.061858'),
(27, 'How did World War I impact the course of the 20th century?', 'World War I was a global conflict that lasted from 1914 to 1918 and had far-reaching consequences for the course of the 20th century. The war led to the collapse of several empires, including the Russian, German, and Austro-Hungarian empires, and paved the way for the rise of new states and political systems. The war also contributed to the spread of revolutionary ideals, such as socialism and communism, and led to the Russian Revolution of 1917. The aftermath of World War I saw the creation of the League of Nations, an international organization designed to prevent future wars, and the signing of the Treaty of Versailles, which imposed harsh penalties on Germany. These events set the stage for the rise of totalitarian regimes in the 1920s and 1930s and ultimately led to the outbreak of World War II.', 'history', '2024-02-13 19:27:40.402662'),
(28, 'What was the impact of colonialism on Africa in the 19th and early 20th centuries?', 'Colonialism had a profound impact on Africa in the 19th and early 20th centuries. European powers such as Britain, France, and Germany divided the continent among themselves and established colonies to exploit the resources and labor of the African people. The imposition of colonial rule led to the forced relocation of millions of Africans and the disruption of traditional economic and social systems. The colonizers also imposed their own political, economic, and cultural systems on the African people, which often led to resistance and conflict. The legacy of colonialism continues to shape the economic and political landscape of Africa today, as many African countries struggle with poverty, political instability, and the effects of a long history of exploitation and oppression.', 'history', '2024-02-13 19:28:05.300175'),
(29, 'How did the ideas of the Enlightenment shape the political and intellectual landscape of Europe in the 18th century?', 'The Enlightenment was an intellectual and cultural movement that took place in Europe in the late 17th and 18th centuries. It was characterized by a focus on reason, science, and individual liberty, and challenged traditional beliefs and institutions. The ideas of the Enlightenment had a profound impact on the political and intellectual landscape of Europe, inspiring the American Revolution and the French Revolution. The Enlightenment also led to the development of new political systems, such as constitutional monarchy and representative democracy.', 'history', '2024-02-13 19:29:00.411722');

-- --------------------------------------------------------

--
-- Table structure for table `subject_details`
--

DROP TABLE IF EXISTS `subject_details`;
CREATE TABLE IF NOT EXISTS `subject_details` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `subject_image` varchar(100) NOT NULL,
  `datetime_created` datetime(6) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_details`
--

INSERT INTO `subject_details` (`subject_id`, `subject`, `subject_image`, `datetime_created`) VALUES
(5, 'english', 'media/english.jpg', '2024-02-13 18:59:23.799011'),
(6, 'physics', 'media/phy.jpg', '2024-02-13 18:59:46.491580'),
(7, 'chemistry', 'media/chem.jpg', '2024-02-13 19:00:04.551470'),
(8, 'social', 'media/soc.jpg', '2024-02-13 19:00:15.402792'),
(9, 'history', 'media/history.jpeg', '2024-02-13 19:19:38.394449');

-- --------------------------------------------------------

--
-- Table structure for table `temp_model`
--

DROP TABLE IF EXISTS `temp_model`;
CREATE TABLE IF NOT EXISTS `temp_model` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `question` varchar(20000) DEFAULT NULL,
  `answer` varchar(20000) DEFAULT NULL,
  `score` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_model`
--

INSERT INTO `temp_model` (`answer_id`, `subject`, `question`, `answer`, `score`) VALUES
(121, 'chemistry', 'What is an ionic compound?', 'An ionic compound is a type of chemical compound made up of positively charged ions (cations) and negatively charged ions (anions) that are held together by electrostatic forces in a crystal lattice structure. Ionic compounds are typically formed from metal and nonmetal elements, and they typically have high melting and boiling points due to the strong bonds between the ions.', '10'),
(122, 'chemistry', 'How do acids and bases differ?', 'Acids are substances that release hydrogen ions (H+) in a solution, while bases are substances that release hydroxide ions (OH-) in a solution. Acids have a pH less\r\n', '5'),
(123, 'chemistry', 'What is an enzyme?', 'An enzyme is a type of protein that acts as a catalyst, increasing the rate of a chemical reaction without being consumed in the process. ellular respiration.', '3'),
(124, 'chemistry', 'How does the mole concept apply to chemistry?', 'The mole concept is a fundamental idea in chemistry that allows chemists to relate the macroscopic properties of a substance to its microscopic structure. One mole of a substance is defined as Avogadro\'s number of particles, which is equal to 6.022 x 10^23 particles. The mole concept allows chemists to convert between the mass, moles, and number of particles of a substance, and it is used to calculate the amount of a substance needed to react with another substance in a chemical reaction.', '10'),
(125, 'chemistry', 'What is the difference between a physical and chemical change?', 'A physical change is a change in the form or appearance of a substance, but the chemical composition remains the same. Examples of physical changes include changes in state (such as melting or boiling), changes in size or shape, and changes in the mixture of substances (such as mixing salt and water). A chemical change, on the other hand, is a change in the chemical composition of a substance, resulting in the formation of one or more new substances.', '9');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
CREATE TABLE IF NOT EXISTS `user_answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer_subject` varchar(50) NOT NULL,
  `answer` varchar(20000) DEFAULT NULL,
  `datetime_answered` datetime(6) NOT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `user_answers_user_id_id_20c270db` (`user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`answer_id`, `answer_subject`, `answer`, `datetime_answered`, `user_id_id`, `score`) VALUES
(84, 'english', '{\'question1\': {\'question\': \'Write a brief essay on Pollution due to Urbanization.\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}, \'question2\': {\'question\': \'Should plastic be banned?\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}, \'question3\': {\'question\': \'Should education be free ?\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}, \'question4\': {\'question\': \'What are the benefits of practicing self-compassion ?\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}, \'question5\': {\'question\': \'What are the benefits of practicing self-care ?\', \'answer\': \'asdasdasdas\', \'marks\': \'0\'}}', '2024-02-09 10:32:53.232472', 1, 0),
(85, 'english', '{\'question1\': {\'question\': \'Write a brief essay on Pollution due to Urbanization.\', \'answer\': \"Urbanization, the growth of cities and increased urban development, often leads to increased pollution in the form of air pollution, water pollution, and noise pollution. Cities are often filled with cars, factories, and other sources of emissions that contribute to smog and other harmful air pollutants, while runoff from urban areas can carry pollutants into waterways and harm aquatic life. Noise pollution from traffic, construction, and other sources can be loud and disruptive, causing stress and health problems. To minimize these environmental impacts and protect the health of people and the environment, it\'s crucial to manage urban growth in a responsible and sustainable way.\", \'marks\': \'10\'}, \'question2\': {\'question\': \'Should plastic be banned?\', \'answer\': \'The use of plastic has become a widespread issue due to its negative impact on the environment, including pollution of land and oceans and harm to wildlife. There is growing consensus that reducing the use of single-use plastic items such as bags, straws, and water bottles is necessary to mitigate these impacts. Banning plastic altogether is a complex issue, as it is a versatile material that has many benefits, including being lightweight and durable, making it ideal for various products and packaging. However, there are alternative materials that can be used to replace single-use plastic items, and governments and industries can take steps to promote the use romote sustainability.\', \'marks\': \'8\'}, \'question3\': {\'question\': \'Should education be free ?\', \'answer\': \'asdasdasda asddasdasd asd The question of whether education should be free is a complex and controversial one that is debated by scholars, policymakers, and the general public. On one hand, making education free would ensure that everyone, regardless of income or social status, has access to the benefits of learning and the opportunities that come with it. This could help to reduce inequality and promote social mobility. On the other hand, providing free education requires significant funding, and there are questions about where that funding would come from and how it would be managed effectively. There are also concerns about the quality of education that could be provided for free, as well as the impact that free education could have on the workforce and the economy. Ultimately, there are many factors to consider when evaluating whether education should be free, and different countries may approach this issue differently based on their specific circumstances and priorities.\', \'marks\': \'9\'}, \'question4\': {\'question\': \'What are the benefits of practicing self-compassion ?\', \'answer\': \'Practicing self-compassion involves treating oneself with kindness and understanding, and has numerous benefits for mental and emotional well-being. Research has shown that self-compassion can increase resilience, reduce anxiety and depression, improve self-esteem, and enhance overall life satisfaction. It also encourages individuals to view their failures and difficulties as opportunities for growth and learning rather than personal shortcomings, leading to a more positive outlook and greater motivation. Additionally, self-compassion can foster better relationships with others, as it promotes empathy and understanding for both oneself and others. Overall, self-compassion is a valuable tool for promoting a healthier and happier life, and can be cultivated through various practices such as mindfulness, self-reflection, and kind self-talk.\', \'marks\': \'10\'}, \'question5\': {\'question\': \'What are the benefits of practicing self-care ?\', \'answer\': \'AAsdAASDASasdasdasdasd\', \'marks\': \'0\'}}', '2024-02-09 12:21:53.912870', 1, 37),
(86, 'english', '{\'question1\': {\'question\': \'Write a brief essay on Pollution due to Urbanization.\', \'answer\': \'Urbanization, the growth of cities and increased urban development, often leads to increased pollution in the form of air pollution, water pollution, and noise pollution. Cities are often filled with cars, factories, and other sources of emissions that contribute to smog and other harmful air pollutants.\', \'marks\': \'4\'}, \'question2\': {\'question\': \'Should plastic be banned?\', \'answer\': \'asd\', \'marks\': \'0\'}, \'question3\': {\'question\': \'Should education be free ?\', \'answer\': \'asd\', \'marks\': \'0\'}, \'question4\': {\'question\': \'What are the benefits of practicing self-compassion ?\', \'answer\': \'asd\', \'marks\': \'0\'}, \'question5\': {\'question\': \'What are the benefits of practicing self-care ?\', \'answer\': \'asd\', \'marks\': \'0\'}}', '2024-02-09 12:23:04.433249', 1, 4),
(87, 'english', '{\'question1\': {\'question\': \'Write a brief essay on Pollution due to Urbanization.\', \'answer\': \'\', \'marks\': \'0\'}, \'question2\': {\'question\': \'Should plastic be banned?\', \'answer\': \'\', \'marks\': \'0\'}, \'question3\': {\'question\': \'Should education be free ?\', \'answer\': \'\', \'marks\': \'0\'}, \'question4\': {\'question\': \'What are the benefits of practicing self-compassion ?\', \'answer\': \'\', \'marks\': \'0\'}, \'question5\': {\'question\': \'What are the benefits of practicing self-care ?\', \'answer\': \'\', \'marks\': \'0\'}}', '2024-02-09 13:15:39.060552', 1, 0),
(88, 'english', '{\'question1\': {\'question\': \'Write a brief essay on Pollution due to Urbanization.\', \'answer\': \'asdasdasd\', \'marks\': \'0\'}, \'question2\': {\'question\': \'Should plastic be banned?\', \'answer\': \'asdasd\', \'marks\': \'0\'}, \'question3\': {\'question\': \'Should education be free ?\', \'answer\': \'asdasdasd\', \'marks\': \'0\'}, \'question4\': {\'question\': \'What are the benefits of practicing self-compassion ?\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}, \'question5\': {\'question\': \'What are the benefits of practicing self-care ?\', \'answer\': \'asdasdasdasd\', \'marks\': \'0\'}}', '2024-02-09 13:17:14.078326', 1, 0),
(89, 'physics', '{\'question1\': {\'question\': \'What is the concept of energy and how does it relate to work?\', \'answer\': \'Energy is the property of an object or system that allows it to perform work. Energy can take many forms, including kinetic energy, potential energy, thermal energy, and electromagnetic energy. Work is defined as the transfer of energy from one object to another, or the transfer of energy from an object to its surroundings. The relationship between energy and work can be described by the equation work = force x distance, where the amount of work done is equal to the force applied to an object multiplied by the distance it moves in the direction of the force.\', \'marks\': \'10\'}, \'question2\': {\'question\': \'What is the concept of electric potential and how does it relate to electric potential energy?\', \'answer\': \'Electric potential is a measure of the amount of electric potential energy per unit of charge in an electric field. It is represented by the symbol V and is measured in volts. Electric potential energy is the energy stored in an object due to its position or arrangement in an electric field. The electric potential energy of a system of charges is directly proportional to the electric potential and the amount of charge in the system. The relationship between electric potential and electric potential energy.\', \'marks\': \'7\'}, \'question3\': {\'question\': \'What is the concept of the wave-particle duality of light and matter?\', \'answer\': \'The wave-particle duality of light and matter is the concept that light and matter can exhibit both wave-like and particle-like behavior. Light has been shown to behave like both a wave and a particle, depending on the experiment being performed. Similarly, matter can also exhibit both wave-like and particle-like behavior, as described by the principles of quantum mechanics.\', \'marks\': \'7\'}, \'question4\': {\'question\': \'What is the concept of entropy and how does it relate to the second law of thermodynamics?\', \'answer\': \'Entropy is a measure of the disorder or randomness of a system. It is represented by the symbol S and is measured in joules per kelvin. The second law of thermodynamics states that the entropy of a closed system will always increase over time. This means that the amount of disorder in the system will increase, and the amount of energy available for useful work will decrease. The second law of thermodynamics is a fundamental principle of thermodynamics and has important implications for the functioning of engines, the efficiency of power plants, and the sustainability of energy sources.\', \'marks\': \'10\'}, \'question5\': {\'question\': \'What is the concept of special relativity and how does it differ from classical Newtonian mechanics?\', \'answer\': \'Special relativity is a theory of physics that describes the behavior of objects moving at speeds close to the speed of light. It was developed by Albert Einstein and is based on two fundamental postulates: the laws of physics are the same in all inertial frames of reference, and the speed of light is constant for all observers. Special relativity differs from classical Newtonian mechanics in several important ways, including the fact that time and space are relative and can be distorted by the presence of mass and energy.\', \'marks\': \'8\'}}', '2024-02-13 10:12:36.144474', 1, 42),
(90, 'chemistry', '{\'question1\': {\'question\': \'What is an ionic compound?\', \'answer\': \'An ionic compound is a type of chemical compound made up of positively charged ions (cations) and negatively charged ions (anions) that are held together by electrostatic forces in a crystal lattice structure. Ionic compounds are typically formed from metal and nonmetal elements, and they typically have high melting and boiling points due to the strong bonds between the ions.\', \'marks\': \'10\'}, \'question2\': {\'question\': \'How do acids and bases differ?\', \'answer\': \'Acids are substances that release hydrogen ions (H+) in a solution, while bases are substances that release hydroxide ions (OH-) in a solution. Acids have a pH less\\r\\n\', \'marks\': \'5\'}, \'question3\': {\'question\': \'What is an enzyme?\', \'answer\': \'An enzyme is a type of protein that acts as a catalyst, increasing the rate of a chemical reaction without being consumed in the process. ellular respiration.\', \'marks\': \'3\'}, \'question4\': {\'question\': \'How does the mole concept apply to chemistry?\', \'answer\': \"The mole concept is a fundamental idea in chemistry that allows chemists to relate the macroscopic properties of a substance to its microscopic structure. One mole of a substance is defined as Avogadro\'s number of particles, which is equal to 6.022 x 10^23 particles. The mole concept allows chemists to convert between the mass, moles, and number of particles of a substance, and it is used to calculate the amount of a substance needed to react with another substance in a chemical reaction.\", \'marks\': \'10\'}, \'question5\': {\'question\': \'What is the difference between a physical and chemical change?\', \'answer\': \'A physical change is a change in the form or appearance of a substance, but the chemical composition remains the same. Examples of physical changes include changes in state (such as melting or boiling), changes in size or shape, and changes in the mixture of substances (such as mixing salt and water). A chemical change, on the other hand, is a change in the chemical composition of a substance, resulting in the formation of one or more new substances.\', \'marks\': \'9\'}}', '2024-02-13 10:17:43.283496', 2, 37),
(91, 'physics', '{\'question1\': {\'question\': \'What is the concept of energy and how does it relate to work?\', \'answer\': \'Energy is the property of an object or system that allows it to perform work. Energy can take many forms, including kinetic energy, potential energy, thermal energy, and electromagnetic energy. Work is defined as the transfer of energy from one object to another, or the transfer of energy from an object to its surroundings. The relationship between energy and work can be described by the equation work = force x distance, where the amount of work done is equal to the force applied to an object multiplied by the distance it moves in the direction of the force.\', \'marks\': \'10\'}, \'question2\': {\'question\': \'What is the concept of electric potential and how does it relate to electric potential energy?\', \'answer\': \'Energy is the property of an object or system that allows it to perform work. Energy can take many forms, including kinetic energy, potential energy, thermal energy, and electromagnetic energy. Work is defined as the transfer of energy from one object to another, or the transfer of energy from an object to its surroundings. The relationship between energy and work can be described by the equation work = force x distance, where the amount of work done is equal to the force applied to an object multiplied by the distance it moves in the direction of the force.\', \'marks\': \'1\'}, \'question3\': {\'question\': \'What is the concept of the wave-particle duality of light and matter?\', \'answer\': \'The wave-particle duality of light and matter is the concept that light and matter can exhibit both wave-like and particle-like behavior. Light has been shown to behave like both a wave and a particle, depending on the experiment being performed. Similarly, matter can also exhibit both wave-like and particle-like behavior, as described by the principles of quantum mechanics. \', \'marks\': \'7\'}, \'question4\': {\'question\': \'What is the concept of entropy and how does it relate to the second law of thermodynamics?\', \'answer\': \'This means that the amount of disorder in the system will increase, and the amount of energy available for useful work will decrease. The second law of thermodynamics is a fundamental principle of thermodynamics and has important implications for the functioning of engines, the efficiency of power plants, and the sustainability of energy sources.\', \'marks\': \'6\'}, \'question5\': {\'question\': \'What is the concept of special relativity and how does it differ from classical Newtonian mechanics?\', \'answer\': \'Entropy is a measure of the disorder or randomness of a system. It is represented by the symbol S and is measured in joules per kelvin. The second law of thermodynamics states that the entropy of a closed system will always increase over time. This means that the amount of disorder in the system will increase, and the amount of energy available for useful work will decrease. The second law of thermodynamics is a fundamental principle of thermodynamics and has important implications for the functioning of engines, the efficiency of power plants, and the sustainability of energy sources.\', \'marks\': \'0\'}}', '2024-02-13 12:20:43.996713', 2, 24),
(92, 'history', '{\'question1\': {\'question\': \'What was the significance of the Treaty of Westphalia in shaping the modern European political system?\', \'answer\': \"The Treaty of Westphalia was a series of agreements signed in 1648 that brought an end to the Thirty Years\' War in the Holy Roman Empire. The treaty marked the beginning of the modern European political system by establishing the principle of sovereignty, which holds that each nation-state has the right to govern itself independently. The treaty also established the concept of territoriality, which holds that a state has jurisdiction over its own territory. These principles have been central to the development of the European Union and the international system as a whole.\", \'marks\': \'10\'}, \'question2\': {\'question\': \'How did the industrial revolution impact the economic and social structure of Europe and North America in the 19th century?\', \'answer\': \'The industrial revolution, which took place in Europe and North America in the late 18th and early 19th centuries, transformed the economies of these regions. The introduction of new technologies such as the steam engine and the power loom led to increased productivity and economic growth\', \'marks\': \'4\'}, \'question3\': {\'question\': \'How did World War I impact the course of the 20th century?\', \'answer\': \'NO\', \'marks\': \'0\'}, \'question4\': {\'question\': \'What was the impact of colonialism on Africa in the 19th and early 20th centuries?\', \'answer\': \'no\', \'marks\': \'0\'}, \'question5\': {\'question\': \'How did the ideas of the Enlightenment shape the political and intellectual landscape of Europe in the 18th century?\', \'answer\': \'no\', \'marks\': \'0\'}}', '2024-02-13 14:02:14.676715', 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `datetime_created` datetime(6) NOT NULL,
  `user_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_contact`, `user_password`, `student_id`, `user_photo`, `datetime_created`, `user_status`) VALUES
(1, 'Alice Smith', 'alice@example.com', 1234567890, 'password123', 'STU001', 'media/user1.jpg', '2023-04-01 10:00:00.000000', 'accepted'),
(2, 'Bob Johnson', 'bob@example.com', 9876543210, 'password456', 'STU002', 'media/user2.jpg', '2023-04-02 12:30:00.000000', 'accepted'),
(3, 'Charlie Brown', 'charlie@example.com', 5551234567, 'password789', 'STU003', 'media/user3.jpg', '2023-04-03 08:45:00.000000', 'pending');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
