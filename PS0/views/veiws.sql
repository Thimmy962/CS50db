BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "views" (
    "id" SERIAL PRIMARY KEY,
    "print_number" INTEGER,
    "english_title" TEXT,
    "japanese_title" TEXT,
    "artist" TEXT,
    "average_color" TEXT,
    "brightness" NUMERIC,
    "contrast" NUMERIC,
    "entropy" NUMERIC,
);
INSERT INTO views VALUES(1,1,'The Great Wave off Kanagawa','神奈川沖浪裏','Hokusai','#999f8f',0.60999999999999998667,0.46999999999999997335,7.3700000000000001065);
INSERT INTO views VALUES(2,2,'Fine Wind, Clear Morning','凱風快晴','Hokusai','#756c73',0.44000000000000000222,0.5,7.3099999999999996092);
INSERT INTO views VALUES(3,3,'Thunderstorm Beneath the Summit','山下白雨','Hokusai','#5e564b',0.34000000000000002442,0.64000000000000001332,7.2199999999999997513);
INSERT INTO views VALUES(4,4,'Under Mannen Bridge at Fukagawa','深川万年橋下','Hokusai','#aaa999',0.66000000000000003108,0.44000000000000000222,7.4199999999999999289);
INSERT INTO views VALUES(5,5,'Sundai, Edo','東都駿台','Hokusai','#a9a68d',0.64000000000000001332,0.42999999999999999333,7.3499999999999996447);
INSERT INTO views VALUES(6,6,'Cushion Pine at Aoyama','青山円座松','Hokusai','#8a907e',0.5500000000000000444,0.60999999999999998667,7.4299999999999997157);
INSERT INTO views VALUES(7,7,'Senju, Musashi But','武州千住','Hokusai','#a2a38d',0.63000000000000000444,0.46000000000000001998,7.4299999999999997157);
INSERT INTO views VALUES(8,8,'Inume Pass, Kōshū','甲州犬目峠','Hokusai','#b7b197',0.6899999999999999467,0.42999999999999999333,7.2599999999999997868);
INSERT INTO views VALUES(9,9,'Fuji View Field in Owari Province','尾州不二見原','Hokusai','#bcb39f',0.70999999999999996447,0.41999999999999998445,7.3399999999999998578);
INSERT INTO views VALUES(10,10,'Ejiri in Suruga Province','駿州江尻','Hokusai','#b6ae99',0.68000000000000004884,0.40999999999999997557,7.330000000000000071);
INSERT INTO views VALUES(11,11,'A sketch of the Mitsui shop in Suruga in Edo','江都駿河町三井見世略図','Hokusai','#a3a38e',0.63000000000000000444,0.60999999999999998667,7.4000000000000003552);
INSERT INTO views VALUES(12,12,'Sunset across the Ryōgoku bridge from the bank of the Sumida River at Onmayagashi','御厩川岸より両国橋夕陽見','Hokusai','#8ba1a5',0.60999999999999998667,0.56999999999999995115,7.6699999999999999289);
INSERT INTO views VALUES(13,13,'Sazai hall - Temple of Five Hundred Rakan','五百らかん寺さざゐどう','Hokusai','#aaaa94',0.66000000000000003108,0.41999999999999998445,7.4599999999999999644);
INSERT INTO views VALUES(14,14,'Tea house at Koishikawa. The morning after a snowfall','礫川雪の旦','Hokusai','#a1a7a8',0.6500000000000000222,0.47999999999999998223,7.3399999999999998578);
INSERT INTO views VALUES(15,15,'Shimomeguro','下目黒','Hokusai','#bdb091',0.6899999999999999467,0.39000000000000001332,7.1500000000000003552);
INSERT INTO views VALUES(16,16,'Watermill at Onden','隠田の水車','Hokusai','#b2ab91',0.67000000000000003996,0.4000000000000000222,7.3899999999999996802);
INSERT INTO views VALUES(17,17,'Enoshima in Sagami Province','相州江の島','Hokusai','#ac9e7a',0.61999999999999999555,0.53000000000000002664,7.330000000000000071);
INSERT INTO views VALUES(18,18,'Shore of Tago Bay, Ejiri at Tōkaidō','東海道江尻田子の浦略図','Hokusai','#b0ac94',0.67000000000000003996,0.40999999999999997557,7.3099999999999996092);
INSERT INTO views VALUES(19,19,'Yoshida at Tōkaidō','東海道吉田','Hokusai','#b0ab96',0.67000000000000003996,0.44000000000000000222,7.4900000000000002131);
INSERT INTO views VALUES(20,20,'The Kazusa Province sea route','上総の海路','Hokusai','#b6b1a2',0.6899999999999999467,0.46000000000000001998,7.3600000000000003197);
INSERT INTO views VALUES(21,21,'Nihonbashi bridge in Edo','江戸日本橋','Hokusai','#bcb69f',0.70999999999999996447,0.46000000000000001998,7.2999999999999998223);
INSERT INTO views VALUES(22,22,'Barrier Town on the Sumida River','隅田川関屋の里','Hokusai','#b3b399',0.6899999999999999467,0.41999999999999998445,7.4800000000000004263);
INSERT INTO views VALUES(23,23,'Bay of Noboto','登戸浦','Hokusai','#aca791',0.6500000000000000222,0.39000000000000001332,7.4599999999999999644);
INSERT INTO views VALUES(24,24,'The lake of Hakone in Sagami Province','相州箱根湖水','Hokusai','#8f9b86',0.58999999999999996891,0.4500000000000000111,7.4199999999999999289);
INSERT INTO views VALUES(25,25,'Mount Fuji reflects in Lake Kawaguchi, seen from the Misaka Pass in Kai Province','甲州三坂水面','Hokusai','#afb89c',0.69999999999999995559,0.30999999999999999777,7.1699999999999999289);
INSERT INTO views VALUES(26,26,'Hodogaya on the Tōkaidō','東海道保土ケ谷','Hokusai','#9c9f97',0.61999999999999999555,0.5,7.5700000000000002842);
INSERT INTO views VALUES(27,27,'Tama River in Musashi Province','武州玉川','Hokusai','#a6a799',0.6500000000000000222,0.40999999999999997557,7.4800000000000004263);
INSERT INTO views VALUES(28,28,'Asakusa Hongan-ji temple in the Eastern capital','東都浅草本願寺','Hokusai','#a1a7a7',0.6500000000000000222,0.6500000000000000222,6.9199999999999999289);
INSERT INTO views VALUES(29,29,'Tsukuda Island in Musashi Province','武陽佃島','Hokusai','#aaada0',0.67000000000000003996,0.48999999999999999111,7.3899999999999996802);
INSERT INTO views VALUES(30,30,'Shichiri beach in Sagami Province','相州七里浜','Hokusai','#b4b9a9',0.70999999999999996447,0.44000000000000000222,7.3799999999999998934);
INSERT INTO views VALUES(31,31,'Umezawa in Sagami Province','相州梅沢庄','Hokusai','#939d8e',0.59999999999999997779,0.61999999999999999555,7.330000000000000071);
INSERT INTO views VALUES(32,32,'Kajikazawa in Kai Province','甲州石班沢','Hokusai','#919b8d',0.58999999999999996891,0.33000000000000001554,6.3200000000000002842);
INSERT INTO views VALUES(33,33,'Mishima Pass in Kai Province','甲州三嶌越','Hokusai','#b0b4a3',0.6899999999999999467,0.42999999999999999333,7.3799999999999998934);
INSERT INTO views VALUES(34,34,'Mount Fuji from the mountains of Tōtōmi','遠江山中','Hokusai','#adb3a3',0.6899999999999999467,0.4000000000000000222,7.4400000000000003907);
INSERT INTO views VALUES(35,35,'A View of Mount Fuji Across Lake Suwa','信州諏訪湖','Hokusai','#bebfb7',0.75,0.44000000000000000222,7.0199999999999995736);
INSERT INTO views VALUES(36,36,'Ushibori in Hitachi Province','常州牛掘','Hokusai','#acae9d',0.67000000000000003996,0.39000000000000001332,7.4000000000000003552);
INSERT INTO views VALUES(37,1,'Ichikoku Bridge in the Eastern Capital','東都一石ばし','Hiroshige','#7e796e',0.47999999999999998223,0.38000000000000000444,7.3399999999999998578);
INSERT INTO views VALUES(38,2,'The Suruga District in the Eastern Capital','東都駿河町','Hiroshige','#918b6e',0.54000000000000003552,0.53000000000000002664,7.8200000000000002842);
INSERT INTO views VALUES(39,3,'Sukiyagashi in the Eastern Capital','東都数奇屋河岸','Hiroshige','#a79b88',0.60999999999999998667,0.39000000000000001332,7.2000000000000001776);
INSERT INTO views VALUES(40,4,'Off Tsukuda Island in the Eastern Capital','東都佃沖','Hiroshige','#8e877c',0.53000000000000002664,0.4000000000000000222,7.2999999999999998223);
INSERT INTO views VALUES(41,5,'Ochanomizu in the Eastern Capital','東都御茶の水','Hiroshige','#8d887a',0.53000000000000002664,0.39000000000000001332,7.2300000000000004263);
INSERT INTO views VALUES(42,6,'Ryōgoku in the Eastern Capital','東都両ごく','Hiroshige','#868279',0.51000000000000000888,0.44000000000000000222,7.330000000000000071);
INSERT INTO views VALUES(43,7,'The Sumida Embankment in the Eastern Capital','東都墨田堤','Hiroshige','#a59c94',0.61999999999999999555,0.47999999999999998223,7.7099999999999999644);
INSERT INTO views VALUES(44,8,'Mt. Asuka in the Eastern Capital','東都あすか山','Hiroshige','#878d7a',0.54000000000000003552,0.56999999999999995115,7.7199999999999997513);
INSERT INTO views VALUES(45,9,'The Teahouse with the View of Mt. Fuji at Zōshigaya','雑司かや不二見茶や','Hiroshige','#8b8175',0.51000000000000000888,0.40999999999999997557,7.3899999999999996802);
INSERT INTO views VALUES(46,10,'Twilight Hill at Meguro in the Eastern Capital','東都目黒夕日か岡','Hiroshige','#99927f',0.56999999999999995115,0.56999999999999995115,7.8200000000000002842);
INSERT INTO views VALUES(47,11,'Wild Goose Hill and the Tone River','鴻之臺戸根川','Hiroshige','#9e907a',0.56999999999999995115,0.39000000000000001332,7.2699999999999995736);
INSERT INTO views VALUES(48,12,'Koganei in Musashi Province','武蔵小金井','Hiroshige','#7d888b',0.52000000000000001776,0.56000000000000005329,7.830000000000000071);
INSERT INTO views VALUES(49,13,'The Tama River in Musashi Province','武蔵玉川','Hiroshige','#8c897e',0.54000000000000003552,0.40999999999999997557,7.3700000000000001065);
INSERT INTO views VALUES(50,14,'Koshigaya in Musashi Province','武蔵越が谷在','Hiroshige','#869882',0.56999999999999995115,0.48999999999999999111,7.7999999999999998223);
INSERT INTO views VALUES(51,15,'Noge and Yokohama in Musashi Province','武蔵野毛横濱','Hiroshige','#9c9580',0.57999999999999996003,0.36999999999999999555,7.1500000000000003552);
INSERT INTO views VALUES(52,16,'Cherry Blossoms at Honmoku in Musashi Province','武蔵本牧のはな','Hiroshige','#9c9486',0.58999999999999996891,0.38000000000000000444,7.1100000000000003197);
INSERT INTO views VALUES(53,17,'The Sea off the Miura Peninsula in Sagami Province','相州三浦之海上','Hiroshige','#aca28d',0.64000000000000001332,0.34000000000000002442,6.8499999999999996447);
INSERT INTO views VALUES(54,18,'The Sagami River','さがみ川','Hiroshige','#968d7d',0.56000000000000005329,0.39000000000000001332,7.0999999999999996447);
INSERT INTO views VALUES(55,19,'The Seven Ri Beach in Sagami Province','相摸七里か濱','Hiroshige','#87857d',0.52000000000000001776,0.36999999999999999555,7.3799999999999998934);
INSERT INTO views VALUES(56,20,'The Entrance gate at Enoshima in Sagami Province','相摸江之島入口','Hiroshige','#8d8777',0.53000000000000002664,0.29999999999999998889,6.8700000000000001065);
INSERT INTO views VALUES(57,21,'Lake at Hakone','はこ根の湖すい','Hiroshige','#93917d',0.56999999999999995115,0.42999999999999999333,7.3700000000000001065);
INSERT INTO views VALUES(58,22,'The Izu Mountains','伊豆の山中','Hiroshige','#85977b',0.56000000000000005329,0.5500000000000000444,7.7199999999999997513);
INSERT INTO views VALUES(59,23,'The Sea off Satta in Suruga Province','駿河薩タ之海上','Hiroshige','#888076',0.51000000000000000888,0.40999999999999997557,7.2300000000000004263);
INSERT INTO views VALUES(60,24,'The Pine Forest of Miho in Suruga Province','駿河三保之松原','Hiroshige','#958d7c',0.56000000000000005329,0.38000000000000000444,7.0099999999999997868);
INSERT INTO views VALUES(61,25,'Fuji on the left of the Tōkaidō Road','東海堂左り不二','Hiroshige','#8b8678',0.53000000000000002664,0.36999999999999999555,7.2800000000000002486);
INSERT INTO views VALUES(62,26,'The Ōi River between Suruga and Totomi Provinces','駿遠大井川','Hiroshige','#91897d',0.54000000000000003552,0.46000000000000001998,7.5199999999999995736);
INSERT INTO views VALUES(63,27,'Futami Bay in Ise Province','伊勢二見か浦','Hiroshige','#a2a1a4',0.64000000000000001332,0.5500000000000000444,7.6699999999999999289);
INSERT INTO views VALUES(64,28,'Lake Suwa in Shinano Province','信州諏訪之湖','Hiroshige','#8a9184',0.56000000000000005329,0.5500000000000000444,7.7199999999999997513);
INSERT INTO views VALUES(65,29,'Shiojiri Pass in Shinano Province','信濃塩尻峠','Hiroshige','#859097',0.56000000000000005329,0.56000000000000005329,7.8399999999999998578);
INSERT INTO views VALUES(66,30,'Misaka Pass in Kai Province','甲斐御坂越','Hiroshige','#747e67',0.46999999999999997335,0.59999999999999997779,7.9400000000000003907);
INSERT INTO views VALUES(67,31,'The Ōtsuki Plain in Kai Province','甲斐大月の原','Hiroshige','#959183',0.56999999999999995115,0.4000000000000000222,7.3099999999999996092);
INSERT INTO views VALUES(68,32,'Dog Eye Pass in Kai Province','甲斐犬目峠','Hiroshige','#8e8072',0.52000000000000001776,0.44000000000000000222,7.3600000000000003197);
INSERT INTO views VALUES(69,33,'Kogane Plain in Shimōsa Province','下総小金原','Hiroshige','#8d8572',0.52000000000000001776,0.40999999999999997557,7.5);
INSERT INTO views VALUES(70,34,'Kuroto Bay in Kazusa Province','上総黒戸の浦','Hiroshige','#8e897b',0.54000000000000003552,0.4000000000000000222,7.0999999999999996447);
INSERT INTO views VALUES(71,35,'Mt. Kanō in Kazusa Province','上総鹿埜山','Hiroshige','#8e887b',0.54000000000000003552,0.40999999999999997557,7.2999999999999998223);
INSERT INTO views VALUES(72,36,'The Hota Coast in Awa Province','房州保田ノ海岸','Hiroshige','#8c877a',0.53000000000000002664,0.40999999999999997557,7.4900000000000002131);
COMMIT;
