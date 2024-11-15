-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-11 08:16:48
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `aa`
--

-- --------------------------------------------------------

--
-- 資料表結構 `activity_table`
--

CREATE TABLE `activity_table` (
  `act_id` int(11) NOT NULL COMMENT '活動編號',
  `act_type` varchar(50) DEFAULT NULL COMMENT '活動名稱',
  `act_info` varchar(2000) DEFAULT NULL COMMENT '活動內容',
  `Acc` varchar(12) DEFAULT NULL COMMENT '帳號',
  `act_img` varchar(255) DEFAULT NULL COMMENT '活動附圖',
  `act_sta` date DEFAULT NULL COMMENT '活動開始時間',
  `act_end` date DEFAULT NULL COMMENT '活動結束時間',
  `act_msg` varchar(200) DEFAULT NULL COMMENT '備註',
  `act_cash` int(11) DEFAULT NULL COMMENT '報名費用',
  `act_st` int(11) DEFAULT NULL COMMENT '活動狀態',
  `act_maxnum` int(11) DEFAULT NULL COMMENT '上限人數',
  `act_num` int(11) DEFAULT NULL COMMENT '報名人數'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `activity_table`
--

INSERT INTO `activity_table` (`act_id`, `act_type`, `act_info`, `Acc`, `act_img`, `act_sta`, `act_end`, `act_msg`, `act_cash`, `act_st`, `act_maxnum`, `act_num`) VALUES
(1, 'AAA', 'AAA', 'Wendy94', '活動圖片檔案/1727002602_國際創新發明競賽海報範例.jpg', '2024-09-26', '2024-10-03', 'AAA', 2333, 0, NULL, NULL),
(2, 'AAA', 'AAA', 'Wendy94', '活動圖片檔案/1727335300_c837a6_1164bd9a80a84d56b72dfd9692fd0c03~mv2.jpg', '2024-09-26', '2024-09-30', '', 0, 0, NULL, NULL),
(3, 'AAA', 'AAA', 'Wendy94', '無圖片.png', '2024-09-30', '2024-10-01', '', 0, 0, NULL, NULL),
(4, '燕子', '去看燕子', 'Wendy94', '活動圖片檔案/1727334633_GettyImages-985138634.jpg', '2024-09-27', '2024-09-30', '', 100, 0, NULL, NULL),
(5, '燕子', 'AAA', 'Wendy94', '556253696.jpg', '2024-10-25', '2024-10-28', 'AAA', 123443, 1, 100, NULL),
(6, '', '', 'Wendy94', '無圖片.png', '0000-00-00', '0000-00-00', '', 0, 0, 133, 0),
(7, '9201007', 'ASDF', 'Wendy94', '活動圖片檔案/1729834086_1 (2).jpg', '2024-10-25', '2024-10-31', 'ASDFAFDS', 666, 0, 33, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `ad_table`
--

CREATE TABLE `ad_table` (
  `Ad_id` int(11) NOT NULL COMMENT '廣告編號',
  `Acc` varchar(20) NOT NULL COMMENT '帳號',
  `Ad_comid` int(11) NOT NULL COMMENT '投放社區id',
  `Ad_name` varchar(10) NOT NULL,
  `Ad_tel` varchar(50) NOT NULL COMMENT '聯繫Email',
  `Ad_loca` varchar(3) NOT NULL COMMENT '廣告投放位置',
  `Ad_media` varchar(100) NOT NULL COMMENT '廣告多媒體',
  `Ad_st` date NOT NULL COMMENT '廣告開始設置日期',
  `Ad_end` date NOT NULL COMMENT '廣告結束設置日期',
  `Ad_mon` int(5) NOT NULL COMMENT '應付金額',
  `Ad_stat` int(11) NOT NULL COMMENT '廣告投放狀態',
  `Ad_reason` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `community_change_requests`
--

CREATE TABLE `community_change_requests` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL COMMENT '里長帳號',
  `original_comna` varchar(255) NOT NULL COMMENT '原始社區名稱',
  `new_comna` varchar(255) NOT NULL COMMENT '新社區名稱',
  `status` enum('pending','approved','rejected') DEFAULT 'pending' COMMENT '是否同意更改',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '送出申請時間',
  `user_na` varchar(20) DEFAULT NULL COMMENT '里長名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `community_table`
--

CREATE TABLE `community_table` (
  `Com_id` int(11) NOT NULL,
  `Com_na` varchar(20) NOT NULL,
  `Com_acc` varchar(70) NOT NULL COMMENT '處室地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `community_table`
--

INSERT INTO `community_table` (`Com_id`, `Com_na`, `Com_acc`) VALUES
(9146648, '台北市信義區南港花園社區', '');

-- --------------------------------------------------------

--
-- 資料表結構 `function_permissions_table`
--

CREATE TABLE `function_permissions_table` (
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `per_pk` int(11) NOT NULL COMMENT '包裹代收',
  `per_sec` int(11) NOT NULL COMMENT '二手交易',
  `per_los` int(11) NOT NULL COMMENT '失物招領\r\n',
  `per_sign` int(11) NOT NULL COMMENT '活動報名\r\n',
  `per_rep` int(11) NOT NULL COMMENT '社區違規事項檢舉\r\n\r\n',
  `per_sug` int(11) NOT NULL COMMENT '社區建議\r\n',
  `per_pubB` int(11) NOT NULL COMMENT '佈告欄'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `function_permissions_table`
--

INSERT INTO `function_permissions_table` (`Acc`, `per_pk`, `per_sec`, `per_los`, `per_sign`, `per_rep`, `per_sug`, `per_pubB`) VALUES
('889u1', 1, 0, 0, 0, 1, 0, 0),
('AAA678', 1, 0, 0, 0, 1, 0, 0),
('AAAAˋ4', 0, 0, 0, 0, 0, 0, 0),
('Wendy5', 0, 1, 0, 1, 1, 0, 0),
('Wendy9', 0, 0, 0, 0, 0, 0, 0),
('Wendy94', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `lost_thing_table`
--

CREATE TABLE `lost_thing_table` (
  `los_id` int(11) NOT NULL COMMENT '物品編號',
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `los_nam` varchar(20) NOT NULL COMMENT '物品名稱',
  `los_img` varchar(100) NOT NULL COMMENT '物品圖片',
  `los_msg` varchar(50) NOT NULL COMMENT '備註',
  `los_time` date NOT NULL COMMENT '拾取日期',
  `los_stat` int(11) NOT NULL COMMENT '遺失物狀態',
  `los_claim_tel` varchar(15) DEFAULT NULL COMMENT '認領人資訊'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `lost_thing_table`
--

INSERT INTO `lost_thing_table` (`los_id`, `Acc`, `los_nam`, `los_img`, `los_msg`, `los_time`, `los_stat`, `los_claim_tel`) VALUES
(5, 'Wendy94', '林宜臻', './uploaded_files/1728293844_6703abd4a481b.png', '123qwe', '2024-10-06', 1, '0989878765'),
(6, 'Wendy94', '林宜臻', './uploaded_files/1728293890_6703ac0240e96.png', '123qwe', '2024-10-06', 0, NULL),
(7, 'Wendy94', '林宜臻', './uploaded_files/1728294037_6703ac95058f3.png', '123qwe', '2024-10-06', 0, NULL),
(8, 'Wendy94', '林宜臻', './uploaded_files/1728295456_6703b220360bb.jpg', '123qwe', '2024-10-06', 1, '0989876564'),
(9, 'Wendy94', '易孟璿', './uploaded_files/1728297485_6703ba0d7aa59.png', 'AAA', '2024-10-02', 0, NULL),
(10, 'Wendy94', '林宜', './uploaded_files/1728953595_670dbcfb59910.jpg', 'asdfghjk', '2024-10-11', 1, '0989876765');

-- --------------------------------------------------------

--
-- 資料表結構 `message_table`
--

CREATE TABLE `message_table` (
  `mes_id` int(11) NOT NULL COMMENT '留言編號',
  `sug_id` int(11) NOT NULL,
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `mes_per` int(5) NOT NULL,
  `mes_info` varchar(200) NOT NULL COMMENT '留言內容',
  `mes_time` datetime NOT NULL COMMENT '留言時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `noti_table`
--

CREATE TABLE `noti_table` (
  `not_num` int(11) NOT NULL,
  `Acc` varchar(20) NOT NULL,
  `not_tit` varchar(20) NOT NULL,
  `not_con` varchar(200) NOT NULL,
  `not_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `noti_table`
--

INSERT INTO `noti_table` (`not_num`, `Acc`, `not_tit`, `not_con`, `not_time`) VALUES
(1, 'baodi1', '社區建議', '您已在社區留言中留言【活動名稱】。感謝您的參與！', '2024-10-31 23:10:32'),
(2, 'baodi1', '社區建議', '您已在社區留言中留言【活動名稱】。感謝您的參與！', '2024-11-01 08:36:52');

-- --------------------------------------------------------

--
-- 資料表結構 `package_table`
--

CREATE TABLE `package_table` (
  `pk_id` int(11) NOT NULL COMMENT '包裹流水號',
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `pk_num` varchar(30) NOT NULL COMMENT '包裹訂單編號',
  `pk_img` varchar(50) DEFAULT NULL,
  `pk_arrtime` date NOT NULL COMMENT '包裹抵達時間',
  `pk_gettime` date DEFAULT NULL COMMENT '包裹領取時間',
  `pk_stat` int(11) NOT NULL COMMENT '包裹狀態\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `public_board_table`
--

CREATE TABLE `public_board_table` (
  `PubB_id` int(11) NOT NULL COMMENT '佈告欄項目編號',
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `PubB_img` varchar(100) DEFAULT NULL COMMENT '佈告圖片',
  `PubB_imgnam` varchar(200) DEFAULT NULL,
  `PubB_info` varchar(2000) NOT NULL COMMENT '佈告內容',
  `PubB_subtime` date NOT NULL,
  `PubB_st` int(11) NOT NULL COMMENT '置頂',
  `PubB_type` int(11) NOT NULL COMMENT '純文字或圖文',
  `PubB_top_time` date DEFAULT NULL,
  `PubB_only` int(11) NOT NULL COMMENT '社區可見'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `public_board_table`
--

INSERT INTO `public_board_table` (`PubB_id`, `Acc`, `PubB_img`, `PubB_imgnam`, `PubB_info`, `PubB_subtime`, `PubB_st`, `PubB_type`, `PubB_top_time`, `PubB_only`) VALUES
(59, 'Wendy94', './uploaded_files/1729246027_6712334be828e.JPG', 'CVKV5712.JPG', 'FFFFF', '2024-10-18', 0, 1, '0000-00-00', 0),
(60, 'Wendy94', './uploaded_files/1729247339_6712386b40818.PNG', 'BUIJ6112.PNG', 'AAAABBBBBBBBBBBBBBB', '2024-10-18', 1, 1, '2024-10-18', 0),
(61, 'Wendy94', NULL, NULL, 'zzz', '2024-10-18', 1, 0, '2024-10-18', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `repair_table`
--

CREATE TABLE `repair_table` (
  `rep_id` int(11) NOT NULL COMMENT '自動遞增的報修編號',
  `rep_loc` varchar(255) NOT NULL COMMENT '報修地點',
  `rep_nam` varchar(255) NOT NULL COMMENT '報修項目',
  `rep_msg` text NOT NULL COMMENT '報修詳細內容',
  `rep_img` varchar(255) DEFAULT NULL COMMENT '報修照片的檔案路徑',
  `rep_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '報修時間',
  `rep_st` int(11) DEFAULT NULL COMMENT '報修是否完成',
  `rep_com` text DEFAULT NULL COMMENT '報修社區',
  `rep_userAcc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `report_table`
--

CREATE TABLE `report_table` (
  `rep_id` int(11) NOT NULL COMMENT '事件編號',
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `rep_type` int(11) NOT NULL COMMENT '違規類別',
  `rep_info` varchar(2000) NOT NULL COMMENT '詳細描述',
  `rep_img` varchar(100) NOT NULL COMMENT '圖片',
  `rep_time` datetime NOT NULL COMMENT '檢舉日期',
  `rep_stat` varchar(10) NOT NULL COMMENT '處理狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `rep_type_table`
--

CREATE TABLE `rep_type_table` (
  `rep_type` int(11) NOT NULL,
  `rep_na` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `second_hand_table`
--

CREATE TABLE `second_hand_table` (
  `Sec_id` int(11) NOT NULL COMMENT '物品代號',
  `Sec_img` varchar(255) DEFAULT NULL COMMENT '物品圖片',
  `Sec_nam` varchar(20) DEFAULT NULL COMMENT '物品名稱',
  `Sec_tel` varchar(100) DEFAULT NULL COMMENT '聯絡信箱',
  `Sec_old` varchar(5) DEFAULT NULL COMMENT '物品新舊程度',
  `Sec_rev` int(11) DEFAULT NULL COMMENT '上架審核狀態',
  `Sec_time` datetime DEFAULT NULL COMMENT '上架時間',
  `Sec_stat` int(11) DEFAULT NULL COMMENT '認領狀態',
  `Acc` varchar(12) DEFAULT NULL COMMENT '賣家帳號',
  `Sec_Acc` varchar(12) DEFAULT NULL COMMENT '買家帳號',
  `Sec_cash` int(11) DEFAULT NULL COMMENT '價錢',
  `Sec_remark` varchar(200) DEFAULT NULL COMMENT '備註',
  `Sec_class` varchar(10) DEFAULT NULL COMMENT '種類',
  `Sec_Del` int(1) DEFAULT NULL COMMENT '賣家交貨狀態',
  `Sec_Rec` int(1) DEFAULT NULL COMMENT '買家送貨狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `second_hand_table`
--

INSERT INTO `second_hand_table` (`Sec_id`, `Sec_img`, `Sec_nam`, `Sec_tel`, `Sec_old`, `Sec_rev`, `Sec_time`, `Sec_stat`, `Acc`, `Sec_Acc`, `Sec_cash`, `Sec_remark`, `Sec_class`, `Sec_Del`, `Sec_Rec`) VALUES
(1, 'uploads/1729437129_1 (2).jpg', 'bba', 'ghjssdfghf', '九成新', 1, '2024-10-20 23:19:54', 1, 'yaya76', 'yaya76', 66, 'asdf', '家居用品', 1, 1),
(2, 'uploads/1729438458_1 (2).jpg', 'qq', 'afds', '九成新', 3, '2024-10-20 23:34:38', 0, 'yaya76', NULL, 66, 'asdf', '家居用品', 0, 0),
(3, 'uploads/1729838107_1.jpg', '09041', 'ghjssdfghf', '八成新', 3, '2024-10-25 14:59:54', 0, 'yaya76', NULL, 80000, '', '電子產品', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `sec_report_table`
--

CREATE TABLE `sec_report_table` (
  `rpt_id` int(11) NOT NULL COMMENT '二手商品檢舉id',
  `Sec_id` int(11) DEFAULT NULL COMMENT '商品id',
  `Sec_rpt_select` varchar(12) DEFAULT NULL COMMENT '檢舉項目',
  `Sec_rpt_text` text DEFAULT NULL COMMENT '更多檢舉內容',
  `rpt_Acc` varchar(12) DEFAULT NULL COMMENT '檢舉人',
  `Sec_rpt_rev` int(1) DEFAULT NULL COMMENT '檢舉審核'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `sec_report_table`
--

INSERT INTO `sec_report_table` (`rpt_id`, `Sec_id`, `Sec_rpt_select`, `Sec_rpt_text`, `rpt_Acc`, `Sec_rpt_rev`) VALUES
(1, 2, '不當內容', 'adsfasdf', '林', 1),
(2, 3, '垃圾訊息', '1234', '林', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `sign_up_table`
--

CREATE TABLE `sign_up_table` (
  `sign_id` int(11) NOT NULL,
  `Acc` varchar(12) DEFAULT NULL COMMENT '帳號',
  `sign_num` int(11) DEFAULT NULL COMMENT '報名人數',
  `sign_nam` varchar(10) DEFAULT NULL COMMENT '報名人姓名',
  `sign_tel` varchar(11) DEFAULT NULL COMMENT '報名人電話',
  `sign_time` int(11) DEFAULT NULL COMMENT '報名時間',
  `sign_stat` int(11) DEFAULT NULL COMMENT '報名狀態',
  `act_id` int(11) DEFAULT NULL,
  `sign_state` int(1) DEFAULT NULL COMMENT '狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `sign_up_table`
--

INSERT INTO `sign_up_table` (`sign_id`, `Acc`, `sign_num`, `sign_nam`, `sign_tel`, `sign_time`, `sign_stat`, `act_id`, `sign_state`) VALUES
(7, 'yaya76', 1, '林', '900000000', 1729496480, 1, 5, 1),
(8, 'yaya76', 1, '林', '900000000', 1729496743, 1, 5, 1),
(9, 'yaya76', 1, '林', '0912345678', 1729836398, NULL, 5, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `suggestion_table`
--

CREATE TABLE `suggestion_table` (
  `sug_id` int(11) NOT NULL COMMENT '建議編號',
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `sug_com` varchar(20) NOT NULL COMMENT '社區編號',
  `sug_info` varchar(2000) NOT NULL COMMENT '建議內容',
  `sug_date` date DEFAULT NULL COMMENT '建議日期',
  `sug_stat` int(11) NOT NULL COMMENT '建議狀態',
  `sec_rpt_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `suggestion_table`
--

INSERT INTO `suggestion_table` (`sug_id`, `Acc`, `sug_com`, `sug_info`, `sug_date`, `sug_stat`, `sec_rpt_end`) VALUES
(49, 'Wendy94', '9146648', 'asd', '2024-11-02', 0, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `userinfo_table`
--

CREATE TABLE `userinfo_table` (
  `Acc` varchar(12) NOT NULL COMMENT '帳號',
  `pwd` varchar(20) NOT NULL COMMENT '密碼',
  `na` varchar(10) NOT NULL COMMENT '姓名',
  `email` varchar(50) NOT NULL COMMENT '電子郵件',
  `Com_id` int(11) NOT NULL COMMENT '社區代號',
  `per` int(11) NOT NULL COMMENT '權限',
  `sec_rpt_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `userinfo_table`
--

INSERT INTO `userinfo_table` (`Acc`, `pwd`, `na`, `email`, `Com_id`, `per`, `sec_rpt_end`) VALUES
('Wendy94', '123qwe', '洪苡暄', '198@gmail.com', 9146648, 1, NULL),
('yaya76', '123qwe', '林', '109534107@stu.ukn.edu.tw', 9146648, 2, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `activity_table`
--
ALTER TABLE `activity_table`
  ADD PRIMARY KEY (`act_id`);

--
-- 資料表索引 `ad_table`
--
ALTER TABLE `ad_table`
  ADD PRIMARY KEY (`Ad_id`),
  ADD KEY `Ad_comid` (`Ad_comid`);

--
-- 資料表索引 `community_change_requests`
--
ALTER TABLE `community_change_requests`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `community_table`
--
ALTER TABLE `community_table`
  ADD PRIMARY KEY (`Com_id`);

--
-- 資料表索引 `function_permissions_table`
--
ALTER TABLE `function_permissions_table`
  ADD PRIMARY KEY (`Acc`);

--
-- 資料表索引 `lost_thing_table`
--
ALTER TABLE `lost_thing_table`
  ADD PRIMARY KEY (`los_id`);

--
-- 資料表索引 `message_table`
--
ALTER TABLE `message_table`
  ADD PRIMARY KEY (`mes_id`),
  ADD KEY `message_table_ibfk_1` (`sug_id`);

--
-- 資料表索引 `noti_table`
--
ALTER TABLE `noti_table`
  ADD PRIMARY KEY (`not_num`);

--
-- 資料表索引 `package_table`
--
ALTER TABLE `package_table`
  ADD PRIMARY KEY (`pk_id`),
  ADD KEY `Acc` (`Acc`);

--
-- 資料表索引 `public_board_table`
--
ALTER TABLE `public_board_table`
  ADD PRIMARY KEY (`PubB_id`);

--
-- 資料表索引 `repair_table`
--
ALTER TABLE `repair_table`
  ADD PRIMARY KEY (`rep_id`);

--
-- 資料表索引 `report_table`
--
ALTER TABLE `report_table`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `rep_type` (`rep_type`);

--
-- 資料表索引 `rep_type_table`
--
ALTER TABLE `rep_type_table`
  ADD PRIMARY KEY (`rep_type`);

--
-- 資料表索引 `second_hand_table`
--
ALTER TABLE `second_hand_table`
  ADD PRIMARY KEY (`Sec_id`),
  ADD KEY `Acc` (`Acc`),
  ADD KEY `Sec_Acc` (`Sec_Acc`);

--
-- 資料表索引 `sec_report_table`
--
ALTER TABLE `sec_report_table`
  ADD PRIMARY KEY (`rpt_id`),
  ADD KEY `Sec_id` (`Sec_id`);

--
-- 資料表索引 `sign_up_table`
--
ALTER TABLE `sign_up_table`
  ADD PRIMARY KEY (`sign_id`),
  ADD KEY `Acc` (`Acc`);

--
-- 資料表索引 `suggestion_table`
--
ALTER TABLE `suggestion_table`
  ADD PRIMARY KEY (`sug_id`),
  ADD KEY `Acc` (`Acc`);

--
-- 資料表索引 `userinfo_table`
--
ALTER TABLE `userinfo_table`
  ADD PRIMARY KEY (`Acc`),
  ADD KEY `Com_id` (`Com_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `activity_table`
--
ALTER TABLE `activity_table`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活動編號', AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ad_table`
--
ALTER TABLE `ad_table`
  MODIFY `Ad_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '廣告編號', AUTO_INCREMENT=34;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `lost_thing_table`
--
ALTER TABLE `lost_thing_table`
  MODIFY `los_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品編號', AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message_table`
--
ALTER TABLE `message_table`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言編號', AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `noti_table`
--
ALTER TABLE `noti_table`
  MODIFY `not_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `package_table`
--
ALTER TABLE `package_table`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '包裹流水號', AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `public_board_table`
--
ALTER TABLE `public_board_table`
  MODIFY `PubB_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '佈告欄項目編號', AUTO_INCREMENT=62;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `repair_table`
--
ALTER TABLE `repair_table`
  MODIFY `rep_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自動遞增的報修編號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rep_type_table`
--
ALTER TABLE `rep_type_table`
  MODIFY `rep_type` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `second_hand_table`
--
ALTER TABLE `second_hand_table`
  MODIFY `Sec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物品代號', AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sec_report_table`
--
ALTER TABLE `sec_report_table`
  MODIFY `rpt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '二手商品檢舉id', AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `sign_up_table`
--
ALTER TABLE `sign_up_table`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `suggestion_table`
--
ALTER TABLE `suggestion_table`
  MODIFY `sug_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '建議編號', AUTO_INCREMENT=50;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `ad_table`
--
ALTER TABLE `ad_table`
  ADD CONSTRAINT `ad_table_ibfk_1` FOREIGN KEY (`Ad_comid`) REFERENCES `community_table` (`Com_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `message_table`
--
ALTER TABLE `message_table`
  ADD CONSTRAINT `message_table_ibfk_1` FOREIGN KEY (`sug_id`) REFERENCES `suggestion_table` (`sug_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `package_table`
--
ALTER TABLE `package_table`
  ADD CONSTRAINT `package_table_ibfk_1` FOREIGN KEY (`Acc`) REFERENCES `userinfo_table` (`Acc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `report_table`
--
ALTER TABLE `report_table`
  ADD CONSTRAINT `report_table_ibfk_1` FOREIGN KEY (`rep_type`) REFERENCES `rep_type_table` (`rep_type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `second_hand_table`
--
ALTER TABLE `second_hand_table`
  ADD CONSTRAINT `second_hand_table_ibfk_1` FOREIGN KEY (`Acc`) REFERENCES `userinfo_table` (`Acc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `second_hand_table_ibfk_2` FOREIGN KEY (`Sec_Acc`) REFERENCES `userinfo_table` (`Acc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `sec_report_table`
--
ALTER TABLE `sec_report_table`
  ADD CONSTRAINT `sec_report_table_ibfk_1` FOREIGN KEY (`Sec_id`) REFERENCES `second_hand_table` (`Sec_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `sign_up_table`
--
ALTER TABLE `sign_up_table`
  ADD CONSTRAINT `sign_up_table_ibfk_1` FOREIGN KEY (`Acc`) REFERENCES `userinfo_table` (`Acc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `suggestion_table`
--
ALTER TABLE `suggestion_table`
  ADD CONSTRAINT `suggestion_table_ibfk_1` FOREIGN KEY (`Acc`) REFERENCES `userinfo_table` (`Acc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `userinfo_table`
--
ALTER TABLE `userinfo_table`
  ADD CONSTRAINT `userinfo_table_ibfk_1` FOREIGN KEY (`Com_id`) REFERENCES `community_table` (`Com_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
