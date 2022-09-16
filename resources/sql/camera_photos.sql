SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `camera_photos`;
CREATE TABLE `camera_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(50) NOT NULL,
  `file_state` enum('purchased','preview') NOT NULL DEFAULT 'preview',
  `file_name` varchar(50) NOT NULL,
  `reports` int(11) NOT NULL DEFAULT '0',
  `deleted` enum('1','0') NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE moderation_tickets ADD extra_id INT NOT NULL DEFAULT 0;
ALTER TABLE moderation_tickets ADD report_type INT NOT NULL DEFAULT 1;

ALTER TABLE permissions_ranks ADD command_update_camera ENUM('0','1') NOT NULL DEFAULT '0'

INSERT INTO `server_settings` VALUES ('camera.photo.publish.price.duckets', '100', 'The duckets-price of a web publish');
INSERT INTO `server_settings` VALUES ('camera.photo.purchase.item_id', '777954880', 'The item id of the default photo poster');
INSERT INTO `server_settings` VALUES ('camera.photo.purchase.price.coins', '100', 'The coins-price of a photo poster');
INSERT INTO `server_settings` VALUES ('camera.photo.purchase.price.duckets', '100', 'The duckets-price of a photo poster');