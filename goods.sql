/*
 Navicat Premium Data Transfer

 Source Server         : Dylan_localhost
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : engineerpractice

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 17/06/2021 11:50:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsId` int(10) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goodsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
  `goodsType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  `goodsBuyCount` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '销售量',
  `goodsPrice` float(10, 2) NOT NULL COMMENT '商品价格',
  `goodsRemainNum` int(10) NOT NULL DEFAULT 10000 COMMENT 's',
  PRIMARY KEY (`goodsId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'Richmondfinch粉色大理石适用苹果12手机iphone12/11promax保护壳', '1', '158', 147.50, 10000);
INSERT INTO `goods` VALUES (2, '品胜适用于苹果11手机壳液态硅胶iPhone11摄像头全包保护套防摔', '1', '538', 18.00, 10000);
INSERT INTO `goods` VALUES (3, '镜头全包适用于华为p40pro手机壳防摔p40超薄网红por硅胶保护套限量版pro+玻璃高', '1', '26', 65.00, 10000);
INSERT INTO `goods` VALUES (4, '\r\n【官方正品】华为mate40pro手机壳mate40保护套mate40e全包防摔m40新款mt40pro', '1', '4989', 88.00, 10000);
INSERT INTO `goods` VALUES (5, '华为Mate30Pro手机壳Mate30EPro双面玻璃磁吸全包mete防摔曲屏mt30男女款m30', '1', '3074', 86.00, 10000);
INSERT INTO `goods` VALUES (6, 'Apple/苹果 iPhone 12 | 12 Pro 专用 MagSafe 硅胶保护壳', '1', '105', 399.00, 10000);
INSERT INTO `goods` VALUES (7, '苹果12手机壳iPhone12proMax透明软硅胶防摔保护套mini摄像镜头全包耐脏新款网红', '1', '15000', 28.00, 10000);
INSERT INTO `goods` VALUES (8, '适用苹果airpods保护套airpods2二代硅胶保护壳airpodspro无线蓝牙耳机盒ipad壳套一', '1', '269', 27.00, 10000);
INSERT INTO `goods` VALUES (9, '适用于华为mateX2手机壳前屏前壳X2真皮支架折叠屏保护套matex2全屏外壳原装全', '1', '3114', 199.00, 10000);
INSERT INTO `goods` VALUES (10, '华为mateRS手机壳真皮mate40rs保时捷mate30Epro限量5g版20por原装皮套', '1', '2904', 168.00, 10000);
INSERT INTO `goods` VALUES (11, '华为mate40rs保时捷版手机壳真皮智能视窗翻盖式原装保护套限量皮套防摔', '1', '991', 499.00, 10000);
INSERT INTO `goods` VALUES (12, '畅行天下 华为mate40pro+手机壳防偷窥mate40e防窥全包镜头mate40rs保时捷mt', '1', '3774', 85.00, 10000);
INSERT INTO `goods` VALUES (13, '华为Mate40pro真皮手机壳mate官方同款原装素皮版5g超薄全包防摔适用于40pro+新', '1', '2000', 138.00, 10000);
INSERT INTO `goods` VALUES (14, '图拉斯iPhone12手机壳苹果12ProMax玻璃Pro透明Max防摔Mini超薄套保护镜头全包', '1', '15000', 68.00, 10000);
INSERT INTO `goods` VALUES (15, '适用于华为mate40pro手机壳mate40e双面玻璃mete40pro十磁吸mt40防摔保护套', '1', '5500', 118.00, 10000);
INSERT INTO `goods` VALUES (16, '适用华为mate40pro手机壳真皮翻盖P40外壳无边框魅特m40p全包防摔保护套30Epro', '1', '2232', 198.00, 10000);
INSERT INTO `goods` VALUES (17, '适用于华为mate40保时捷手机壳RS真皮原装mate40RS智能翻盖皮套mate40pro典藏', '1', '5000', 198.00, 10000);
INSERT INTO `goods` VALUES (18, '新款华为MateX2折叠屏手机壳X2原装立式支架保护套真皮智能视窗超薄外壳防摔全包', '1', '2820', 168.00, 10000);
INSERT INTO `goods` VALUES (19, '适用于华为mate40防窥壳mate40pro手机壳防偷窥mate全包防摔40双面玻璃磁吸手机', '1', '2370', 138.00, 10000);
INSERT INTO `goods` VALUES (20, '畅行天下 华为MateXS手机壳原装折叠屏mete防窥偷窥看全包镜头mateX超薄防摔', '1', '1466', 156.00, 10000);
INSERT INTO `goods` VALUES (21, '一加OnePlus 9手机骁龙888旗舰120Hz屏幕游戏拍照一加', '2', '7000', 3599.00, 10000);
INSERT INTO `goods` VALUES (22, ' Huawei/华为 nova 7 5G手机官方旗舰店正品nova7pro降价5g全网', '2', '13', 2999.00, 10000);
INSERT INTO `goods` VALUES (23, 'xiaomi/小米 Redmi 9A 红米9A手机大字体大电量大屏幕学生备用机老', '2', '161', 865.00, 10000);
INSERT INTO `goods` VALUES (24, 'xiaomi/小米 Redmi 9A 红米9A手机大字体大电量大屏幕学生备用机老', '2', '70000', 599.00, 10000);
INSERT INTO `goods` VALUES (25, 'Huawei/华为畅享20 Plus 5G超级快充手机华为手机华为官方旗舰店畅享', '2', '4724', 2499.00, 10000);
INSERT INTO `goods` VALUES (26, 'HUAWEI/华为Mate 40 Pro麒麟徕卡曲面华为手机5g手机智能手机华为官', '2', '25000', 6299.00, 10000);
INSERT INTO `goods` VALUES (27, 'Huawei/华为Mate 40 Pro5G手机麒麟9000芯片华为官方旗舰店直', '2', '418', 5688.00, 10000);
INSERT INTO `goods` VALUES (28, 'vivo iQOO Neo3高通骁龙865处理器5g游戏爱酷智能', '2', '1064', 2698.00, 10000);
INSERT INTO `goods` VALUES (29, 'Xiaomi/小米 红米Redmi K40 5G手机官方', '2', '1828', 1999.00, 10000);
INSERT INTO `goods` VALUES (30, 'vivo iQOO 7新品上市骁龙888处理器正品智能手机vivo', '2', '4269', 3398.00, 10000);
INSERT INTO `goods` VALUES (31, '三星 Galaxy S20 FE 5G【立省1200】Samsung SM-G7810骁龙865 双模拍照手', '2', '598', 3599.00, 10000);
INSERT INTO `goods` VALUES (32, 'Huawei/华为畅享20 SE 4G手机官方旗舰店正品畅想30上市', '2', '3898', 1598.00, 10000);
INSERT INTO `goods` VALUES (33, 'Redmi K40 骁龙870智能游戏电竞拍照新品5g手机小米官方旗舰', '2', '2785', 2499.00, 10000);
INSERT INTO `goods` VALUES (34, 'vivo X60 pro 5G手机能良中国移动官旗vivox60pro x60pro', '2', '1063', 4498.00, 10000);
INSERT INTO `goods` VALUES (35, 'vivo iqoo z3 新品5g手机 vivoz3 iq00z3 能良中国移动官旗 ipooz3 vivo手机', '2', '1156', 1799.00, 10000);
INSERT INTO `goods` VALUES (36, '一加OnePlus 9手机骁龙888旗舰120Hz屏幕游戏拍照一加', '2', '7000', 3599.00, 10000);
INSERT INTO `goods` VALUES (37, 'vivo iQOO Z35g新品学生闪充游戏拍照手机官方正品\r\n', '2', '1947', 1799.00, 10000);
INSERT INTO `goods` VALUES (38, 'HONOR 荣耀Play4T Pro麒麟芯片屏幕指纹拍照手机官方', '2', '405', 1199.00, 10000);
INSERT INTO `goods` VALUES (39, 'Huawei/华为Mate 40 Pro5G手机66W快充华为官方旗舰店麒麟处', '2', '349', 5199.00, 10000);
INSERT INTO `goods` VALUES (40, 'vivo iQOO Neo5 5g手机iqooneo5 vivoiqooneo5爱酷', '2', '374', 2699.00, 10000);
INSERT INTO `goods` VALUES (41, '三星Galaxy Tab S7 S7+【24期免息】Samsung 新款学生学习平板电脑 官方正品', '3', '353', 8399.00, 10000);
INSERT INTO `goods` VALUES (42, '博仑帅多功能一体机电脑家用办公高配游戏型i5i7独显超薄网吧吃鸡主机24-27英寸设计', '3', '22', 1799.00, 10000);
INSERT INTO `goods` VALUES (43, '攀升 酷睿i7 10700K/RTX 3070DIY配置组装台式机网吧LOL整机全套电竞直播水冷', '3', '10', 14099.00, 10000);
INSERT INTO `goods` VALUES (44, '雷神ZERO 2021新款游戏笔记本电脑16英寸11代英特尔酷睿i7-', '3', '324', 12999.00, 10000);
INSERT INTO `goods` VALUES (45, '雷神11代英特尔酷睿911MT 笔记本电脑电竞游戏本手提电脑', '3', '379', 8199.00, 10000);
INSERT INTO `goods` VALUES (46, '攀升 AMD锐龙主机 R5 3600/RTX3060 12G高配吃鸡电竞游戏主机DIY网吧主播全', '3', '186', 6599.00, 10000);
INSERT INTO `goods` VALUES (47, 'DELL/戴尔 14英寸/15.6英寸11代英特尔酷睿轻薄本便携笔记本电脑办公', '3', '399', 4219.00, 10000);
INSERT INTO `goods` VALUES (48, '惠普HP 小欧系列酷睿i5/i7 2G独显办公家用商用mini台式机电脑 迷你', '3', '219', 3599.00, 10000);
INSERT INTO `goods` VALUES (49, '【2021新品】戴尔/DELL 灵越13 Pro 13.3英寸11代英特尔酷睿EVO轻薄本独显笔记本', '3', '1218', 5699.00, 10000);
INSERT INTO `goods` VALUES (50, 'Lenovo/联想小新15 2021热销款六核锐龙R5轻薄笔记本便携学生商务', '3', '275', 3799.00, 10000);
INSERT INTO `goods` VALUES (51, '雷神911STMT15.6英寸i7 GTX1650Ti', '3', '126', 4999.00, 10000);
INSERT INTO `goods` VALUES (52, '雷神911Plus17.3英寸i7 GTX1650Ti RTX3060独', '3', '130', 6599.00, 10000);
INSERT INTO `goods` VALUES (53, '攀升台式电脑主机十代酷睿i5 10500办公电脑家用游戏主机企业采购设计师电脑台式组', '3', '1039', 2599.00, 10000);
INSERT INTO `goods` VALUES (54, 'ROG魔霸新锐十代酷睿i7手提15.6英寸电竞学生办公便携游戏本', '3', '435', 8499.00, 10000);
INSERT INTO `goods` VALUES (55, 'Lenovo/联想 拯救者 R7000 2020锐龙游戏笔记本电脑8核R7轻薄独显4G手提游戏本', '3', '563', 5999.00, 10000);
INSERT INTO `goods` VALUES (56, '京天华盛i3 9100F升10100办公电脑主机高配游戏组装机DIY兼容机mini迷你台式机品', '3', '479', 1699.00, 10000);
INSERT INTO `goods` VALUES (57, '荣耀笔记本14/15 2021新款 英特尔11代酷睿i5/i7 轻薄笔记本电脑便携本学生护眼全面', '3', '652', 4899.00, 10000);
INSERT INTO `goods` VALUES (58, '荣耀笔记本14/15 2021新款 14/15.6英寸 英特尔11代酷睿i5/i7 笔记本电脑轻薄便携商务', '3', '1573', 4899.00, 10000);
INSERT INTO `goods` VALUES (59, 'ALIENWARE外星人全新m15 R4英特尔i7游戏3060笔记本电脑15.6', '3', '553', 13999.00, 10000);
INSERT INTO `goods` VALUES (60, 'ALIENWARE外星人全新m17 R4英特尔酷睿i7游戏本轻薄便携笔', '3', '164', 17999.00, 10000);
INSERT INTO `goods` VALUES (61, '爱国者鼠标有线机械电竞游戏宏静音无声电脑笔记本USB办公家用竞技cf穿越火线专用绝地求生吃鸡压枪lol男女生', '3', '2772', 19.80, 10000);
INSERT INTO `goods` VALUES (62, 'AOC机械键盘鼠标键鼠套装青轴黑轴茶轴红轴游戏电脑办公有线网吧电竞外设全键GK410', '3', '125', 138.00, 10000);
INSERT INTO `goods` VALUES (63, 'Razer雷蛇炼狱蝰蛇标准V2迷你专业版笔记本电脑有线游戏电竞鼠标', '3', '9000+', 99.00, 10000);
INSERT INTO `goods` VALUES (64, '【官方旗舰店】罗技MX Master3大师无线蓝牙办公高端鼠标充电USB双模连接电脑智能电磁滚轮', '3', '2106', 649.00, 10000);
INSERT INTO `goods` VALUES (65, '官方旗舰店罗技g304电竞办公游戏无线鼠标g304 机械 cf/lol 吃鸡宏 台式电脑笔记本专用 男女生', '3', '8000+', 179.00, 10000);
INSERT INTO `goods` VALUES (66, '罗技g502hero主宰者有线游戏鼠标机械电竞吃鸡宏502SE典藏版专业竞技穿越火线绝地求生cf lol csgo官方旗舰店', '3', '3063', 249.00, 10000);
INSERT INTO `goods` VALUES (67, '官方旗舰店 罗技g502 hero有线电竞游戏鼠标g502主宰RGB吃鸡宏加重机械lol/cf 台式电脑笔记本专用', '3', '10000+', 259.00, 10000);
INSERT INTO `goods` VALUES (68, '小米无线蓝牙双模鼠标静音版游戏光电小巧便携小米官方旗舰店滑鼠', '3', '8000+', 69.00, 10000);
INSERT INTO `goods` VALUES (69, '【官方旗舰店】罗技M330静音无线鼠标办公游戏笔记本电脑台式家用可更换省电电池USB流畅多色安静', '3', '7000+', 99.00, 10000);
INSERT INTO `goods` VALUES (70, '英菲克PM1无线便携办公静音鼠标可充电式蓝牙双模5.0无声男女生无限游戏适用于苹果mac笔记本电脑台式USB通用', '3', '75000+', 22.90, 10000);
INSERT INTO `goods` VALUES (71, '小米无线键鼠套装键盘鼠标轻薄便携办公笔记本USB电脑外设无线', '3', '4124', 89.00, 10000);
INSERT INTO `goods` VALUES (72, '联想小新Handle静音无线鼠标办公家用台式机笔记本电脑女生黑白色', '3', '10000+', 44.90, 10000);
INSERT INTO `goods` VALUES (73, '罗技g102二代机械电竞有线鼠标游戏宏台式电脑家用绝地求生穿越火线cf吃鸡csgo笔记本办公室官方旗舰店', '3', '4250', 79.00, 10000);
INSERT INTO `goods` VALUES (74, 'Huαwei/华无线鼠标可充电式蓝牙静音无声台式电脑笔记本联想通用', '3', '15000+', 17.80, 10000);
INSERT INTO `goods` VALUES (75, 'Huαwei/华无线鼠标可充电式蓝牙静音无声台式电脑笔记本联想通用', '3', '1574', 449.00, 10000);
INSERT INTO `goods` VALUES (76, '适用苹果无线蓝牙鼠标macbook笔记本ipad电脑蓝牙原装鼠标手机妙控鼠标二代2可充电静音女生无需接收器', '3', '4288', 125.00, 10000);
INSERT INTO `goods` VALUES (77, '冰豹魔幻豹KONE PRO AIR无线职业版蓝牙游戏三模鼠标中大手型轻量', '3', '1881', 469.00, 10000);
INSERT INTO `goods` VALUES (78, '官方旗舰罗技MX MASTER3无线蓝牙可充电笔记本电脑鼠标跨屏', '3', '1422', 599.00, 10000);
INSERT INTO `goods` VALUES (79, '英菲克PW1有线电竞办公静音鼠标usb游戏专用宏无声cf机械lol电脑家用商务网吧台式适用于戴尔男女生笔记本用', '3', '50000+', 15.90, 10000);
INSERT INTO `goods` VALUES (80, 'Razer雷蛇蝰蛇标准版电竞游戏鼠标有线人体工学机械炼狱电脑cf宏', '3', '5000+', 85.00, 10000);
INSERT INTO `goods` VALUES (81, '爱国者有线键盘鼠标游戏电脑台式笔记本家用办公商务键鼠套装静音', '4', '1298', 18.90, 10000);
INSERT INTO `goods` VALUES (82, 'AOC机械键盘鼠标键鼠套装青轴黑轴茶轴红轴游戏电脑办公有线网吧电竞外设全键GK410', '4', '125', 138.00, 10000);
INSERT INTO `goods` VALUES (83, '联想无线键鼠套装MK21笔记本台式机一体机电脑通用键盘鼠标套装', '4', '163', 75.00, 10000);
INSERT INTO `goods` VALUES (84, '小米无线键鼠套装键盘鼠标轻薄便携办公笔记本USB电脑外设无线', '4', '4124', 89.00, 10000);
INSERT INTO `goods` VALUES (85, '【官方旗舰店】罗技K580无线蓝牙键盘办公游戏便携超薄安静小巧台式电脑平板ipad笔记本打字专用女生', '4', '2760', 249.00, 10000);
INSERT INTO `goods` VALUES (86, 'Razer雷蛇黑寡妇蜘蛛电竞电脑游戏笔记本专用机械轴键盘鼠标套装', '4', '2847', 349.00, 10000);
INSERT INTO `goods` VALUES (87, '【官方旗舰店】罗技K380无线蓝牙网红键盘安静ipad平板电脑台式手机女生可爱办公游戏打字专用外接外设', '4', '10000+', 159.00, 10000);
INSERT INTO `goods` VALUES (88, 'Razer雷蛇黑寡妇蜘蛛V3幻彩RGB背光机械轴笔记本电脑电竞游戏键盘', '4', '1100', 449.00, 10000);
INSERT INTO `goods` VALUES (89, '黑峡谷X3机械键盘黑白有线/无线双模USB电竞键盘套装手托游戏87键', '4', '1078', 299.00, 10000);
INSERT INTO `goods` VALUES (90, '适用macbook无线蓝牙键盘苹果笔记本ipad电脑一体机鼠标键盘套装轻薄台式办公专用打字静音手机平板妙控键盘', '4', '2461', 125.00, 10000);
INSERT INTO `goods` VALUES (91, '官方旗舰店罗技G610游戏办公吃鸡机械键盘g610樱桃cherry红青轴背光有线104键台式电脑专用 男女生', '4', '578', 499.00, 10000);
INSERT INTO `goods` VALUES (92, 'HP惠普K10G电竞机械键盘青轴黑轴茶轴红轴游戏专用台式笔记本电脑办公有线外接lol外设104打字', '4', '8500+', 135.00, 10000);
INSERT INTO `goods` VALUES (93, '惠普朋克电竞机械键盘游戏专用青轴茶轴红轴黑轴笔记本台式电脑办公有线外设网吧复古鼠标套装外接男女生打字', '4', '5500+', 129.00, 10000);
INSERT INTO `goods` VALUES (94, '【顺丰包邮】AOC真机械键盘GK410青轴茶轴红轴黑轴电竞游戏有线键盘外接台式电脑笔记本办公网吧打字键鼠套装', '4', '3221', 99.00, 10000);
INSERT INTO `goods` VALUES (95, 'macbook无线蓝牙键盘适用苹果笔记本电脑 2020新ipad7安卓手机平板电脑通用办公专用打字省电便携手提电脑', '4', '1937', 55.00, 10000);
INSERT INTO `goods` VALUES (96, '联想无线键盘鼠标套装KN101笔记本台式电脑防水办公家用磨砂键盘', '4', '1097', 59.90, 10000);
INSERT INTO `goods` VALUES (97, '【24期免息】ROG 龙骑士2代分离式双模电竞光学机械键盘有线无线rgb游戏台式机笔记本电脑通用全尺寸键盘', '4', '326', 1799.00, 10000);
INSERT INTO `goods` VALUES (98, '英菲克v580键盘鼠标套装有线台式电脑家用机械手感USB外接笔记本防水静音无声办公专用打字外设电竞游戏键鼠', '4', '3651', 25.90, 10000);
INSERT INTO `goods` VALUES (99, '顺丰12免息罗技G913TKL背光机械键盘可充电式游戏专用矮轴类青轴红轴茶轴无线蓝牙电脑电竞吃鸡官方旗舰店', '4', '514', 799.00, 10000);
INSERT INTO `goods` VALUES (100, '【顺丰包邮】HP/惠普 GK100机械键盘青轴黑轴茶轴红轴台式笔记本电脑办公打字有线外接游戏专用电竞lol外设', '5', '10000+', 119.00, 10000);
INSERT INTO `goods` VALUES (101, '耳机入耳式原装正品适用oppo手机苹果6华为通用k歌有线女x9原配x21半耳塞r11原厂安卓6s小米r9plus高音质vivo', '5', '20000+', 19.90, 10000);
INSERT INTO `goods` VALUES (102, 'EDIFIER/漫步者 HECATE GM4 MINI真无线蓝牙耳机电竞手游灯光语音降噪运动跑步超长续航待机入耳式立体声低音', '5', '165', 269.00, 10000);
INSERT INTO `goods` VALUES (103, '【6期免息】Bose QuietControl30 无线蓝牙降噪耳机挂脖式QC30', '5', '1205', 1279.00, 10000);
INSERT INTO `goods` VALUES (104, 'Bose QuietComfort 35II无线蓝牙头戴式游戏运动降噪耳机耳麦qc35', '5', '2143', 1479.00, 10000);
INSERT INTO `goods` VALUES (105, '【旗舰店】HP/惠普电脑耳机头戴式电竞游戏专用台式机笔记本有线吃鸡耳麦带麦usb话筒降噪听声辩位手机麦克风', '5', '7000+', 69.00, 10000);
INSERT INTO `goods` VALUES (106, '【6期免息】ROG降临入耳式电竞降噪耳机2代游戏声道笔记本电脑RGB灯效音乐运动吃鸡王者耳麦线控3.5手机', '5', '734', 279.00, 10000);
INSERT INTO `goods` VALUES (107, 'HP/惠普官方蓝牙耳机无线运动防水降噪女士适用华为苹果安卓vivo小米手机2021年新款双耳入耳式电脑耳麦跑步', '5', '5000+', 88.00, 10000);
INSERT INTO `goods` VALUES (108, '【顺丰包邮】HP/惠普H200电脑耳机头戴式电竞游戏专用7.1声道吃鸡听声辩位有线耳麦台式笔记本带麦克风话筒', '5', '4468', 99.00, 10000);
INSERT INTO `goods` VALUES (109, '【6期免息】ROG 棱镜头戴式电竞游戏耳机有线7.1声道吃鸡手机降噪耳麦RGB灯效华硕监听带麦线控官方旗舰店', '5', '290', 669.00, 10000);
INSERT INTO `goods` VALUES (110, 'EDIFIER/漫步者 W200BT plus无线蓝牙耳机双耳挂脖式运动跑步挂耳式入耳式耳麦安卓通用超长待机超长续航', '5', '15000+', 114.00, 10000);
INSERT INTO `goods` VALUES (111, '【薇娅推荐】Sony/索尼WI-1000XM2 颈挂式入耳式无线蓝牙降噪耳机', '5', '883', 1969.00, 10000);
INSERT INTO `goods` VALUES (112, '[24期免息]苹果AirPods Pro无线蓝牙耳机新3代主动降噪运动充电盒', '5', '1388', 1679.00, 10000);
INSERT INTO `goods` VALUES (113, 'Huawei/华为经典耳机CM33 type-c接头适配华为p20耳机原装正品', '5', '10000+', 84.00, 10000);
INSERT INTO `goods` VALUES (114, 'EDIFIER/漫步者 W800BT plus无线蓝牙耳机运动音乐通话头戴式耳机', '5', '2446', 209.00, 10000);
INSERT INTO `goods` VALUES (115, '【官方同价 顺丰速发】华为FreeBuds Pro无线蓝牙耳机4骨声纹主动降噪入耳式运动耳机超长续航原装正品旗舰店', '5', '2863', 999.00, 10000);
INSERT INTO `goods` VALUES (116, 'Apple/苹果iPhone 11 12 Pro原装线控耳机采用闪电接头的 EarPods', '5', '7000+', 129.00, 10000);
INSERT INTO `goods` VALUES (117, '【稀缺现货 顺丰速发】华为FreeBuds4无线蓝牙耳机主动降噪半入耳式跑步运动耳机超长续航原装正品官方旗舰店', '5', '1373', 999.00, 10000);
INSERT INTO `goods` VALUES (118, '山水运动型蓝牙耳机无线跑步专用狂甩不掉健身防水高音质男女士款适用于苹果华为超长续航待机挂耳式2021年新', '5', '5000+', 129.00, 10000);
INSERT INTO `goods` VALUES (119, '[券后758起]原装苹果AirPods 2代无线蓝牙耳机入耳式麦iPhone手机', '5', '8000+', 1008.00, 10000);
INSERT INTO `goods` VALUES (120, '小米活塞耳机 基础版清新版入耳式女生通用可爱耳麦手机线控耳塞', '5', '45000+', 29.00, 10000);
INSERT INTO `goods` VALUES (121, '三星 Galaxy Tab S6 Lite Wi-Fi【6期免息】Samsung SM-P610 新款学生学习娱乐轻薄', '7', '113', 2299.00, 10000);
INSERT INTO `goods` VALUES (122, 'Huawei/华为平板M5 青春版8英寸平板电脑 安卓WiFi/4G通话智能游戏学习平板商务', '7', '337', 1599.00, 10000);
INSERT INTO `goods` VALUES (123, '华为/HUAWEI MatePad 10.8英寸平板电脑旗舰芯片影音娱乐学生新款教育学习游戏正', '7', '1364', 2349.00, 10000);
INSERT INTO `goods` VALUES (124, 'Apple/苹果 10.2 英寸 iPad', '7', '115', 2999.00, 10000);
INSERT INTO `goods` VALUES (125, 'Apple/苹果 11.2 英寸 iPad', '7', '356', 3999.00, 10000);
INSERT INTO `goods` VALUES (126, 'Lenovo/联想小新Pad Pro 11.5英寸 影音娱乐办公学习平板电脑莱茵护', '7', '1284', 1599.00, 10000);
INSERT INTO `goods` VALUES (127, 'Microsoft/微软 Surface Pro 7 i7 16GB 256GB 12.3英', '7', '165', 9988.00, 10000);
INSERT INTO `goods` VALUES (128, 'Apple 苹果iPad Air 4代 2020款11.9英寸平板电脑WIFI版 64G/256G 支', '7', '707', 4899.00, 10000);
INSERT INTO `goods` VALUES (129, 'Apple 苹果iPad Air 4代 2020款10.9英寸平板电脑WIFI版', '7', '1094', 4799.00, 10000);
INSERT INTO `goods` VALUES (130, '2020新款Apple/苹果 iPad 8代 10.2英寸平板电脑奇立配件中国移动官', '7', '383', 2499.00, 10000);
INSERT INTO `goods` VALUES (131, '\r\n三星Galaxy Tab S7 S7+【24期免息】Samsung 新款学生学习平板电脑 官方正品', '7', '353', 8399.00, 10000);
INSERT INTO `goods` VALUES (132, '荣耀平板电脑V6 10.4英寸2020新款游戏网课全面屏学生考研学习机', '7', '1608', 2499.00, 10000);
INSERT INTO `goods` VALUES (133, 'Apple/苹果 11英寸 M1芯片iPad Pro全面屏平板电脑便携式商务办公学', '7', '185', 6299.00, 10000);
INSERT INTO `goods` VALUES (134, 'Huawei/华为 HUAWEI MatePad 10.4英寸平板电脑 绚丽全面屏办公 学习娱乐智能平', '7', '10000', 1849.00, 10000);
INSERT INTO `goods` VALUES (135, '联想平板小新Pad Plus 11英寸 2k全面屏 安卓智能学习办公娱乐影音平', '7', '1636', 1999.00, 10000);
INSERT INTO `goods` VALUES (136, '2020新款 Apple/苹果 10.9英寸iPad Air4平板电脑学生学习绘画商务办公', '7', '501', 5759.00, 10000);
INSERT INTO `goods` VALUES (137, '2021新款荣耀平板电脑7网课学习护眼游戏考研娱乐高清国产安卓二合一', '7', '7500', 1599.00, 10000);
INSERT INTO `goods` VALUES (138, 'Microsoft/微软 Surface Go 2 4425Y 8GB 128GB 10.5英寸平板笔记本电', '7', '580', 3988.00, 10000);
INSERT INTO `goods` VALUES (139, '联想平板电脑小新Pad 11英寸 网课考研娱乐游戏办公二合一平板护', '7', '4866', 1799.00, 10000);
INSERT INTO `goods` VALUES (140, '联想平板Yoga Pad Pro 13英寸 高通骁龙870 WIFI 影音娱乐办公学习游戏平板电脑', '7', '89', 3299.00, 10000);

SET FOREIGN_KEY_CHECKS = 1;
