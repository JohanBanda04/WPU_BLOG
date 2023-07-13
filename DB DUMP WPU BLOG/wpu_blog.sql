/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : wpu_blog

 Target Server Type    : MariaDB
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 13/07/2023 10:02:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `categories_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Web Programming', 'web-programming', '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `categories` VALUES (2, 'Web Design', 'web-design', '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `categories` VALUES (3, 'Personal', 'personal', '2023-07-12 01:47:02', '2023-07-12 01:47:02');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_06_22_033510_create_posts_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_06_23_072744_create_categories_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 2, 2, 'Id iusto tenetur modi facere natus omnis impedit.', 'consequatur-incidunt-in-ut-nostrum-ut-consequatur', 'Et explicabo magni quaerat repellendus dicta. Veritatis amet voluptas ut enim repudiandae. Occaecati eos consequatur animi et. Architecto maiores assumenda quasi fuga.', '<p>Et vitae dolor ullam commodi. Molestiae provident qui culpa ad dolorem ipsa ut. Atque molestiae rerum consequatur doloremque nesciunt incidunt impedit. Molestiae ullam reprehenderit voluptatem magnam facere sequi.</p><p>Sit laborum dolores at ipsum exercitationem et quisquam. Excepturi quae voluptatem aut accusamus ipsum. Voluptas veniam voluptatem a quaerat et itaque velit. Sunt ut esse dolorum.</p><p>Velit laudantium sint et suscipit provident. Quibusdam molestiae et voluptatem delectus amet. Cumque rerum consequuntur quos ut autem asperiores quia molestiae. Id velit tenetur quisquam aliquam voluptatem.</p><p>Nisi ipsa distinctio amet aut facere voluptates nostrum rerum. Ab ex amet sint. Eveniet eius et et consequatur minus.</p><p>Ut harum beatae quia sed odio blanditiis fuga. Omnis nulla dolorem pariatur quibusdam hic. Qui est qui amet iure consequatur. Fugit delectus et eveniet iure voluptatum.</p><p>Et ipsam quas facere. Veniam incidunt tenetur et eos hic consequatur laudantium. Vel ad dolores ut aut iusto eveniet.</p><p>Tenetur minima quas sint. Voluptatem nihil quia quos enim dolores reprehenderit enim. Qui ducimus aut et sint ex velit. Eos veniam ex quis expedita rerum rerum molestias.</p><p>Nisi cum delectus ratione. Atque ipsum nemo sapiente consequuntur iusto. Eligendi eaque nulla quas velit omnis. Qui amet sint facilis numquam quo.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (2, 2, 1, 'Est harum sint ex consequatur rerum harum harum aliquid ipsam.', 'rerum-fuga-ut-magnam-qui-qui-dolores-ut', 'In et perferendis veniam debitis. Eos nisi delectus et deleniti. Doloribus rerum qui labore et aut dolore et.', '<p>Nihil delectus numquam vitae doloribus. Veniam quia dignissimos explicabo. Corrupti nostrum in quod nihil aut.</p><p>Veniam veniam maxime accusamus illo sed ad harum voluptates. Id in temporibus aut sapiente. Dolor eligendi itaque dolor natus sit culpa in. Facere nemo totam repellat id.</p><p>Ut atque omnis sed optio explicabo eligendi sequi. Omnis hic repellat harum fuga velit. Labore fugit enim excepturi facere. A ullam dolor non.</p><p>Sit nesciunt qui debitis quas commodi vel. Et deserunt omnis et qui ut. Maiores sapiente fugit ut dignissimos voluptate.</p><p>Ab temporibus quasi ipsa aperiam magni quas. Explicabo voluptatibus porro iusto error perspiciatis voluptas. Dolorum quo aut in qui. Rerum aut aut quam maxime at temporibus.</p><p>Esse quo vel sint sit nihil animi. Recusandae libero dignissimos possimus. Omnis eum maiores expedita quisquam animi exercitationem est qui.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (3, 2, 2, 'Eius deserunt sit consequatur magni.', 'quo-molestiae-voluptas-voluptas-placeat-veniam', 'Neque quia dolore consequatur incidunt blanditiis earum dolorem at. Eius quia fugiat dolorem quo non est. Consequatur nihil eaque provident aut.', '<p>Aut expedita et ut. Ea ex nesciunt consequatur nesciunt hic. Eum aut totam consequatur.</p><p>Libero delectus nesciunt aliquid cum reiciendis adipisci optio. Magnam corporis perferendis alias eveniet. Et expedita beatae et maxime. Quas impedit architecto ea ea et quos omnis qui.</p><p>Consequatur inventore veniam rem officiis amet voluptatibus. Enim quibusdam ratione ut vero et nemo velit.</p><p>Veniam et dolor eaque sed eligendi distinctio ipsam. Quos quod natus asperiores molestias eligendi molestiae. Aut est fuga voluptatem voluptatum et.</p><p>Voluptatem quae dicta qui rem aut culpa sapiente. Quia iusto animi facilis a laudantium porro vel dolor. Sint id praesentium nam est et.</p><p>Non soluta maxime omnis autem. Ab vel cupiditate eos dolorum ea dicta sed. Pariatur est sit distinctio doloribus voluptas autem. Dolores unde maxime rerum.</p><p>Enim deleniti et aliquam ad. Voluptas minima dolore quibusdam molestiae porro quidem porro. Natus rerum unde fugiat laborum et aperiam.</p><p>Optio tempore harum neque quod incidunt possimus. Dignissimos nam corporis quo non mollitia ad. Cumque nisi ipsa illo cumque.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (4, 1, 1, 'Facere non in similique commodi aliquid ipsa.', 'in-deserunt-facilis-reprehenderit-placeat-sed', 'Quia voluptatibus nemo commodi quia sapiente dolor. Praesentium omnis aspernatur dolorem ut itaque omnis. Minima sapiente eligendi explicabo porro.', '<p>Maxime est sed deleniti aut ut in. Delectus pariatur laboriosam culpa doloremque. Nihil et ratione quam aut.</p><p>Saepe odio iure similique. Voluptatibus eaque ad consequatur eius nulla nostrum ratione aut. Eaque sint nesciunt qui quaerat voluptatibus ut. Et saepe repudiandae sint quia excepturi vero est.</p><p>Enim ut rerum ratione assumenda. Tempore quia eaque et quis. Necessitatibus cum ab aut enim. Est omnis alias quae porro voluptas.</p><p>Non quam incidunt deserunt reprehenderit blanditiis molestiae soluta. A facilis assumenda recusandae officia. Possimus autem accusantium quod culpa quisquam aspernatur incidunt eligendi. Optio fuga architecto sit.</p><p>Perspiciatis eaque magnam omnis nesciunt sit aspernatur. Nesciunt optio exercitationem sint cupiditate animi temporibus et. Consequatur molestiae qui rerum.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (5, 2, 3, 'Asperiores aliquid quia.', 'numquam-velit-architecto-ut-ad-harum', 'Facilis perferendis nisi excepturi aut nihil molestiae molestias. Non voluptatibus nemo sit est. Ut incidunt aut voluptatem ut optio.', '<p>Doloribus in quibusdam quaerat architecto eveniet modi omnis. Est accusamus ipsum reprehenderit et. Porro debitis laudantium unde.</p><p>Velit dolores iure dolorum quod maxime optio soluta. Nam ipsa dolor voluptatum adipisci voluptatum. Harum officia aut sint eaque. Voluptas cupiditate quaerat delectus dolorem mollitia.</p><p>Aut iure perspiciatis laudantium qui consequuntur. Ut est id et distinctio similique ea velit. Odit esse consequatur maiores aut et et et. Enim laboriosam temporibus laudantium error nesciunt. Qui perspiciatis placeat et quia dolor officiis qui.</p><p>Quod et commodi omnis earum fugit aliquam. Laboriosam totam illum ut totam dolorem reiciendis deserunt non. Accusantium accusamus id quibusdam quasi. Dolor et numquam consequatur recusandae animi vero quia.</p><p>Repellendus omnis accusamus dignissimos illum. Molestiae accusantium debitis vel neque ea saepe facilis. Est ut excepturi qui nihil. Incidunt eum rem corporis.</p><p>Et est voluptate vel dolores. Ducimus sunt corrupti esse qui rerum. Nesciunt deleniti repellat quo dolorum sint et accusantium occaecati. Odit neque aut fugit saepe iste eligendi saepe.</p><p>Nisi sunt consequatur nulla quas. Atque quae iste illo quidem dicta soluta. Voluptates enim odio facere quisquam hic aspernatur.</p><p>Aut doloremque unde molestias rerum. Id aut quia repudiandae ut quisquam. Enim quo dolore dignissimos mollitia. Qui dicta explicabo saepe ea dolorem possimus et. Dolores architecto velit sed magnam rerum.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (6, 2, 3, 'Voluptatem alias et officia autem.', 'et-qui-qui-veniam-sed-excepturi', 'Ipsa qui dolorem facilis eos velit non voluptatem quibusdam. Labore laudantium est in eum ex. Ex et non consectetur eos.', '<p>Modi enim tenetur quae dolores voluptatem quia. Doloremque sed enim nihil nihil iusto repellat nisi. Voluptatem nihil quia esse et cumque.</p><p>Omnis voluptatem dicta ut corporis iste eveniet. Beatae tenetur enim quidem rerum dicta dolorum. Sit perferendis officiis expedita aut dolorem. Aut eos alias reprehenderit alias facere consequatur earum qui. Quia est commodi possimus molestias quas deleniti et ipsum.</p><p>Eos velit ut rerum. Rerum doloremque corporis earum qui debitis porro. Impedit suscipit delectus sed sit eum. Quidem sapiente nihil velit.</p><p>Dolorem quia et ut consequuntur sed culpa officiis. Sit distinctio vel voluptatem magnam enim. Optio nisi sit autem voluptatem distinctio nihil quisquam. Quibusdam maxime numquam qui enim voluptas fuga. Itaque minus est laudantium mollitia.</p><p>Est odit odio et vero aut voluptatem et ad. Aut consequatur ullam voluptas autem. Eum consequuntur ipsam in corrupti totam. Et dolor iste molestiae nesciunt eaque ea expedita facere.</p><p>Cumque sapiente ut velit. Quis sit vero veniam alias consequuntur maiores accusantium et. Dolorem quia consectetur repellendus et consectetur. Ut aspernatur quod placeat et molestias rerum.</p><p>In rerum magnam consequatur sit vero illum. Incidunt ullam ea nemo eveniet nihil quis.</p><p>Odit quis et vel omnis non ut. Veritatis libero dolorem ut in rerum est cumque. Dolorem sit corporis et earum.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (7, 2, 2, 'Cumque ut.', 'sit-nihil-molestiae-ut-illo-nulla-itaque', 'Nam non temporibus quis amet eum magnam modi. Consequuntur excepturi possimus nulla in debitis aliquam debitis. Tempora laboriosam ut qui enim quas vel officia.', '<p>Et consequuntur sit dolores et autem nam quidem. Hic ad aut odit molestiae. Dolore cumque quia consequatur magni.</p><p>Facilis eaque nihil illum quia autem. Omnis ex eligendi nihil molestiae ipsum reprehenderit voluptatem. Explicabo odio corrupti asperiores rerum ad quis sint. Et sunt suscipit est itaque dolore dolor.</p><p>Reprehenderit debitis earum blanditiis sunt. Minima quis minus earum quia qui consequatur. Illum aperiam placeat animi aut labore doloribus quam veritatis. Ut deleniti mollitia omnis excepturi.</p><p>Ipsam non totam aut odit incidunt consectetur. Vel id voluptatem placeat laborum est aliquam rerum. Asperiores voluptatum ut explicabo quis. Ullam animi saepe quae non.</p><p>Culpa et repellat est ut unde. Aut dignissimos maiores laboriosam quos quibusdam minus aut. Consequatur odio consequatur quia quis aut.</p><p>Hic nisi et aspernatur et nesciunt. Aspernatur veniam blanditiis ipsum quis. Sed eius iusto eos mollitia sit officia in.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (8, 1, 2, 'Ut ducimus.', 'laboriosam-aspernatur-beatae-ea-aperiam-nisi-molestiae', 'Rerum nihil aliquid quod sint. In exercitationem in quaerat qui eligendi amet. Odit deserunt velit qui saepe. Et aut quasi accusamus odio quo est.', '<p>Eius nihil sapiente provident autem. Repudiandae sint doloribus consequatur minima rerum facilis maxime. Quasi excepturi aliquid sapiente rerum facilis unde. Ea consequatur vitae non dignissimos quia voluptatem.</p><p>Autem molestiae tenetur libero sed vero aut. Error quam sit et maiores excepturi cupiditate. Qui quo modi aut quidem ipsum. Dolorem maxime molestiae consequatur accusamus.</p><p>Harum iusto iste deserunt repellat. Ut est nihil omnis vero quos. Facere modi voluptates reiciendis aut porro dolorum possimus. Harum et praesentium fuga tenetur non.</p><p>Et qui minima officia asperiores aliquid. Est qui non dolores accusamus doloribus reprehenderit. Placeat cum asperiores sit animi asperiores quasi maiores est.</p><p>Inventore eum provident et omnis ea. Quos voluptatum mollitia voluptas libero omnis mollitia voluptas. Eveniet laboriosam voluptatem nihil et quia.</p><p>Neque fuga deleniti occaecati quasi totam. Aut impedit et facilis rerum quis aut.</p><p>Blanditiis error libero exercitationem. Quo porro et eos itaque rerum a. Repudiandae molestias minus molestiae incidunt est maiores molestiae quibusdam. Sed odit non sunt quaerat sequi.</p><p>Illum et dicta quaerat porro non odio numquam. Corporis commodi eum voluptas sint consectetur omnis necessitatibus. Quo qui ea architecto vel sed vel. Non non eum pariatur omnis.</p><p>Vitae est perspiciatis molestias autem modi autem placeat. Laudantium laudantium eaque rerum totam non ipsum omnis.</p><p>Fugiat quidem facere id dolor dicta atque velit. Autem autem deserunt odit nam aut sed ea. In at non beatae reprehenderit labore.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (9, 2, 2, 'Facere reprehenderit sint optio.', 'optio-quas-quo-voluptas-recusandae-autem', 'Laudantium beatae consequatur dolor modi. Ea aut minima voluptatum minus quas alias. Odio quod aut commodi ut hic quisquam ducimus.', '<p>Qui rerum est quia modi nihil corrupti tenetur. Accusantium impedit quis at. Voluptas aliquid debitis nulla quia cum omnis. Qui iure ipsa quis eum odio ut qui.</p><p>Quia iusto et ut nihil molestias. Est reiciendis quia quos voluptate ut. Et itaque illum repellat earum ea possimus eveniet. Laudantium sit autem in nostrum perspiciatis ex.</p><p>Voluptatem necessitatibus modi ducimus nobis vel. In quia ut illum excepturi suscipit ipsa voluptatibus et. Sunt rerum blanditiis molestiae deleniti.</p><p>Assumenda velit ipsam dolorem est sed. Sed laborum dolorem impedit quas tempore. Iure vero voluptas dolores sunt.</p><p>Sit aliquam sapiente ut nam. Distinctio voluptatem eveniet esse eius. Perferendis quia ut quaerat accusantium explicabo veniam quas. Possimus nihil iusto velit suscipit dolorem nihil.</p><p>Officiis ipsam quidem voluptatem enim fuga ducimus. Id est sint rerum aut voluptas voluptas est. Dolor quod reprehenderit ut modi. Sint explicabo ab autem eos voluptatem nihil expedita.</p><p>Labore cupiditate voluptatem qui reiciendis. Omnis reprehenderit animi qui voluptate labore deserunt. Modi aut ut saepe deserunt cumque qui.</p><p>Maxime et velit consequuntur asperiores ex velit quae et. Odio earum ipsum rem laudantium inventore. Ipsam qui molestiae doloremque. Sint voluptatibus illum quia sed reprehenderit earum eius.</p><p>Architecto dolor facere quod. Ea aut assumenda id qui ut. Magni dolore iste voluptatem quam tempore et.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (10, 1, 3, 'Qui sed ducimus assumenda.', 'nulla-similique-rem-veritatis-id', 'Consequatur facilis ex assumenda vitae commodi ipsa. Beatae porro eos at. Minima ad ipsam dignissimos. Culpa excepturi quia aspernatur quia in ipsum minima voluptate. Quidem inventore sed consequatur omnis quod quisquam sed.', '<p>Quia quo dolores et delectus blanditiis sequi odit. Dolore enim debitis eum in sed architecto. Quia excepturi eius sed.</p><p>Qui magni autem omnis consequatur recusandae explicabo hic nam. Velit est sed omnis est vitae asperiores. Et vero facere alias odio est reiciendis. Laudantium voluptas ut culpa qui.</p><p>Aut nemo consequatur eius fuga. Fuga sed et vel beatae modi recusandae dolorem. Est sed aut aut deleniti libero qui.</p><p>Non maxime quaerat enim molestias dolor nemo. Optio laudantium sequi ut culpa fugiat est. Dolorum voluptates iusto asperiores.</p><p>Rerum recusandae minima mollitia quis ut dolorem. Ea officia ex ipsa id. Ut delectus et dignissimos magnam. Quo minus maiores repudiandae cumque nihil et sunt.</p><p>Sed qui eius inventore illum. Laborum tempore quaerat voluptatibus fugit repellat. Soluta praesentium et cum voluptatem quaerat. Ut veritatis qui officia ut voluptates porro aut.</p><p>Voluptatum fugiat voluptas ea excepturi commodi officiis dolorum. Voluptates excepturi dolor esse laboriosam expedita ut autem alias. Nam quod amet et maiores facere vel eos.</p><p>Dolorem mollitia voluptatum et ullam ipsa soluta commodi. Aliquid labore et aut excepturi tempora. Veritatis iure consectetur in laudantium.</p><p>Exercitationem architecto doloremque incidunt excepturi quas est nobis optio. Voluptatum ea sit ut eius temporibus ea blanditiis delectus. Incidunt unde velit praesentium aut nihil nihil nulla. In totam qui tempore dolorum magni incidunt.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (11, 1, 1, 'Omnis culpa eaque eum ab.', 'laborum-eveniet-enim-consequatur-dolor-dolorum-libero-rerum', 'Iste autem aut quo omnis. Reprehenderit autem inventore pariatur aut et. Ut doloribus eaque sit nemo.', '<p>Eligendi veniam voluptates et blanditiis dicta. Nihil vel et velit eius consectetur qui. Sequi quibusdam aliquam esse mollitia minima in.</p><p>Expedita nihil repellendus aut nam a. Ut laborum quo sunt architecto. Aut labore voluptatem dolor quia quo molestias. Iure adipisci maiores veritatis sed sint. Magni cumque et sit iure.</p><p>Iusto qui doloremque ut laudantium. Officia harum vel nisi numquam ipsa ullam incidunt qui. Voluptate ducimus dolorum aut sit. Vel repudiandae corrupti modi provident aliquam.</p><p>Ad ut hic maiores rerum. Et ipsa voluptatum qui. Alias iure non praesentium ipsam rerum.</p><p>Sed voluptas ut iure fugiat omnis. Assumenda alias quis adipisci impedit odio. Quia provident animi voluptatum officia.</p><p>Omnis qui impedit explicabo voluptatum consequatur dicta. Ea incidunt dignissimos nostrum est in et quia. Quis fugit corrupti ipsa architecto non et.</p><p>Laudantium dignissimos commodi debitis sed. Officia eaque sunt molestiae nisi magni deserunt voluptate. Sed inventore nemo accusantium ut.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (12, 2, 3, 'Eos minima et itaque doloremque praesentium.', 'maiores-nostrum-maiores-ullam-qui', 'Neque exercitationem aut magni ipsa. Aliquid dicta odit qui sed. Dolores exercitationem quidem dolor sunt ipsam. Vel maiores voluptatum nobis eligendi corporis eum consectetur.', '<p>Ullam ab aut voluptatem consequuntur sed aut nobis. Est et inventore voluptatem nisi tempora laboriosam. Ut error sunt qui aut perferendis et et. Itaque nemo deserunt ut impedit odio sunt aut maxime.</p><p>Adipisci velit laudantium aut voluptates culpa. Quas rerum officiis eveniet vero beatae harum non. Reprehenderit accusantium quo excepturi. Qui est quaerat ab illum illum maiores voluptatem.</p><p>Praesentium aut aut voluptatum aliquid. Sed dolorem labore nobis et ut. Aut sit iure est quaerat distinctio.</p><p>Aut blanditiis temporibus quisquam ipsa rerum. Ex ut eaque consectetur et dicta laboriosam illum quibusdam. Non dolorem illum consectetur aut nihil quia.</p><p>Voluptas beatae natus quia omnis totam consequatur quibusdam. Rem laboriosam architecto eum at corporis ex occaecati excepturi. Sapiente veritatis atque qui et impedit quidem reprehenderit.</p><p>Sequi dolore aut quo dolor consequatur sit ut. Blanditiis est quos aliquid voluptates necessitatibus.</p><p>Doloremque repellat consequatur possimus. Consequatur asperiores voluptate expedita voluptates aliquid et. Qui deserunt id tempore sed quasi. Architecto dolor et minus ea.</p><p>Culpa doloremque explicabo tempore voluptatem dolor quod. Qui sequi cumque veniam sunt. Natus minima temporibus perferendis sunt magni.</p><p>Enim sunt id molestias sed atque voluptatem deserunt. Aperiam error dolores minima dolor dicta iure aspernatur. Asperiores dolores quasi molestiae eligendi modi qui facere. Odit quam consequuntur asperiores necessitatibus aut esse qui.</p><p>Veritatis consequatur quia incidunt molestias necessitatibus. Impedit ipsum exercitationem facilis labore illum. Magni sed repellat amet reprehenderit necessitatibus ducimus. Alias officia error itaque non non.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (13, 2, 2, 'Sed porro tempore quisquam veniam accusamus nihil voluptatem aspernatur suscipit modi.', 'eos-ea-sed-blanditiis-tenetur-autem-itaque-quam-autem', 'Dolorem voluptas consequatur nulla nihil. Cum enim id qui. Enim impedit qui voluptatem nostrum minus assumenda.', '<p>In ut consequuntur praesentium ab voluptatem. Delectus aut repudiandae asperiores quidem. Tenetur nesciunt rerum atque eos non odio. Molestias dolor consequatur aut quo neque et aut.</p><p>A nemo et dolores. Ipsa at voluptatem magnam praesentium. Autem quia voluptatum expedita aut.</p><p>Est sequi blanditiis molestiae reiciendis itaque quia eum. Et corporis et consequatur. Voluptates in minus rem sit modi. Ea id placeat corrupti quidem.</p><p>Qui sint accusamus molestiae accusantium quo a voluptatem ut. Eius laboriosam autem dolores consequatur. Cumque minima vitae voluptas eius perspiciatis suscipit qui. Laudantium qui culpa modi.</p><p>In qui maiores voluptatem. Hic est asperiores eligendi accusamus. Eum reiciendis eaque et velit repellendus ipsum. Quas et atque quasi beatae rerum occaecati fuga odio. Iste voluptas et et necessitatibus cumque quibusdam illum.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (14, 1, 3, 'Vitae aut.', 'et-ab-corrupti-et-consequuntur-aut', 'Enim dignissimos culpa optio. Voluptate veniam illum eius earum neque. Inventore enim aperiam qui non qui. Rerum illum rerum id nihil cumque animi sequi.', '<p>Neque impedit cumque mollitia facilis voluptas veritatis aut. Rerum dolor rerum corrupti ratione et doloremque dolorem distinctio. Omnis maxime sapiente ab distinctio. Adipisci corporis enim rerum placeat doloremque omnis. Id excepturi est omnis consequuntur.</p><p>Quia debitis quibusdam ipsam et. Ipsum ab eum quae.</p><p>Ex aspernatur aut velit sunt beatae ut qui. Qui voluptatem qui vel iste quos. Minus consequatur autem fugit sit illo.</p><p>Sapiente possimus numquam labore eos omnis impedit. Ex et nihil hic nulla odit non. Magni et ut quam unde nostrum.</p><p>Recusandae autem veritatis quia dolores esse cum. Autem sit magnam consequatur enim. Aliquid corporis doloribus assumenda ratione.</p><p>Odio nihil veniam rerum doloremque in. Dolorem aliquid iure sed sunt in tempore. Dicta ab veritatis minima sed laborum expedita nam. Accusamus inventore dolor voluptatem facilis.</p><p>Doloremque numquam quo debitis illum dolor rerum suscipit. Tenetur porro quo molestiae ipsam placeat ea. Quia esse accusamus et et. Natus neque expedita quia deserunt exercitationem rerum sunt iusto.</p><p>Reprehenderit ipsam quibusdam ut aut et eveniet excepturi doloribus. Dolores libero labore et est.</p><p>Dolores maiores ut quo ratione velit ullam sed dolor. Dolore neque magni aperiam praesentium reprehenderit rem et. Aperiam iusto est commodi ut assumenda ea. Sed commodi nostrum nihil eaque delectus harum.</p><p>Et eum possimus magni. Inventore numquam iure ratione et et. Asperiores tempora sed iusto deleniti facere voluptates aut porro.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (15, 1, 3, 'Rerum enim inventore qui et ex recusandae ipsum odio sed.', 'harum-ex-quam-ratione-id-iusto-iste', 'Ut enim minima et facere nisi eos et vitae. At autem non facere voluptas id aliquam fugit. Culpa et quidem rem provident id blanditiis suscipit. Assumenda dignissimos optio sed dignissimos corporis.', '<p>Qui facilis illo asperiores debitis et. Sit nihil quo consequuntur quis enim maiores. Accusantium sed adipisci ad qui. Aut illo aut maiores possimus voluptate ad beatae.</p><p>Blanditiis nam qui dolores. Architecto rerum molestiae deleniti vero deleniti. Velit maxime temporibus voluptatem. Cumque et enim aperiam distinctio cupiditate.</p><p>Facilis autem expedita commodi. Fuga sint assumenda mollitia veniam dolorem eum. Dolore saepe et numquam dolorem eum. Delectus quae omnis ex deleniti optio est vel.</p><p>Hic architecto totam alias doloremque qui. Eum dolores facere voluptas voluptatem et dolorem iste. Iusto est et minima harum accusantium. Magni dolorem dignissimos amet dolorem autem omnis ad recusandae.</p><p>Quo veritatis ipsam qui consequuntur architecto excepturi et. Qui reiciendis ullam eius praesentium. Beatae qui minus quia optio et. Dolorem quia nobis repellat accusantium consequatur.</p><p>Ipsum fugit quia repudiandae quia incidunt ad. Dolore unde voluptatum est corporis. Excepturi et tenetur dolores atque ut id et.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (16, 2, 1, 'Mollitia sed.', 'laborum-itaque-fugit-architecto-fugiat-eligendi-blanditiis-exercitationem-necessitatibus', 'Ullam voluptate similique libero dolorum praesentium consectetur sed. Adipisci officia ab repudiandae voluptatem doloribus laborum.', '<p>Repellat neque ut quidem animi. Tempore eveniet sint aut asperiores. Qui in nihil ut nihil quia.</p><p>Aperiam ipsum eaque quod omnis sequi nihil assumenda aperiam. Ut vitae illo reiciendis consequatur voluptatibus magnam quisquam. Rerum expedita dolorem ex harum unde facere sapiente. Animi saepe veritatis ut maxime magni magnam.</p><p>Officiis qui ipsam quo. Sit esse officiis est repellendus. Qui necessitatibus aut vel minus aut consequatur.</p><p>Voluptas nihil repellat provident consectetur. Cumque omnis iusto delectus dolorum est ut quam. Enim officiis consequatur eos aut vel animi facere sapiente. Perspiciatis omnis sint deserunt molestias.</p><p>Temporibus nisi sunt velit pariatur minus libero. Animi laudantium exercitationem nam perferendis. Omnis sunt non quaerat eos. Eveniet iusto molestiae non voluptatem eos. Vel accusamus odit voluptas non voluptas.</p><p>Sint quis illum eligendi sit nihil. Pariatur corporis quis ex velit non blanditiis. Eveniet in corporis ea. Molestiae sint id sunt facere voluptate necessitatibus odit.</p><p>Mollitia et consectetur expedita ullam. Aut cum accusantium magni. Molestias dolore doloremque quibusdam nobis molestiae. Sed ad et in aperiam in.</p><p>Quod nihil qui eos aut quis nihil incidunt. Doloremque alias dolorum maiores nobis quos est similique. Et animi consequatur ut amet esse magni et minus.</p><p>Non vel voluptates soluta molestias. Quam blanditiis ad molestias fuga dolor magnam maxime. Iusto doloremque facere ipsam qui aut enim praesentium.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (17, 1, 3, 'Voluptas consequatur id illum aut sed tenetur ea.', 'voluptatem-non-amet-ex-quia-totam-vero-est', 'Facilis optio est occaecati ducimus fuga. Saepe vero recusandae distinctio ut delectus. Necessitatibus repellat quae dolor quos similique repellat cupiditate.', '<p>Quos vitae corporis sequi necessitatibus. Nesciunt iure quibusdam rem dolorem qui et culpa. Odio et dicta voluptatem deleniti.</p><p>Voluptatem aspernatur quia dolores est ut. Quia omnis et commodi omnis laboriosam. Voluptatum laboriosam quae tempore neque cum. Quia natus qui nostrum eos tempore.</p><p>Quia ut non ut totam quia. Sit id placeat aut velit vel tempore voluptas. Et quis voluptatum rem.</p><p>Excepturi id eum ab corporis. Sit et fuga est. Impedit eos nulla maiores est suscipit aut aliquid.</p><p>Suscipit modi consequatur minima voluptates possimus. Minima sit mollitia aut. Repellendus dolores itaque et laboriosam omnis et ratione. Corporis numquam consequatur nostrum quis ratione.</p><p>Minus ut saepe dolores ut debitis minus et. Provident aspernatur reiciendis corporis aut consectetur. Est facere quas iste in est velit. Facere sint explicabo ducimus in.</p><p>Deleniti quos sed dolorem voluptatibus ea et. Impedit voluptas incidunt id expedita quae. Culpa et ipsa ut sapiente ea et. Suscipit et dicta nihil et corporis eum cumque ipsam.</p><p>Id rerum temporibus ea provident facilis consectetur et. Voluptatem sed temporibus inventore officiis voluptatem. Harum ipsa nam voluptatem quo magnam voluptatem consequatur nulla.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (18, 1, 2, 'Et unde quaerat.', 'occaecati-nisi-quo-ipsum-modi-est', 'Impedit est deserunt quia et iure. Aliquid et temporibus similique officia quis similique. Ipsam repudiandae praesentium earum et sed maiores laboriosam. Qui aut error dolores blanditiis inventore sit.', '<p>Voluptatem nihil blanditiis sed reprehenderit mollitia reiciendis quod. Et autem omnis voluptatem sed omnis adipisci. Aperiam nobis laudantium ut recusandae mollitia qui qui. Sit nemo at quia dolorem magnam explicabo magni.</p><p>Adipisci tenetur optio qui est nostrum quo aut ut. Necessitatibus praesentium dolor rerum ea. Ut delectus iure aut cupiditate sed.</p><p>Est exercitationem dignissimos sapiente et perspiciatis. Qui placeat ut eaque consequatur iste perspiciatis. Nulla esse reiciendis sit cum nobis nostrum facilis aut.</p><p>Quos voluptates iusto maiores aliquam ipsam. Quidem maiores id eligendi ratione.</p><p>Nihil modi aut debitis tempora. Corporis et nulla ipsam quasi et. Suscipit quibusdam magnam rem et voluptatem incidunt.</p><p>Occaecati facere quaerat provident est. Praesentium est magni et sequi. Magnam quaerat amet ad debitis. Voluptatibus dicta est molestiae.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (19, 2, 2, 'Cupiditate officia voluptatem facilis laborum occaecati saepe consequatur consequatur velit et tenetur.', 'nobis-ut-et-debitis-dolor-perspiciatis-nam-laborum', 'Est magnam laboriosam aliquid dicta corporis. Et totam dolor accusamus itaque dolores. Perspiciatis iste sit ut. Illo delectus quibusdam est id.', '<p>Aut voluptatum dicta consequatur in et et. Et qui numquam quas exercitationem tempora libero iure. Explicabo tempora veritatis voluptatibus. Dicta assumenda distinctio quisquam.</p><p>Magnam aperiam neque nemo occaecati est voluptatum. Quis natus voluptas ratione exercitationem ut necessitatibus. Blanditiis minima voluptatem officiis voluptas. Debitis officia sed et et.</p><p>Et neque incidunt laudantium beatae cum voluptatem nobis. Consequatur et est ut rerum quis et. Inventore veritatis aliquam in doloremque. Asperiores consequatur dolor iure aperiam perspiciatis quia rerum.</p><p>Voluptatem non nobis et minima sit cum debitis in. Deleniti ut deserunt ipsam numquam suscipit aliquid. Ex in odio facilis totam.</p><p>Vero perspiciatis vitae cum minima repudiandae delectus. Aperiam est non est quam consequuntur fugiat explicabo. Eaque doloremque qui quas ullam minus tenetur cupiditate. Eos vel voluptatibus molestiae ratione aliquid quo nisi.</p><p>Et qui magnam et dolor enim vel. Omnis dolorum aperiam culpa impedit corrupti. Qui officia vero cupiditate maiores doloremque sapiente. Sit labore ducimus et temporibus et nostrum minus.</p><p>Aut eos minima sit cum magni. Sit voluptatum eveniet beatae omnis molestiae doloremque vero. Omnis laboriosam culpa voluptatem consequuntur quasi ut recusandae.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `posts` VALUES (20, 1, 2, 'Tenetur explicabo odit molestiae.', 'tempore-enim-est-aperiam-corrupti-nobis-fuga-ullam', 'Vitae a in ad et. Quos harum impedit cupiditate. Est veniam ex molestias maxime enim quos. Sint neque enim expedita architecto ut. Autem magni quaerat est voluptates ea facilis velit nesciunt.', '<p>Sint sit et dignissimos. Saepe minima quia fuga dolorem velit est est. Id nam soluta id saepe voluptas ducimus optio perferendis.</p><p>Aspernatur aut numquam illo neque ipsam. Labore similique totam qui eveniet nihil. Vel ipsum omnis iste blanditiis sed neque sunt. Suscipit velit ratione exercitationem dolor corrupti. Incidunt ut eius quasi voluptate voluptas et.</p><p>Fugiat eveniet consequatur quod qui illum. Magni cum sequi temporibus dolore est. Placeat quia qui provident distinctio.</p><p>Quia fugit id in velit distinctio nisi in unde. Sit delectus occaecati hic doloribus quae. Aut sit eaque et dignissimos est aut at.</p><p>Modi dolore aliquam impedit voluptates. Fugiat eaque id velit sit. Accusantium velit quam voluptatem aliquid ea id recusandae.</p><p>Iusto non voluptatem consequatur optio voluptatibus voluptatem impedit. Explicabo voluptatem officiis et vitae. Et voluptatum non nihil est.</p><p>Placeat in tempora maiores ducimus architecto. Ea quis cumque quam quo. Vel iusto enim doloribus numquam. Voluptatem et dolorem magni pariatur sunt.</p>', NULL, '2023-07-12 01:47:02', '2023-07-12 01:47:02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Usman Budiman S.T.', 'dmardhiyah', 'putri52@example.net', '2023-07-12 01:47:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fvojzXUCZ1', '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `users` VALUES (2, 'Safina Wastuti', 'lnajmudin', 'dnasyiah@example.org', '2023-07-12 01:47:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wc5ESbCqpI', '2023-07-12 01:47:02', '2023-07-12 01:47:02');
INSERT INTO `users` VALUES (3, 'Lega Waluyo', 'adiarja12', 'kayla.oktaviani@example.org', '2023-07-12 01:47:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tAMeHiDD1s', '2023-07-12 01:47:02', '2023-07-12 01:47:02');

SET FOREIGN_KEY_CHECKS = 1;