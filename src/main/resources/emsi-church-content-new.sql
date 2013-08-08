delete from church_detail where church_id = (select church_id from church where church_path = 'nagoya');
delete from church_content where church_id = (select church_id from church where church_path = 'nagoya');
delete from church_hierarchy where church_id = (select church_id from church where church_path = 'nagoya');
delete from church where church_path = 'nagoya';

INSERT INTO PUBLIC.CHURCH_ORG(CHURCH_ORG_ID, CHURCH_ORG_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(17, 'southafrica', 1, 0, 0);
INSERT INTO PUBLIC.CHURCH_ORG_DETAIL(CHURCH_ORG_ID, LOCALE, KEY, VALUE) VALUES(17, 'en', 'menu_name', 'CEM in South Africa');          
INSERT INTO PUBLIC.CHURCH_ORG_DETAIL(CHURCH_ORG_ID, LOCALE, KEY, VALUE) VALUES(17, 'zh', 'menu_name', '南非分會');          

delete from public.church_hierarchy where parent_entity_id = 1 and church_org_id = 16;
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(1, 16, NULL);
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(16, 17, NULL);


update church_hierarchy
	set parent_entity_id = 17
	where parent_entity_id = 16
	and church_id is not null;

update church set address='4609 8th Avenue, Brooklyn, NY 11220, USA', latitude = 40.642993, longitude = -74.001361 where church_path = 'brooklyn';
update church set address='248 Grand Street, New York, NY 10002, USA', latitude = 40.71841, longitude = -73.994011 where church_path = 'chinatown';
update church set address='35-26 Union Street, Queens, NY 11354, USA', latitude = 40.764656, longitude = -73.828315 where church_path = 'queens';
update church set address='23 South 2nd Avenue, Highland Park, NJ 08904, USA', latitude = 40.4976633, longitude = -74.4299261 where church_path = 'highlandpark';
update church set address='71 Old Road, Livingston, NJ 07039, USA', latitude = 40.794605, longitude = -74.348285 where church_path = 'livingston';
update church set address='725 Mountain Avenue, Berkeley Heights, NJ 07922, USA', latitude = 40.669049, longitude = -74.438916 where church_path = 'murrayhill';
update church set address='456 North Middletown Road, Pearl River, NY 10965, USA', latitude = 41.075231, longitude = -74.013037 where church_path = 'pearlriver';
update church set address='36 Alpine Road, Towaco, NJ 07082, USA', latitude = 40.922399, longitude = -74.322447 where church_path = 'towaco';
update church set address='2111 Camino Del Rio South, San Diego, CA 92108, USA', latitude = 32.767192, longitude = -117.142511 where church_path = 'sandiego';
update church set address='539 North Sunset Avenue, Azusa, CA 91702, USA', latitude = 34.131395, longitude = -117.911747 where church_path = 'losangeles';
update church set address='400 Brussels Street, San Francisco, CA 94134, USA', latitude = 37.726874, longitude = -122.4056077 where church_path = 'sanfrancisco';
update church set address='660 West Campbell Avenue, Campbell, CA 95008, USA', latitude = 37.2869291, longitude = -121.9614152 where church_path = 'sanjose';
update church set address='6656 Park Riviera Way, Sacramento, CA 95831, USA', latitude = 38.506565, longitude = -121.550272 where church_path = 'sacramento';
update church set address='1087 Budapest, Kőbányai Way 21, Hungary', latitude = 47.4887822, longitude = 19.0959066 where church_path = 'budapest';
update church set address='Geograaf 13, Centerpoort-Nieuwgraaf, 6921 EW Duiven, The Netherlands', latitude = 51.9628456, longitude = 6.0057757 where church_path = 'amhem';
update church set address='Zandstraat 103, 3905 EB Veenendaal, The Netherlands', latitude = 52.0287846, longitude = 5.5515824 where church_path = 'veenendaal';
update church set address='Vrijheidsplein 1, 8924 JN Leeuwarden, The Netherlands', latitude = 53.2125302, longitude = 5.8147687 where church_path = 'leeuwarden';
update church set address='Korreweg 37, 9714 AB Groningen, The Netherlands', latitude = 53.2277242, longitude = 6.5633512 where church_path = 'groningen';
update church set address='Nieuwe Schoolweg 2, 7514 CG Enschede, The Netherlands', latitude = 52.2242389, longitude = 6.8980463 where church_path = 'enschede';
update church set address='Donarpad 9, 3072 Rotterdam, The Netherlands', latitude = 51.8981098, longitude = 4.4795884 where church_path = 'rotterdam';
update church set address='Isingstraat 165A, 2522 JS The Hague, The Netherlands', latitude = 52.0614258, longitude = 4.3235395 where church_path = 'denhaag';
update church set address='Marokkodreef 3, 3564 EV Utrecht, The Netherlands', latitude = 52.1215477, longitude = 5.1067358 where church_path = 'utrecht';
update church set address='Anton Waldorpstraat 90, 1062 AZ Amsterdam, The Netherlands', latitude = 52.3616378, longitude = 4.8410256 where church_path = 'amsterdam';
update church set address='Esdoornstraat 25, 8021 WB Zwolle, The Netherlands', latitude = 52.521532, longitude = 6.0963997 where church_path = 'zwolle';
update church set address='Teteringsedijk 89C, 4817 MB Breda, The Netherlands', latitude = 51.5941052, longitude = 4.7962561 where church_path = 'breda';
update church set address='Williamstraat 7, 4611 CN Bergen op Zoom, The Netherlands', latitude = 51.4964194, longitude = 4.2923472 where church_path = 'bergenopzoom';
update church set address='Calle Carolinas, 10, 28039 Madrid, Spain', latitude = 40.4512378, longitude = -3.7048897 where church_path = 'madrid';
update church set address='C/ Cura Femenia, 1, 46006 Valencia, Spain', latitude = 39.4619848, longitude = -0.3717682 where church_path = 'valencia';
update church set address='Benidorm, Alicante, Spain', latitude = 38.5410566, longitude = -0.1224937 where church_path = 'benidorm';
update church set address='03003 Alicante, Spain', latitude = 38.3379395, longitude = -0.4915329 where church_path = 'alicante';
update church set address='Calle Honduras, 3, 35110 Santa Lucía de Tirajana, Las Palmas, Spain', latitude = 27.8620257, longitude = -15.4366301 where church_path = 'canaria';
update church set address='Calle Alguacil, 8, 28038 Madrid, Spain', latitude = 40.3960213, longitude = -3.6630519 where church_path = 'southmadrid';
update church set address='Carrer dOlzinelles, 91, 08014 Barcelona, Spain', latitude = 41.3709592, longitude = 2.1374551 where church_path = 'barcelona';
update church set address='Calle León, 24, 28947 Fuenlabrada, Madrid, Spain', latitude = 40.2636947, longitude = -3.74496 where church_path = 'fuenlabrada';
update church set address='Alto, 4600-661, Portugal', latitude = 41.2524401, longitude = -8.071536 where church_path = 'portoalto';
update church set address='Rua Francisco Sanches 17, 1170-140 Lisbon, Portugal', latitude = 38.7306258, longitude = -9.1339151 where church_path = 'lisbon';
update church set address='Travessa da Rua Chá 4, 4000-167 Porto, Portugal', latitude = 41.143804, longitude = -8.6095262 where church_path = 'porto';
update church set address='4480-622 Árvore, Portugal', latitude = 41.3314142, longitude = -8.7185014 where church_path = 'mindelo';
update church set address='73 Avenue de Verdun, 94200 Ivry-sur-Seine, France', latitude = 48.8135227, longitude = 2.3702061 where church_path = 'paris';
update church set address='Kipdorpvest 40, 2000 Antwerpen, Belgium', latitude = 51.2179457, longitude = 4.4140022 where church_path = 'antwerpen';
update church set address='Rue du Fossé aux Loups 32, 1000 Brussels, Belgium', latitude = 50.8503111, longitude = 4.3546746 where church_path = 'brussels';
update church set address='Ledebergplein 2, 9050 Ledeberg (Gent), Belgium', latitude = 51.0370008, longitude = 3.7411437 where church_path = 'gent';
update church set address='Kobe, Hyogo Prefecture, Japan', latitude = 34.690083, longitude = 135.1955112 where church_path = 'kobe';
update church set address='Alley 25, Lane 113, Section 3, Mínshēng East Road, Songshan District, Taipei City, Taiwan 105', latitude = 25.0593059, longitude = 121.547255 where church_path = 'taipei';
update church set address='1 Theal Street, Cape Town 7500, South Africa', latitude = -33.8889491, longitude = 18.5828211 where church_path = 'parownorth';
update church set address='94 Campground Road, Cape Town 7700, South Africa', latitude = -33.965856, longitude = 18.474988 where church_path = 'capetown';

update church set address='Geograaf 13, Centerpoort-Nieuwgraaf, 6921 EW Duiven, The Netherlands', latitude = 51.96284559999999, longitude = 6.00577570 where church_path = 'arnhem';
update church set address='Via Stresa, 3, 20125 Milan, Italy', latitude = 45.49278710, longitude = 9.2040530 where church_path = 'milan';
update church set address='Piazza San Domenico, 10, 59100 Prato Province of Prato, Italy', latitude = 43.88184649999999, longitude = 11.09375730 where church_path = 'prato';
update church set address='Osaka, Osaka Prefecture, Japan', latitude = 34.69373780, longitude = 135.50216510 where church_path = 'osaka';


-- update paris intro page
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {\r\nFONT-FAMILY: Arial,helvetica,sans-serif\r\n}\r\n.contact-content TD {\r\nPADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; FONT-SIZE: small; PADDING-TOP: 2px; 3px: \r\n}\r\nTD.label {\r\nWIDTH: 1%; WHITE-SPACE: nowrap; FONT-WEIGHT: bold\r\n}\r\nP SPAN.label {\r\nFONT-WEIGHT: bold\r\n}\r\n.main-content {\r\nFONT-FAMILY: Arial, MingLiU, Helvetica, san-serif; COLOR: #333; FONT-SIZE: 13px\r\n}\r\n.borderless-table {\r\nBORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px\r\n}</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">Pastor:</td>\r\n\t\t\t<td>Rev. Mix Chan</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\" rowspan=\"2\" valign=\"top\">Resident Evangelists:</td>\r\n\t\t\t<td>Ev. Zong Quan Zhou</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td>Ev. Edwidge Chung</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Address:</td>\r\n\t\t\t<td>73, Avenue de Verdun, 94200 Ivry sur Seine, Paris, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Tel#:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Fax#:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Email:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">Established Date: </span>October 2001 \r\n</p>\r\n<p>\r\n<img src=\"/emsi/files/parissmall_0.jpg\" alt=\"CEC in Paris\" title=\"CEC in Paris\" height=\"239\" hspace=\"5\" align=\"left\" width=\"360\" />In April 2000, Rev. Moses Yang had a vision for a gospel ministry in Paris; he then organized a short-term mission trip from the CEM Headquarter in America. With the aid of C.E.C. in Holland and devoted believers in Paris, two musical evangelistic meetings were held in a church in District thirteen in Paris, resulting in forty some people accepting Christ.<br /><br />In July 2000, Bible students Mix and Anny Chan were sent by Rev. Moses Yang to Paris during the summer break to gain experience on how to establish C.E.C. churches. For the following three months, Rev. Zion Wu, Ev. Sorina Yang and Rev. Hosea Chi took turns to lead the church in Paris, with assistance from Rev. and Mrs. Hugo Chan and brothers and sisters from Holland.<br /><br />In the early part of 2001, the CEM Headquarter in America purchased the current CEC Paris church building by faith. In June 2001, Rev. Moses Yang sent three Bible students, Ev. Mix and Anny Chan and Ev. Paul Ye to shepherd the CEC in Paris. In October 2001, the renovation of the building was completed and is being used for both E.B.I. and C.E.C. in Paris. It then became the regular meeting place and home for the Paris congregation.\r\n</p>\r\n</div>\r\n')
	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'en'
	and page_id = 'intro';
	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {font-family: Arial,helvetica,sans-serif,\u65b0\u7d30\u660e\u9ad4 ;}\r\n.contact-content td {font-size: 14px; padding: 2px; 3px;}\r\ntd.label {font-weight: bold; width: 1%; white-space: nowrap;}\r\np span.label {font-weight: bold;}\r\n.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, \u65b0\u7d30\u660e\u9ad4; font-size: 13px; color: #333;}\r\n.borderless-table {border-width: 0px;}\r\n</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u6703\u7267:</td>\r\n\t\t\t<td>\u9673\u8302\u7965 \u7267\u5e2b</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u99d0\u5802\u50b3\u9053:</td>\r\n\t\t\t<td>\u5468\u5b97\u6cc9 \u50b3\u9053, \u65b9\u654f\u83ef \u50b3\u9053</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<br />\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u5730\u5740:</td>\r\n\t\t\t<td> 73, Avenue de Verdun, 94200 Ivry sur Seine, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u8a71:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u50b3\u771f:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u90f5:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance </td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">\u6210\u7acb\u65e5\u671f: </span>2001\u5e74 10\u6708\r\n</p>\r\n<p>\r\n<span class=\"label\">\u7c21\u53f2: </span><br />\r\n<img hspace=\"5\" src=\"/emsi/files/parissmall.jpg\" align=\"left\" height=\"255\" width=\"360\" />二○○○年四月楊摩西牧師看見巴黎福音事工的異象，從美國神學院總部組織短宣隊到巴黎佈道，在荷蘭生命堂和巴黎一些特別熱心的基督徒協助下，於十三區的一間教堂舉行兩場音樂佈道會，共有四十多人決志信主。<br/><br/>2000年七月楊摩西牧師派遣還在就讀的神學生陳茂祥夫婦於暑期間到巴黎兩場實習嘗試開拓建立生命堂的工作。陳傳道夫婦回美國繼續學習。此後，有三個月分别由吳錫安牧師、張秀蘭傳道、戚厚生牧師來巴黎短期帶領教會，期間還有荷蘭陳啟猷牧師和陳師母並一些弟兄姐妹經常來協助。<br/><br/>2001年年初美國總會憑信心購得巴黎生命堂現在使用的會所。 同年六月楊牧師差派陳茂祥夫婦和葉永春等三位神學生往巴黎生命堂開展教會，2001年10月會所裝修完畢,舉行獻堂典禮,供神學院及巴黎生命堂使用。從此，巴黎生命堂有了固定的聚會地方，屬於自己的家。<br/><br/></p>\r\n</div>\r\n')
	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'zh'
	and page_id = 'intro';

	
-- North Paris
INSERT INTO PUBLIC.CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(51, 'northparis', 1, 1, 0);  

update church set address='38 Rue des Gardinoux, 93300 Aubervilliers, France', latitude = 48.90682970, longitude = 2.36753750 where church_path = 'northparis';

INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(51, 'en', 'menu_name', 'CEC in North Paris');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(51, 'zh', 'menu_name', '巴黎北區基督教生命堂');     

INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(10, NULL, 51);
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'intro', 'en', 'CEC in North Paris - Brief History', STRINGDECODE('<style>\r\n.contact-content {\r\nFONT-FAMILY: Arial,helvetica,sans-serif\r\n}\r\n.contact-content TD {\r\nPADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; FONT-SIZE: small; PADDING-TOP: 2px; 3px: \r\n}\r\nTD.label {\r\nWIDTH: 1%; WHITE-SPACE: nowrap; FONT-WEIGHT: bold\r\n}\r\nP SPAN.label {\r\nFONT-WEIGHT: bold\r\n}\r\n.main-content {\r\nFONT-FAMILY: Arial, MingLiU, Helvetica, san-serif; COLOR: #333; FONT-SIZE: 13px\r\n}\r\n.borderless-table {\r\nBORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px\r\n}</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">Pastor:</td>\r\n\t\t\t<td>Rev. Mix Chan</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\" rowspan=\"2\" valign=\"top\">Evangelists:</td>\r\n\t\t\t<td>Ev. Zong Quan Zhou</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Address:</td>\r\n\t\t\t<td>38, rue des gardinoux 93300 Aubervilliers, Paris, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Tel#:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Fax#:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Email:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">Zion Fellowship in Northern Paris</span></p>\r\n<p>\r\nCEC in Paris is starting its evangelistic outreach program in Northern Paris. Bible study classes are conducted every Thursday, and Saturday. Please invite your friends in the area to attend.</p>\r\n</div>\r\n'));
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'intro', 'zh', STRINGDECODE('巴黎北區基督教生命堂 - \u6559\u6703\u7c21\u4ecb'), STRINGDECODE('<style>\r\n.contact-content {font-family: Arial,helvetica,sans-serif,\u65b0\u7d30\u660e\u9ad4 ;}\r\n.contact-content td {font-size: 14px; padding: 2px; 3px;}\r\ntd.label {font-weight: bold; width: 1%; white-space: nowrap;}\r\np span.label {font-weight: bold;}\r\n.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, \u65b0\u7d30\u660e\u9ad4; font-size: 13px; color: #333;}\r\n.borderless-table {border-width: 0px;}\r\n</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u6703\u7267:</td>\r\n\t\t\t<td>\u9673\u8302\u7965 \u7267\u5e2b</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u99d0\u5802\u50b3\u9053:</td>\r\n\t\t\t<td>\u5468\u5b97\u6cc9 \u50b3\u9053</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<br />\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u5730\u5740:</td>\r\n\t\t\t<td>38, rue des gardinoux 93300 Aubervilliers, Paris, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u8a71:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u50b3\u771f:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u90f5:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance </td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">錫安團契</span></p>\r\n<p>\r\n<br />巴黎基督教生命堂在北區福音工作，屢次中段。近期 (2013) 再度展開。每星期四、星期六有查經，約有十多人固定前來，研讀神的話語。也歡迎弟兄姐妹邀請當地華人朋友參加。\r\n&nbsp;\r\n</p>\r\n</div>\r\n')); 
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'contactus', 'en', 'CEC in North Paris - Contact Us', STRINGDECODE('<p style=\"margin: 0cm 0cm 0pt\" class=\"MsoNormal\">\r\n<span style=\"font-size: small\"><span style=\"color: #000000\"><b><span lang=\"EN-US\"><span style=\"font-family: Times New Roman\">Address</span></span></b><span style=\"font-family: \u65b0\u7d30\u660e\u9ad4\">\uff1a</span></span></span><span lang=\"EN-US\"><span style=\"font-family: Times New Roman; color: #000000; font-size: small\">38, rue des gardinoux 93300 Aubervilliers, Paris, France<br />\r\n<b>Telephone</b> : 33-1-5846-0892</span><br />\r\n<br />\r\n</span>\r\n</p>\r\n<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=38,+rue+des+gardinoux+93300+Aubervilliers,+Paris,+France&amp;ie=UTF8&amp;hq=&amp;hnear=38+Rue+des+Gardinoux,+93300+Aubervilliers,+Seine-Saint-Denis,+%C3%8Ele-de-France,+France&amp;gl=us&amp;t=m&amp;z=14&amp;ll=48.90683,2.367538&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=38,+rue+des+gardinoux+93300+Aubervilliers,+Paris,+France&amp;ie=UTF8&amp;hq=&amp;hnear=38+Rue+des+Gardinoux,+93300+Aubervilliers,+Seine-Saint-Denis,+%C3%8Ele-de-France,+France&amp;gl=us&amp;t=m&amp;z=14&amp;ll=48.90683,2.367538&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>\r\n'));          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'contactus', 'zh', STRINGDECODE('巴黎北區基督教生命堂 - \u9023\u7d61\u6211\u5011'), STRINGDECODE('<p style=\"margin: 0cm 0cm 0pt\" class=\"MsoNormal\">\r\n<span style=\"font-size: small\"><span style=\"color: #000000\"><b><span style=\"font-family: \u65b0\u7d30\u660e\u9ad4\">\u5730\u5740</span></b><span style=\"font-family: \u65b0\u7d30\u660e\u9ad4\">\uff1a</span></span></span><span style=\"font-size: small\"><span style=\"color: #000000\"><span lang=\"EN-US\"><span style=\"font-family: Times New Roman\">38, rue des gardinoux 93300 Aubervilliers, Paris, France<br />\r\n</span></span><b><span style=\"font-family: \u65b0\u7d30\u660e\u9ad4\">\u96fb\u8a71</span><span style=\"font-family: Times New Roman\"> <span lang=\"EN-US\">:</span></span></b></span></span><span lang=\"EN-US\"><span style=\"font-family: Times New Roman; color: #000000; font-size: small\"> 33-1-5846-0892</span><br />\r\n<br />\r\n</span>\r\n</p>\r\n<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=38,+rue+des+gardinoux+93300+Aubervilliers,+Paris,+France&amp;ie=UTF8&amp;hq=&amp;hnear=38+Rue+des+Gardinoux,+93300+Aubervilliers,+Seine-Saint-Denis,+%C3%8Ele-de-France,+France&amp;gl=us&amp;t=m&amp;z=14&amp;ll=48.90683,2.367538&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=38,+rue+des+gardinoux+93300+Aubervilliers,+Paris,+France&amp;ie=UTF8&amp;hq=&amp;hnear=38+Rue+des+Gardinoux,+93300+Aubervilliers,+Seine-Saint-Denis,+%C3%8Ele-de-France,+France&amp;gl=us&amp;t=m&amp;z=14&amp;ll=48.90683,2.367538&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>\r\n'));           

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'schedule', 'en', 'CEC in North Paris - Church Services Schedule', '
<table cellPadding="0" border="0" style="width: 100%" class="MsoNormalTable" width="100%">
	<tbody>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Meetings</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Weekly</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Time</span></td>
		</tr>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Bible Study</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Thursday</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">2:00 pm – 3:30 pm</span></td>
		</tr>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Bible Study</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">Saturday</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">11:00 am – 12:30 pm</span></td>
		</tr>
	</tbody>
</table>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'schedule', 'zh', '巴黎北區基督教生命堂 - 聚會時間', '
<table cellPadding="0" border="0" style="width: 100%" class="MsoNormalTable" width="100%">
	<tbody>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">聚會</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">每週</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN"></span></td>
		</tr>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">查經</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">星期四</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">下午 2:00 pm – 3:30 pm</span></td>
		</tr>
		<tr>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">查經</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">星期六</span></td>
			<td style="padding-bottom: 3.6pt; background-color: transparent; padding-left: 6pt; padding-right: 6pt; padding-top: 3.6pt; border: #bbbbbb 1pt dashed"><span style="font-family: Verdana; color: #333333" lang="EN">中午 11:00 am – 12:30 pm</span></td>
		</tr>
	</tbody>
</table>
');

-- Delete coming soon pages
delete from church_content where length(body) < 50;

-- Add christian to the chinese menu name
update church_detail
set value = replace(value, '生命堂', '基督教生命堂')
where locale = 'zh' 
	and key = 'menu_name' 
	and value not like '%基督教%';
	
update church_detail
set value = concat(value, '基督教生命堂')
where church_id = (select church_id from church where church_path = 'portoalto')
and locale = 'zh'
and key = 'menu_name';

update church_content
set body = 
'<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
.contact-content td {font-size: small; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Senior Pastor:</td>
			<td>Rev. Moses Yang 973-335-7337, ext. 209</td>
		</tr>
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. SenLiang Lin 917-361-6866</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Lingkin Lui 917-753-7787</td>
		</tr>
		<tr>
			<td class="label"><span style="color: rgb(0, 0, 0); font-family: Arial, helvetica, sans-serif; font-size: small; font-weight: bold; white-space: nowrap;">Evangelist:</span></td>
			<td><span style="font-family: Helvetica, arial, freesans, clean, sans-serif; line-height: 22px; background-color: rgb(251, 251, 251);">Ev. YongSheng Zhang 973-393-7876</span></td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsi/images/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>248 Grand Street, New York, NY</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsi/images/icon_phone.gif" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>212-966-5411</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsi/images/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:chinatown@emsionline.org">chinatown@emsionline.org</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>1968</p>

<p><img align="left" alt="view church photo gallery" hspace="5" src="/emsi/images/chinatown2012.jpg" /></p>

<p>In 1968, Rev. Moses Yang rented a second floor apartment at 10 Mott St. in Chinatown, NY. and started the &quot;Fellowship of Life&quot;. This was the very first Bible Study started by Rev. Moses Yang. Then in 1970, it became the Chinese Evengelical Church in Chinatown. Rev. Moses Yang always mentioned the eight college students who started the &quot;Life&quot; family. Later, additional people joined the group. Many brothers and sisters got married and the &quot;Life&quot; grew in size. In 1974, after relocating two times, the church finally, by faith, bought a three-story building at 253 Centre St., NY, NY.</p>

<p>For the past years, the memers of C.E.C. of Chinatown are composed of American- born Chinese. A few members can understand Cantonese, yet many are English-speaking. In the past, they usually use July 4th to hold annual Summer Evangelistic Conferences to reach out to unbelievers. Many of the young people got saved duing these conferences and have become members of the church. That&#39;s why this church was always very young and alive. The church has a great burden for the young people. Aside from the Sunday Service, Sunday School, and Friday Bible Study, the church holds Saturday outreach program such POP (Pathseekers Outreach Program) from 10:00AM to 4:00PM. The young people have Bible lessons, tutorial services, playing ping-pong, and computer games. Currently, aside from reaching out to the young people, the church has a burden to reach out to their parents, too. By providing dinners in a relaxed atmposphere, they share the gospel with their parents.</p>

<p>C.E.C of Chinatown was the first church established by Rev. Yang. Therefore, Rev. Yang holds a special feeling for the church, alike the love for the &quot;first-born&quot; child who gets a &quot;special love&quot; from the father. Rev. Yang likes to joke and say that when Noah and his family, consisting of eight people, left the ark, they started a &quot;new world&quot;. There are &quot;eight&quot; young people who assisted Rev. Yang to start this ministry. So &quot;eight&quot; is a good number. Therefore, Rev. Yang decided to celebrate the anniversary on August 8th in memory of the start of the C.E.M. ministry</p>
</div>
'
where church_id = (select church_id from church where church_path = 'chinatown')
and locale = 'en'
and page_id = 'intro';


update church_content
set body = 
'<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label">監督:</td>
			<td>楊摩西 牧師, (973) 335-7337 ext. 209</td>
		</tr>
		<tr>
			<td class="label">牧師:</td>
			<td>林森良 牧師, (917) 361-6866</td>
		</tr>
		<tr>
			<td class="label">傳道:</td>
			<td>呂嶺乾 傳道, (917) 753-7787</td>
		</tr>
		<tr>
			<td class="label"><span style="color: rgb(0, 0, 0); font-family: Arial, helvetica, sans-serif, 新細明體; font-size: 14px; font-weight: bold; white-space: nowrap;">傳道:</span></td>
			<td><span style="font-family: Helvetica, arial, freesans, clean, sans-serif; line-height: 22px; background-color: rgb(251, 251, 251);">張勇生 傳道, (973) 393-7876</span></td>
		</tr>
	</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsi/images/icon_googlemap.gif" width="16" /></td>
			<td class="label">地址:</td>
			<td>248 Grand Street (between Bowery and Chrystie Street) New York, NY 10002, USA</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsi/images/icon_phone.gif" width="16" /></td>
			<td class="label">電話:</td>
			<td>(212) 966-5411</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsi/images/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:chinatown@emsionline.org">chinatown@emsionline.org</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">成立日期: </span>1968年</p>

<p><span class="label">簡史: </span><br />
<img align="left" height="255" hspace="5" src="/emsi/images/church_chinatown.jpg" width="360" />一九六八年，楊牧師在中國城勿街十號（10 Mott St.）租下二樓，成立「生命團契」，這是楊摩西牧師成立的第一間教會，後於一九七○年更名為中國城生命堂。楊摩西牧師常常提起早期大學查經班的八位成員：周靄楣、許娜娜、李珍瑜、曾文鳳、曾文愛、王慕清、林瑞桃及林團鐘長老一家。這八員大將可說是「生命家庭」的開始。後來查經班加入了幾位新人，他們都是研究所的學生：周應彪、吳翩翩、許偉國、郭靄玉、林則寶、陳達堂、潘冀、林國仁、潘重光、向傳仁等。後來林則寶和林珍瑜結為夫婦，其他的弟兄姐妹也分別嫁娶，「生命之家」增加了媳婦和女婿，儼然成為一個大家庭。連續兩次搬遷之後，終於在一九七四年憑信心買下位於中央街的一棟三層樓房（253 Centre St.）。如今，除了林長老回天家，一些弟兄姐妹搬離此地之外，其他的成員和家人都忠心留在東部各生命堂，是楊牧師得力的同工。</p>

<p>長久以來，中國城生命堂的會友絕大多數都是屬於所謂的「ABC」，也就是在美國出生成長的華人。除了少數略懂粵語外，都只能講英語。以往，他們多在美國國慶日時舉辦夏令會，藉此機會傳福音。而那些在夏令會中得救、受洗、加入教會年輕人，也使教會充滿了活力和朝氣。他們對年輕人很有負擔，因此除了主日崇拜、主日學、周五的查經班之外，每周六上午十時至下午四時，教會的設施也開放給附近的年輕人使用，讓他們能夠進來打乒乓、玩電腦遊戲、讀書、做功課，會友們輪流在那兒輔導他們的課業。近幾年，除了傳福音給年輕人，他們也有負擔要傳福音給自己年長的父母，藉著餐會，在溫馨又輕鬆的氣氛中，將福音的好消息帶給只會說家鄉話的父母。</p>

<p>中國城生命堂是楊牧師設立的第一間教會，所以他對這有很特殊的感情，就像是家中的第一個孩子一樣，得到父親許多的關愛。生性幽默、愛開玩笑的楊牧師說：當年挪亞一家八口出方舟，開始了一個新的世界，早期大專生查經班的八位元老也協助推展整個「生命」事工。「八」是個新生的數字，所以他定八月八日為慶祝「生命」事工開展的感恩紀念日。</p>
</div>
'
where church_id = (select church_id from church where church_path = 'chinatown')
and locale = 'zh'
and page_id = 'intro';


insert into church_content (CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(34, 'intro', 'en', 'CEC in Fuenlabrada - Brief History', '
<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
.contact-content td {font-size: small; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style><div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label">Evangelist:</td>
<td>Ev. Guo Dan Jiang, 34-620-630-901</td>
</tr>
</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img src="/emsi/images/icon_googlemap.gif" width="16" height="16" /></td>
<td class="label">Address:</td>
<td>C/Leon 24, 28947 Fuenlabrada Madrid, Spain</td>
</tr>
<tr>
<td class="label"><img src="/emsi/images/icon_phone.gif" width="16" height="16" /></td>
<td class="label">Tel#:</td>
<td>34-91-016-0197 , 34-91-459-5775</td>
</tr>
<tr>
<td class="label"><img src="/emsi/images/icon_phone.gif" width="16" height="16" /></td>
<td class="label">Fax#:</td>
<td>34-91-4595844</td>
</tr>
<tr>
<td><img src="/emsi/images/icon_email.gif" width="16" height="16" /></td>
<td class="label">Email:</td>
<td><a href="mailto:guodanj@yahoo.es">guodanj@yahoo.es</a></td>
</tr>
</tbody>
</table>
</div>
</div>
<p><hr size="1" width="100%" align="center" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>January 6, 2008
</p>
<p>
Fuenlabrada is a satellite city in the suburb of Madrid; it is 20 kilometers from A-42 highway. There is an industrial district called Pol.Ind.Cobo Calleja with many huge warehouses. More than ten years ago, the Chinese came here to start their wholesale business. The number of Chinese in construction, purchasing, unloading containers, etc., began to rise. We saw the Gospel vision here, but we needed a place for service.<br />
In the summer of 2002, Sister Ing of CEC in Madrid started a restaurant where we gathered as a meeting place. We started the Fuenlabrada Bible Study there on November 19, 2002 every Tuesdays at 8:30PM. We conducted visitation and shared the Gospel. This Bible study was held for more than a year, but it was stopped when the restaurant was closed. As Sunday is the busiest day in the wholesale business here, many church members in the wholesale business cannot attend the Sunday Service in Madrid. So, we had to move the church to the warehouse district. On December 22, 2007 we rented the auditorium of a Chinese Association for a Christmas celebration to reach out to the businessmen here. We went on visitation and distributed Gospel tracts; around 223 people attended this event.<br />
The CEC in Fuenlabrada was officially established on January 6, 2008 at the classroom of a driving school of Brother Cheng. The co-workers of the CEC in Madrid came to serve in the different ministries. There were 41 people who attended the grand opening Service of the 8th CEC in Spain. Rev. Moses Yang came to lead the evangelistic meeting on March 8th at the auditorium of the Chinese Association. The seminarians from Holland, France, and Portugal came to distribute tracts and conduct personal evangelism; 43 people attended that evangelistic meeting.<br />
We hope that the members will grow speedily in their spiritual life and there will be many local co-workers to serve. This is a wide field where the seed of the Gospel can be planted. May the CEC in Fuenlabrada become a blessing to this industrial district. Please pray for this new ministry.
</p>
</div>');

insert into church_content (CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(34, 'intro', 'zh', '福恩城基督教生命堂 - 教會簡介', '
    <style>
.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style><div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label">傳道:</td>
<td>蔣國淡 傳道, 34-620-630-901</td>
</tr>
</tbody>
</table>
<p></p>
<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
<td class="label">地址:</td>
<td> C/Leon 24, 28947 Fuenlabrada Madrid, Spain </td>
</tr>
<tr>
<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
<td class="label">電話:</td>
<td>34-91-016-0197, 34-91-459-5775</td>
</tr>
<tr>
<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
<td class="label">傳真:</td>
<td>34-91-459-5844</td>
</tr>
<tr>
<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
<td class="label">電郵:</td>
<td><a href="mailto:guodanj@yahoo.es">guodanj@yahoo.es</a></td>
</tr>
</tbody>
</table>
</div>
</div>
<p><hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">成立日期: </span>2008年 1月6日
</p>
<p>
<span class="label">簡史: </span>
</p>
<p>
福恩拉夫拉達是馬德里市區外圍的衛星城之一，位於南下公路  A-42  約二十公里。在這裡有一片工業區  —  POL.IND.COBO CALLEJA，有許多西班牙人的大倉庫。十多年前，中國人逐漸在此結集，開大倉庫作批發生意。來到這裡裝修、進貨、卸集裝箱等等，出入的中國人多了起來，我們看見這裡的福音異象。
</p>
<p>
二○○二年夏，馬德里生命堂同工應超蘭姐妹在這裡開起餐館，提供了聚會的地方。二○○二年十一月十九日，我們開始了福恩拉夫拉達查經班。每週二晚上八點半(倉庫下班後)，定期在餐館聚會，也經常往來探訪、傳揚福音。這個查經班持續了一年多時間，因餐館缺人手管理轉手易主，查經班就暫停了。 但福恩拉夫拉達的批發商，禮拜天最忙，愈來愈多批發業的會友無法作禮拜。只有一個結論：把教會開到倉庫區。 在二○○七年聖誕節前，我們租借區內華人社團西華聯的大禮堂，於十二月廿二日週六下午舉辦一場大型聖誕晚會，向區內商家傳福音。我們分組邀請、分發傳單。這是福恩拉夫拉達這塊即將發展成為歐洲最大的批發商城，首次舉辦這樣的活動。當天有二百二十三人，出席盛會。
</p>
<p>
兩星期後，二○○八年一月六日主日下午在會友鄭永鋼弟兄提供的駕校教室舉行成立禮拜。馬德里生命堂的同工，七點鐘禮拜一結束立即分開幾部汽車火速前往福恩拉夫拉達安置會場音響、投射機等。李月雲牧師陳述開設教會的異象並以腓利比書一章激勵弟兄姐妹同心興旺福音並宣告教會成立。西班牙第八間教會  —  福恩城基督教生命堂正式成立，共有四十一人参加。 三月，總會全球監督暨神學院院長楊摩西牧師在馬德里歐洲分院教神學課。三月八日周六下午，我們再次商借西華聯禮堂，敦請楊摩西牧師主領佈道會，證道主題：危機與轉機。前一天(週五)，帶神學生(包括荷蘭、法國、葡萄牙來的國外選修生)至福恩拉夫拉達商城，分組派單張邀請和個人佈道。四十三人参加了佈道會。
</p>
<p>
我們期盼信徒們靈命快快成長起來，將來在本地培養更多同工出來配搭服事，在這廣大禾場撒播更多福音種子。願馬德里福恩城基督教生命堂成為工業區眾人的祝福。請大家多為這個新事工禱告！
</p>
</div>');

update church_detail
set value = '三籓市基督教生命堂'
where church_id = 11
and locale = 'zh'
and key = 'menu_name';
