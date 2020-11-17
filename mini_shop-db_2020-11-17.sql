
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 1, 1727, '2020-11-17 05:52:12', NULL);


CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 5, 1, 569),
(1, 3, 1, 579),
(1, 6, 1, 579);

CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(1, '愛 心凌', '<p>嘿 心凌<br />\r\n不准情緒化 不准偷偷想念 不准回頭<br />\r\n<br />\r\n完美蛻變堅持獨行 將甜美進行到底<br />\r\n首波上線 好評完勝 華語歌壇就等這一張</p>\r\n', 499, 1, '2020-11-17 05:39:56'),
(2, 'My! Cyndi! 正式版', '<p>My! Cyndi!<br />\r\n一場心凌相通的遇見<br />\r\n<br />\r\n在你身邊的極精選 這些歌聲就是永遠<br />\r\n<br />\r\n收錄20首演唱會曲目，走進錄音室還原錄唱，每一首歌都有我們的記憶，都能讓你我一起哼唱。<br />\r\n9/20愛凌發行<br />\r\n<br />\r\n不管你有沒有愛過她，2020無法錯過的收藏！<br />\r\nMy! Cyndi! 一張放進心底的精選專輯</p>\r\n', 479, 1, '2020-11-17 05:41:01'),
(3, 'UGLY BEAUTY(怪美珍藏版)', '<p>見怪不怪 美不勝收<br />\r\n打破世俗標準的審美觀 包容大千世界的惡與善<br />\r\n亞洲流行天后 蔡依林 JOLIN最新專輯 UGLY BEAUTY<br />\r\n11首心靈探索自問自答 最誠實的私密音樂日記<br />\r\n<br />\r\n2018.12.26 全球怪美發行<br />\r\n&nbsp;</p>\r\n', 579, 2, '2020-11-17 05:41:57'),
(4, '靈魂出竅(改版)', '<p>嘻哈思想家瘦子E.SO<br />\r\n<br />\r\n全球暖化、森林大火、貧富不均、病毒蔓延<br />\r\n無法解決的事情堆積如山，不能排解的寂寞席捲而來<br />\r\n想逃離每刻的恐懼焦慮，想終結每天的生活苦悶<br />\r\n最好的辦法就是打開音樂，讓自己靈魂出竅一下！<br />\r\n<br />\r\n如果你正這麼想！請務必按下這張專輯！<br />\r\n讓頑童瘦子E.SO帶你見識一下正宗的《靈魂出竅 OUTTA BODY</p>\r\n', 689, 1, '2020-11-17 05:43:07'),
(5, '靈魂出竅(平裝版)', '<p>瘦子E.SO從頑童出道至今，走過精彩光輝的音樂歷程<br />\r\n也替華語市場帶來豐富多元的嘻哈新局面<br />\r\n<br />\r\n有人說饒舌歌手是社會觀察家，透過音樂唱出世俗紅塵的大小事<br />\r\n音樂是他們的生命歷程，五感則是他們的靈感來源<br />\r\n不論你認識的是《Just Believe》那個因夢想而偉大的他<br />\r\n還是《脫罪》中深思沉靜的成熟內斂的青年 ; 亦或是《地痞》<br />\r\n裡訴說自我始終如一態度十足的 瘦子E.SO<br />\r\n但不論是哪個角色，哪個他，經歷歲月的洗鍊，在頑童單飛不解散後<br />\r\n他對生命有了更深的體悟<br />\r\n<br />\r\n頂著金曲光環，背負多人的期待，2020 瘦子E.SO 將帶給大家全新的思維角度與音樂感受，<br />\r\n宣告大家我的改變即是我的音樂歷程上的新開端，在這個新的十年，他將帶給大家更多新觀點，更不忘初心的用音樂闡述更多關於他對於愛的議題</p>\r\n', 569, 2, '2020-11-17 05:44:17'),
(6, '無名英雄－黑膠', '<p><br />\r\n成軍邁向20年，滅火器在第五張專輯《無名英雄 Stand Up Like A Taiwanese》裡，擷取島上⺠主歷程中不同的時 代片段，接起世代台灣⼈的故事，再將從逆境奮起的期 盼，交給下⼀個年輕世代。 台灣島上的⼈們，有著不斷被置換的記憶，不斷被強加的 ⾝份。外⼒摧毀共享的歷史，更讓說出⾃⼰名字，變成⼀ 件需要勇氣的事。荒謬、苦悶與迷惘，或許讓⼈耽溺在厭 世感裡，輕易地踏在許多前⼈⽤⾎淚爭取來的⾃由上，卻 不再寄望能打造這塊島嶼的未來。 滅火器⽤《無名英雄 Stand Up Like A Taiwanese》向蔓延 的漠然怒吼，延續⼀貫的熱⾎，點燃對所有台灣⼈的呼 喚－不要害怕說出⾃⼰的名字。昂⾸挺立，我們能擔起這 個名字，也能打造更好的國家。</p>\r\n', 579, 2, '2020-11-17 05:50:34');


CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(1, 'yee', 'yee666', '$2y$10$qL8fDRxhGg9f8rW59.ysYegBYv9k72XC7IFhhDL/yfSDT75bvXGA6', '107b33393@mailst.cjcu.edu.tw', '女士', '0988205816', '116', '台北市', '文山區', '一壽街116號');

ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);


ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);

-
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);


ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=2;


ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=7;


ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=2;
COMMIT;

