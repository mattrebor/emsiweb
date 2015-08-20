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

update church set address='733 47th Street, Brooklyn, NY 11220, USA', latitude =  40.643776, longitude = -74.003064 where church_path = 'brooklyn';
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
update church set address='191 E Gish Road, San Jose, CA 95112-4704, USA', latitude = 37.36407, longitude = -121.905978 where church_path = 'sanjose';
update church set address='6656 Park Riviera Way, Sacramento, CA 95831, USA', latitude = 38.506565, longitude = -121.550272 where church_path = 'sacramento';
update church set address='1107 Budapest, Monori u.2-4. E12-12 Hungary', latitude = 47.4818745, longitude = 19.122065  where church_path = 'budapest';
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
update church set address='Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands', latitude = 51.502719, longitude = 4.282703  where church_path = 'bergenopzoom';
update church set address='Calle Carolinas, 10, 28039 Madrid, Spain', latitude = 40.4512378, longitude = -3.7048897 where church_path = 'madrid';
update church set address='C/ Cura Femenia, 1, 46006 Valencia, Spain', latitude = 39.4619848, longitude = -0.3717682 where church_path = 'valencia';
update church set address='Av. de la Comunidad Valenciana 14, Edificio Coblanca 15, Local-7. 03503 Benidorm Alicante ', latitude = 38.54177, longitude = -0.122675 where church_path = 'benidorm';
update church set address='C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain', latitude = 38.339698, longitude = -0.489878 where church_path = 'alicante';
update church set address='C/.Menceyes 36，35110 Las Palmas, de Gran Canaria, Spain', latitude = 27.850315, longitude = -15.447372 where church_path = 'canaria';
update church set address='Calle Alguacil, 8, 28038 Madrid, Spain', latitude = 40.3960213, longitude = -3.6630519 where church_path = 'southmadrid';
update church set address='Carrer dOlzinelles, 91, 08014 Barcelona, Spain', latitude = 41.3709592, longitude = 2.1374551 where church_path = 'barcelona';
update church set address='Calle León, 24, 28947 Fuenlabrada, Madrid, Spain', latitude = 40.2636947, longitude = -3.74496 where church_path = 'fuenlabrada';
update church set address='Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal', latitude = 38.711997, longitude = -8.980867 where church_path = 'portoalto';
update church set address='Rua Francisco Sanches 17, 1170-140 Lisbon, Portugal', latitude = 38.7306258, longitude = -9.1339151 where church_path = 'lisbon';
update church set address='Rua Chã n°117, 4 Andar - Porto, Portugal', latitude = 41.144229, longitude = -8.609701 where church_path = 'porto';
update church set address='Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal', latitude = 41.334609, longitude = -8.722397 where church_path = 'mindelo';
update church set address='73 Avenue de Verdun, 94200 Ivry-sur-Seine, France', latitude = 48.8135227, longitude = 2.3702061 where church_path = 'paris';
update church set address='Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium', latitude = 51.219508, longitude = 4.417894 where church_path = 'antwerpen';
update church set address='Rue du Fossé aux Loups 32, 1000 Brussels, Belgium', latitude = 50.8503111, longitude = 4.3546746 where church_path = 'brussels';
update church set address='Ledebergplein 2, 9050 Ledeberg (Gent), Belgium', latitude = 51.0370008, longitude = 3.7411437 where church_path = 'gent';
update church set address='Kobe-shi Chuo-ku Motomachi-dori 2-9-1 Shitsu [Room] 703, Japan', latitude = 34.688923, longitude = 135.186962 where church_path = 'kobe';
update church set address='Alley 25, Lane 113, Section 3, Mínshēng East Road, Songshan District, Taipei City, Taiwan 105', latitude = 25.0593059, longitude = 121.547255 where church_path = 'taipei';
update church set address='71 Theal Street, Parow North 7500, South Africa', latitude = -33.883021, longitude = 18.583653where church_path = 'parownorth';
update church set address='94 Campground Road, Cape Town 7700, South Africa', latitude = -33.965856, longitude = 18.474988 where church_path = 'capetown';

update church set address='Geograaf 13, Centerpoort-Nieuwgraaf, 6921 EW Duiven, The Netherlands', latitude = 51.96284559999999, longitude = 6.00577570 where church_path = 'arnhem';
update church set address='Via Stresa, 3, 20125 Milan, Italy', latitude = 45.49278710, longitude = 9.2040530 where church_path = 'milan';
update church set address='Piazza San Domenico, 10, 59100 Prato Province of Prato, Italy', latitude = 43.88184649999999, longitude = 11.09375730 where church_path = 'prato';
update church set address='Osaka-shi Abeno-ku Tennoji-machi Kita [North] 1 chome 2-2, Japan', latitude = 34.646304, longitude = 135.522001  where church_path = 'osaka';

---------------------update Brooklyn - 7th Ave Fuzhou Service intro page


update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td> Ev. Paul Cheng, (c) 917-361-0823</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 733 47th Street, Brooklyn, New York 11220, USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> (C)917-361-0823</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href=\"mailto:chen_paul0620@yahoo.com">chen_paul0620@yahoo.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>August 3, 2009
</p>
<p>
<img hspace="5" src="/emsi/images/Brooklyn Church small.JPG" align="left" height="255" width="360" />CEM Church in Brooklyn was established on August 3, 2009 when CEM Bishop Moses Yang noted the increasing Chinese population in Brooklyn.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'en'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>陳松曦 傳道, (手機)917-361-0823</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 733 47th Street, Brooklyn, New York 11220, USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>(手機)917-361-0823</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:chen_paul0620@yahoo.com">chen_paul0620@yahoo.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2009年 8月3日
</p>
<p>
<span class=\"label\">簡史: </span><br />

<img hspace="5" src="/emsi/images/Brooklyn Church small.JPG" align="left" height="255" width="360" />布路倫生命堂成立于2009年8月3日。生命堂總監督楊摩西牧師看見布路倫地區華人越來越多,因而開拓此間教會。
</p>
<p>
目前除了每週崇拜聚會外，還有查經班。
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('
<p>
<b>Evangelist: </b>Ev. Paul Cheng, (c) 917-361-0823
</p>
<p>
<b>Address: </b>733 47th Street, Brooklyn, New York 11220, USA
</p>
<p>
<b>Tel #: </b>(c) 917-361-0823
</p>
<p>
<b>Email: </b>chen_paul0620@yahoo.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=733+47th+St.,+Brooklyn,+New+York+11220.&hnear=733+47th+St,+Brooklyn,+New+York+11220&gl=us&t=m&z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=733+47th+St.,+Brooklyn,+New+York+11220.&hnear=733+47th+St,+Brooklyn,+New+York+11220&gl=us&t=m&z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'en'
	and page_id = 'contactus';

	
update church_content set body = STRINGDECODE('
<p>
<b>傳道: </b>陳松曦 傳道, (手機)917-361-0823
</p>
<p>
<b>地址: </b>733 47th Street, Brooklyn, New York 11220, USA
</p>
<p>
<b>電話: </b>(手機) 917-361-0823
</p>
<p>
<b>電郵: </b>chen_paul0620@yahoo.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=733+47th+St.,+Brooklyn,+New+York+11220.&hnear=733+47th+St,+Brooklyn,+New+York+11220&gl=us&t=m&z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=733+47th+St.,+Brooklyn,+New+York+11220.&hnear=733+47th+St,+Brooklyn,+New+York+11220&gl=us&t=m&z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'contactus';


update church_content set body = '<table border="1" cellpadding="5">
<tr>
	<td>Worship Service</td>
	<td>Sunday 2:00—3:30pm</td>
</tr>
<tr>
	<td>Bible Study</td>
	<td>Sunday 3:30—4:00pm</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'en'
	and page_id = 'schedule';	
	

	
update church_content set body = '<table border="1" cellpadding="5">
<tr>
	<td>主日崇拜</td>
	<td>禮拜日下午2:00—3:30</td>
</tr>
<tr>
	<td>查經禱告會</td>
	<td>禮拜日下午3:30—4:00</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'schedule';	
	
	
	
------------end  brooklyn

	
	
	
		
---------------------update queens pages

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td> Rev. SenLiang Lin, (C) 917-361-6866</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 35-26 Union St. Flushing, NY 11354, USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> (C) 917-361-6866</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:ecmsiinqueens@gmail.com">ecmsiinqueens@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>May 10, 1985
</p>
<p>
<img src="/emsi/images/church_queens.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />
Since 1985, the CEC in Queens (official name, Evangelical Church Mission and Seminary International in Queens) had been led by 7 pastors in the past. At the present, Rev. Moses Lin is shepherding this church.
</p>
<p>

It has been through numerous difficulties and it relocated many times. Yet, because of the unselfish participation, involvements, and joint efforts of the members, many unbelievers have come to the church. Members mostly come from Asian regions (Philippines, Taiwan, Indonesia, Malaysia, Hong Kong, and Mainland China …)
</p>
<p>

Every Sunday morning, the church has Sunday Service, Children Sunday School, and Basic Doctrine Class. The church also hosts Sisters and Brothers Fellowship every other week. There is a Family Worship on Wednesdays, prayer meeting on Thursdays, and Mandarin Bible Studies every Friday.Consequently, special services are provided to celebrate various events.
</p>
<p>

Praise the Lord that through Bible Studies, prayer meetings and different services, brothers and sisters are motivated to love and serve the Lord, and also to build a closer relationship within the spiritual family.
</p>
<p>

Praise the Lord. He guided the CEC in Queens all the way. He strengthened brothers’ and sisters’ spiritual growth and we experienced God’s wonderful blessings. May God use us and we give all the glory to God!
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'queens')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師 :</td>
			<td>林森良 牧師, (手機) 917-361-6866 </td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 35-26 Union St. Flushing, NY 11354, USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (手機)917-361-6866</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: ecmsiinqueens@gmail.com"> ecmsiinqueens@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1985年 5月 10日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/church_queens.jpg" align=\"left\" height=\"255\" width=\"360\" />一九八四年秋，紐約市皇后區成立了一個閩南語查經班。當時每星期五晚上有一群弟兄姐妹聚集在一起唱詩、禱告、查經。隨著人數的增加，深深感到需要一位受過神學訓練的傳道人來帶領查經。
</p>
<p>
一九八五年，查經班邀請到楊摩西牧師，這是第一位傳道人。不到一個月的時間，上帝又預備了謝天育牧師出來全時間帶領。這兩位牧師為教會找著一個固定的聚會場地。終於，在一九八五年五月十日，皇后區基督教生命堂正式成立，並舉行了首次主日崇拜。
</p>
<p>
成立以來，主先後預備了幾位傳道人。一九八五至一九八九年黃世嘉牧師在此負責。一九八九至一九九三年，有黃宋來牧師、曾玉珊傳道及神學生林正仁，一九九四年至二OO八年，則有吳錫安牧師夫婦的同心牧養;自二OO八年至今, 林森良牧師在此負責。
</p>
<p>
教會曾經歷多次的搬遷，也經歷過許多的困難，但每位弟兄姐妹都能同心合意地事奉主，帶領未信的人加入教會。隨著聖工的發展，皇后區生命堂也日益具有國際色彩，會友來自亞洲各地，有菲律賓、台灣、印尼、馬來西亞、香港和中國大陸等。
</p>
<p>
教會現況：除了週日上午的主日崇拜外，還設有兒童主日學、詩班、姐妹團契、聖經分享、週三家庭禮拜、週四禱告會和監督楊摩西牧師所帶領的週五查經班。感謝神的恩典，藉著查經與禱告會，挑旺了眾弟兄姊妹的心，使更多的人願意出來服事主。我們除了每週的崇拜，另外，在各節慶日也都有特別的聚會；甚至夏天也經常舉行郊遊野餐、海邊釣魚、抓螃蟹等活動，使弟兄姐妹們不但能夠藉著敬拜來親近神，也能藉著各項活動使彼此間的關係更加親蜜。
</p>
<p>
最後，讓我們再次獻上衷心的感謝；感謝主，一路帶領我們皇后區生命堂，不但使每位弟兄姊妹的身心靈能夠日益茁壯，更讓我們時常經歷神的恩典；願主使用我們每一個人，讓榮耀歸給主。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'queens')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>35-26 Union St. Flushing, NY 11354, USA
</p>
<p>
<b>Tel #: </b> (C) 917-361-6866
</p>
<p>
<iframe scrolling=\"no\" marginWidth=\"0\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=35-26+Union+St.+Flushing,+NY+11354&amp;aq=&amp;sll=40.764656,-73.828315&amp;sspn=0.012043,0.01487&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=35-26+Union+St,+Queens,+New+York+11354&amp;t=m&amp;ll=40.764681,-73.828297&amp;spn=0.031204,0.054932&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" height=\"480\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=35-26+Union+St.+Flushing,+NY+11354&amp;aq=&amp;sll=40.764656,-73.828315&amp;sspn=0.012043,0.01487&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=35-26+Union+St,+Queens,+New+York+11354&amp;t=m&amp;ll=40.764681,-73.828297&amp;spn=0.031204,0.054932&amp;z=14&amp;iwloc=A\" style=\"text-align: left; color: #0000ff\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'queens')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>35-26 Union St. Flushing, NY 11354, USA
</p>
<p>
<b>電話:</b> (手機)917-361-6866
</p>
<p>
<iframe scrolling=\"no\" marginWidth=\"0\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=35-26+Union+St.+Flushing,+NY+11354&amp;aq=&amp;sll=40.764656,-73.828315&amp;sspn=0.012043,0.01487&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=35-26+Union+St,+Queens,+New+York+11354&amp;t=m&amp;ll=40.764681,-73.828297&amp;spn=0.031204,0.054932&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" height=\"480\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=35-26+Union+St.+Flushing,+NY+11354&amp;aq=&amp;sll=40.764656,-73.828315&amp;sspn=0.012043,0.01487&amp;vpsrc=0&amp;ie=UTF8&amp;hq=&amp;hnear=35-26+Union+St,+Queens,+New+York+11354&amp;t=m&amp;ll=40.764681,-73.828297&amp;spn=0.031204,0.054932&amp;z=14&amp;iwloc=A\" style=\"text-align: left; color: #0000ff\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'queens')
	and locale = 'zh'
	and page_id = 'contactus';


------------end queens

	
---------------------update murrayhill - Changed to Berkeley Heights in name (Jan 2015)pages

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Prof. Jing Huang</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>
			725 Mountain Avenue, Berkeley Heights NJ 07922</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>917-488-8610</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:jhuang277@gmail.com">jhuang277@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>1984
</p>

<img src="/emsi/files/murrayhill/murrayhill.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />
<p>
1984 - CEC in Berkeley Heights established 
</p>
<p>
The CEC in Berkeley Heights is located in Berkeley Heights, New Jersey. It was originally CEC in Murray Hill as the church was located at Murray Hill when it was established. It is located thirty miles south of Towaco, the headquarter. The church was established in 1984. There were two big companies – Lucent and AT & T that were located near the church at that time. There were many Chinese professionals employed in this area. Because of the big population of Chinese here, Rev. Moses Yang saw the need of developing the ministry. Through the assistance of Dr. James Huang, they were able to find a place and start the church. The church has been pastured by more than ten pastors in the past years.
</p>
<p>
The condition of the church
</p>
<p>
The previous pastors did not take hold of the “three precious areas in developing a church” – personal evangelism, Bible study and preaching, and so the church did not grow. After Rev. Henry Yao left for the Philippines, the worship services were stopped. The church’s co-workers did not see progress in the church and suggested to close down the church so as not to waste manpower and money. But EMSI believed that there are many Chinese in this area and there’s a need for the gospel. It was decided that the church should continue on.
</p>
<p>
In August, 2012, EMSI sent Prof. Jing Huang to be responsible for the church ministries and to develop the church. At the present, we witnessed improvements. Although the attendance is still not stable, we believe that the Lord will preserve a church that preaches the truth. May this church bring blessings to the Chinese in the surrounding area.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧 者:</td>
			<td>黃靜 教授  </td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">會 址:</td>
			<td> 725 Mountain Avenue, Berkeley Heights, NJ 07922, USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>917-488-8610</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: jhuang277@gmail.com"> jhuang277@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1984 年
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/murrayhill/murrayhill.jpg\" align=\"left\" height=\"255\" width=\"360\" />(一)1984年茉莉山生命堂成立</p>
<p>
伯特利生命堂位於新澤西州的Berkeley Heights（原名「茉莉山生命堂」，舊址在新澤西州的Murray Hill），在佈道會總部多華谷（Towaco）以南約30英里的地方，成立於1984年。當時Lucent 和 AT&T兩大公司在教會所在地附近，集聚了許多華人專業人士。因中國人甚多，總監督楊摩西牧師看到開展聖工的需要，於是在黃宇銘弟兄的協助下，找到了教會聚會的地方，成立了教會。
</p>
<p>
(二)茉莉山生命堂現況
</p>
<p>
教會成立以來先後已由十餘位牧者傳道人牧養。早期傳道人因為沒有掌握「拓荒三寶」（即個人佈道、查經、講道）致使教會沒能很好地成長，及至姚亨利牧師回菲律賓以後，停止了聚會。教會同工因看到本教會聖工多年無進展，建議不如關閉，以免浪費財力人力。但佈道會總部考慮到當地中國人多，有福音的需要，於是決定將教會的福音工作繼續做下去。
</p>
<p>
2012年八月派神學院的黃靜教授負責本教會的事工，重新拓荒。目前已看到略有起色。雖然聚會人數還很不穩定，但相信主必保守這個堅持真理的教會，使這教會成為周圍華人的祝福。
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>725 Mountain Avenue, Berkeley Heights, NJ 07922, USA
</p>
<p>
<b>Tel #:</b> 917-488-8610
</p>
<p>
<iframe scrolling=\"no\" marginHeight=\"0\" marginWidth=\"0\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=725+Mountain+Ave,+Berkeley+Heights,+NJ+07922,+USA&amp;sll=40.498169,-74.428124&amp;sspn=0.009676,0.016801&amp;ie=UTF8&amp;hq=&amp;hnear=725+Mountain+Ave,+Berkeley+Heights,+Union,+New+Jersey+07922&amp;ll=40.6691,-74.439003&amp;spn=0.007812,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" height=\"480\" width=\"640\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=725+Mountain+Ave,+Berkeley+Heights,+NJ+07922,+USA&amp;sll=40.498169,-74.428124&amp;sspn=0.009676,0.016801&amp;ie=UTF8&amp;hq=&amp;hnear=725+Mountain+Ave,+Berkeley+Heights,+Union,+New+Jersey+07922&amp;ll=40.6691,-74.439003&amp;spn=0.007812,0.013733&amp;z=16&amp;iwloc=A\" style=\"text-align: left; color: #0000ff\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'en'
	and page_id = 'contactus';
	

	
update church_content set body = STRINGDECODE('<p>
<b>地址: </b>725 Mountain Avenue, Berkeley Heights, NJ 07922, USA
</p>
<p>
<b>電話:</b> 917-488-8610
</p>
<p>
距離美東超市及梅山中文學校(Murray Hill Chinese School)開車約十分鐘
</p>
<p>
<iframe scrolling=\"no\" marginHeight=\"0\" marginWidth=\"0\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=725+Mountain+Ave,+Berkeley+Heights,+NJ+07922,+USA&amp;sll=40.498169,-74.428124&amp;sspn=0.009676,0.016801&amp;ie=UTF8&amp;hq=&amp;hnear=725+Mountain+Ave,+Berkeley+Heights,+Union,+New+Jersey+07922&amp;ll=40.6691,-74.439003&amp;spn=0.007812,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" height=\"480\" width=\"640\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=725+Mountain+Ave,+Berkeley+Heights,+NJ+07922,+USA&amp;sll=40.498169,-74.428124&amp;sspn=0.009676,0.016801&amp;ie=UTF8&amp;hq=&amp;hnear=725+Mountain+Ave,+Berkeley+Heights,+Union,+New+Jersey+07922&amp;ll=40.6691,-74.439003&amp;spn=0.007812,0.013733&amp;z=16&amp;iwloc=A\" style=\"text-align: left; color: #0000ff\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'zh'
	and page_id = 'contactus';

	
update church_content set body = STRINGDECODE('

<b>Sunday Worship│Sunday 2:00PM </b>
<br/>
Currently our Sunday Worship service is conducted in Mandarin with simultaneous English and
Cantonese translation available (in a separate area).
<br/><br/>
<b>Meeting Schedule</b>
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday Worship</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">1:30pm - 2:30pm <br/>(Transportation can be arranged)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">3:00pm - 3:30pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday Bible Study</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">3:30pm - 4:30pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Children’s Sunday School</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">1:30pm - 2:30pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Cantonese Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Every 3rd Sunday of the Month</td>
			<td style="padding: 0px 10px 0px 10px">3:30pm - 4:30pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Daytime Bible Study & Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Tuesday</td>
			<td style="padding: 0px 10px 0px 10px">9:30am – 11:00am</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Evening Bible Study & Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Friday</td>
			<td style="padding: 0px 10px 0px 10px">7:00pm - 9:00pm<br/></td>
		</tr>
	</tbody>
</table>

<br/>

<b>Class Schedule</b>
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">English Class</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">1:00pm - 1:30pm (No Age Limit)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Chinese Class</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">3:00pm - 4:30pm (Traditional & Simplified)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Music Class</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">3:30pm - 4:30pm<br/>(Piano, voice and guitar lessons plus learning how to read music)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Karate </td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">1:30pm -3:00pm (five years and older)</td>
		</tr>
	</tbody>
</table>

Church is planning to open the tutoring class for students in middle and primary schools.

')	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'en'
	and page_id = 'schedule';
	
	
update church_content set body = STRINGDECODE('

<b>主日崇拜│週日下午2:00 PM</b>
<br/>
<br/>
教會目前只有中文國語崇拜，備有英文和粵語台下同步翻譯。
<br/>
<br/>

<b>聚會日程</b>
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日崇拜</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 1:30 - 2:30 （可安排接送）</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日禱告會</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:00 - 3:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日查經班</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:30 - 4:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">兒童主日學</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 1:30 - 2:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">廣東團契</td>
			<td style="padding: 0px 10px 0px 10px">每月第三週日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:30 - 4:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">日間查經班 & 禱告會</td>
			<td style="padding: 0px 10px 0px 10px">星期二</td>
			<td style="padding: 0px 10px 0px 10px">上 午 9:30 - 11:00</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">晚間查經班 & 禱告會</td>
			<td style="padding: 0px 10px 0px 10px">星期五</td>
			<td style="padding: 0px 10px 0px 10px">晚上 7:30 - 9:00</td>
		</tr>
	</tbody>
</table>
<br/>
<br/>
<b>學習班</b>
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">英文班</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 1:00 - 1:30 （年齡不限)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">中文班</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:00 - 4:30 （繁、簡體）</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">音樂班</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:30 - 4:30 （鋼琴、聲樂、吉他、識譜)</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">空手道班</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 1:30pm -3:00pm （五歲以上）</td>
		</tr>
	</tbody>
</table>


')	where church_id = (select church_id from church where church_path = 'murrayhill')
	and locale = 'zh'
	and page_id = 'schedule';


-------------end  murrayhill

------------- Highland park

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. Andrew Wong, (C) 732-910-7431</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 23 South 2nd Ave. Highland Park, NJ 08904</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>732-750-0897</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:cemhpnj@gmail.com">cemhpnj@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>1978
</p>
<p>
<img src="/emsi/files/highlandpark.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />About a decade ago, a group of devoted members initiated the Zion Fellowship in order to cultivate spiritual growth and carry out evangelical missions. The fellowship takes turns meeting at the homes of our brothers and sisters. The hosts are hardworking and more than willing to open their houses as their sacrifice to the Lord. They never complained about overtime and their efforts in serving God. Furthermore, they invited neighbors and friends to the fellowship meetings. Some people don’t like to come to the church, but like to come to our fellowship gatherings. The meetings inspire them. Some newcomers accepted Jesus Christ as their personal Savior and later, participated actively in serving the Lord to glorify God’s name. 
In the earlier days, our restaurant Bible-study meetings were attended by two large families and held, in turn, at their homes. Recently, the senior of another large family accepted Jesus Christ as the Lord and led her brother and sister-in-law to be Christians. Now we have three large families attending our restaurant Bible-study meetings. The relatives and friends of those family members also attend often. We can see a growing number of attendants coming to the weekly meetings. Whenever we have a pot-luck lunch, the brothers and sisters of the restaurant Bible-study group are always willing to prepare food for us. I would like to give special thanks to a grandma, who brings home-made cakes and snacks every week to the church for us to share. 
Praise the Lord! In recent years, CEMC in Highland Park realized the need of our new generation and they established an English worship service for the youth group. During special occasions, we hold English and Chinese combined service so that all groups gather to worship the Lord and share our joy in Christ. Our Sunday school is also under the loving care of the Lord. The devoted teachers train our children to know Jesus Christ ever since they learned to talk. With more and more people involving themselves in our choir, it has become another pride that we take in glorifying God’s name.
Apostle Paul thanked God upon every remembrance of the church at Philippi. Why did he thank God? There were a lot of occurrences at Philippi for Paul to be thankful. Likewise, upon every remembrance of CEM in Highland Park, I am thankful. I was extremely inspired by a few recently baptized new believers and their Christian pilgrimage of faith.
First of all, I would like to share the story of Uncle Jung. A sister Evelyn from our church met Uncle Jung when they were walking leisurely in their own community. She brought him to the church and thus opened the opportunity for him to listen to the Gospel. He then accepted Jesus Christ as the Lord. Uncle Jung had read a few Christian articles before. His heart was prepared and the seed of the Gospel was able to take root and grow promptly in his heart. Praise the Lord for His wonderful work!
Sister Chen is a senior. She was also brought to our church by senior sister Lee. As soon as she had the opportunity to hear the Gospel, she opened her heart and accepted Jesus Christ as her personal savior. It is amazing that she turned out to have such a craving for God’s Word. She actively participates in Bible studies and has experienced unremitting spiritual growth. Sister Chen is from mainland China and she was not able to listen to the Gospel there freely. Her background of being raised in a traditionally large family also resulted in huge burdens and responsibilities. Now that she is in America, her hunger and thirst for the truth can be satisfied without restraint. Praise the Lord!
Last but not least, is our sister Lim. She has been attending worship services for many years. However, she had been experiencing inner struggles which kept putting off her commitment to God. Surprisingly, she showed her dedication in front of all her relatives and friends by choosing to be baptized on Christmas. There are a lot of problems that we can not resolve by ourselves. We should come humbly before God and accept the Lord as our personal Savior. This is the one and only choice for us because Christ is the only way (John 14:6).
We are thankful that CEMC in Highland Park is blessed. Just like the verses in the hymn, ‘Higher Ground’: 
“I’m pressing on the upward way, new heights I’m gaining everyday; still praying as I’m onward bound, ‘Lord, plant my feet on higher ground.’ Lord lift me up and let me stand. By faith on heaven’s tableland, A higher plane than I have found: Lord, plant my feet on higher ground.”</p>
</div>
'	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師 :</td>
			<td>黃宋來 牧師, (手機)732-910-7431 </td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 23 South 2nd Ave. Highland Park, NJ 08904, USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>732-750-0897</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: cemhpnj@gmail.com"> cemhpnj@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1978 年
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/highlandpark.jpg" align=\"left\" height=\"255\" width=\"360\" />高原地生命堂的成立，是源於高原地的餐館查經班。當時一位姐妹搬至高原地，有感於家中開餐館不能正常參加主日崇拜，而感到非常難過。就在她最困惑的時候，上帝差遣了楊摩西牧師。幾經商討，他們討論出一個兩全其美的辦法──於每個禮拜一晚十二時以後聚會，使禮拜日忙碌的人，也有機會親近主、讚美主、感謝主。「只要大家方便，我無所謂，隨時都可以來！」楊牧師堅定地說。
</p>
<p>
從此以後，每當聚會的時間，楊牧師總是不辭勞苦地來到查經班，把主的教導和信息告訴大家。離開的時候，往往都是深夜兩點多了。這樣的情況一直到一九七七年，終於開始了正式的主日崇拜聚會。
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>23 South 2nd Ave. Highland Park, NJ 08904, USA
</p>
<p>
<b>Tel #:</b> 732-750-0897, (C) 732-910-7431
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=23+South+2nd+Ave.,+Highland+Park,+NJ+08904+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=23+S+2nd+Ave,+Highland+Park,+Middlesex,+New+Jersey+08904&amp;ll=40.497908,-74.429541&amp;spn=0.007832,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=23+South+2nd+Ave.,+Highland+Park,+NJ+08904+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=23+S+2nd+Ave,+Highland+Park,+Middlesex,+New+Jersey+08904&amp;ll=40.497908,-74.429541&amp;spn=0.007832,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>23 South 2nd Ave. Highland Park, NJ 08904, USA
</p>
<p>
<b>電話:</b> 732-750-0897, (手機)732-910-7431
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=23+South+2nd+Ave.,+Highland+Park,+NJ+08904+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=23+S+2nd+Ave,+Highland+Park,+Middlesex,+New+Jersey+08904&amp;ll=40.497908,-74.429541&amp;spn=0.007832,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=23+South+2nd+Ave.,+Highland+Park,+NJ+08904+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=23+S+2nd+Ave,+Highland+Park,+Middlesex,+New+Jersey+08904&amp;ll=40.497908,-74.429541&amp;spn=0.007832,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'zh'
	and page_id = 'contactus';

	
------------- end Highland park

	
-- update paris intro page
update church_content set body = '<style>
.contact-content {
FONT-FAMILY: Arial,helvetica,sans-serif
}
.contact-content TD {
PADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; FONT-SIZE: small; PADDING-TOP: 2px; 3px: 
}
TD.label {
WIDTH: 1%; WHITE-SPACE: nowrap; FONT-WEIGHT: bold
}
P SPAN.label {
FONT-WEIGHT: bold
}
.main-content {
FONT-FAMILY: Arial, MingLiU, Helvetica, san-serif; COLOR: #333; FONT-SIZE: 13px
}
.borderless-table {
BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px
}</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. Mix Chan</td>
		</tr>
		<tr>
			<td class="label" rowspan="2" valign="top">Resident Evangelists:</td>
			<td>Ev. Martin Ding</td>
		</tr>
		<tr>
			<td>Ev. Edwidge Chung</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>73, Avenue de Verdun, 94200 Ivry sur Seine, Paris, France</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>33-1-5846-0892</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>33-9-5455-0056</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsifrance@hotmail.com">emsifrance@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>October 2001 
</p>
<p>
<img src="/emsi/files/parissmall_0.jpg" alt="CEC in Paris" title="CEC in Paris" height="239" hspace="5" align="left" width="360" />In April 2000, Rev. Moses Yang had a vision for a gospel ministry in Paris; he then organized a short-term mission trip from the CEM Headquarter in America. With the aid of C.E.C. in Holland and devoted believers in Paris, two musical evangelistic meetings were held in a church in District thirteen in Paris, resulting in forty some people accepting Christ.<br /><br />In July 2000, Bible students Mix and Anny Chan were sent by Rev. Moses Yang to Paris during the summer break to gain experience on how to establish C.E.C. churches. For the following three months, Rev. Zion Wu, Ev. Sorina Yang and Rev. Hosea Chi took turns to lead the church in Paris, with assistance from Rev. and Mrs. Hugo Chan and brothers and sisters from Holland.<br /><br />In the early part of 2001, the CEM Headquarter in America purchased the current CEC Paris church building by faith. In June 2001, Rev. Moses Yang sent three Bible students, Ev. Mix and Anny Chan and Ev. Paul Ye to shepherd the CEC in Paris. In October 2001, the renovation of the building was completed and is being used for both E.B.I. and C.E.C. in Paris. It then became the regular meeting place and home for the Paris congregation.
</p>
</div>
'
	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'en'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">會牧:</td>
			<td>陳茂祥 牧師</td>
		</tr>
		<tr>
			<td class=\"label\">駐堂傳道:</td>
			<td>丁業新 傳道, 方敏華 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 73, Avenue de Verdun, 94200 Ivry sur Seine, Paris, France</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 33-1-5846-0892 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 33-9-5455-0056 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsifrance@hotmail.com"> emsifrance@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2001年 10月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/parissmall_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />二○○○年四月楊摩西牧師看見巴黎福音事工的異象，從美國神學院總部組織短宣隊到巴黎佈道，在荷蘭生命堂和巴黎一些特別熱心的基督徒協助下，於十三區的一間教堂舉行兩場音樂佈道會，共有四十多人決志信主。
</p>
<p>2000年七月楊摩西牧師派遣還在就讀的神學生陳茂祥夫婦於暑期間到巴黎兩場實習嘗試開拓建立生命堂的工作。陳傳道夫婦回美國繼續學習。此後，有三個月分别由吳錫安牧師、張秀蘭傳道、戚厚生牧師來巴黎短期帶領教會，期間還有荷蘭陳啟猷牧師和陳師母並一些弟兄姐妹經常來協助。
</p>
<p>2001年年初美國總會憑信心購得巴黎生命堂現在使用的會所。 同年六月楊牧師差派陳茂祥夫婦和葉永春等三位神學生往巴黎生命堂開展教會，2001年10月會所裝修完畢,舉行獻堂典禮,供神學院及巴黎生命堂使用。從此，巴黎生命堂有了固定的聚會地方，屬於自己的家。
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'zh'
	and page_id = 'intro';

	
----------ends paris
	
-- North Paris
INSERT INTO PUBLIC.CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(51, 'northparis', 0, 1, 0);  

--update church set address='38 Rue des Gardinoux, 93300 Aubervilliers, France', latitude = 48.90682970, longitude = 2.36753750 where church_path = 'northparis';

INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(51, 'en', 'menu_name', 'CEC in North Paris');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(51, 'zh', 'menu_name', '巴黎北區基督教生命堂');     

--INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(10, NULL, 51);
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'intro', 'en', 'CEC in North Paris - Brief History', STRINGDECODE('<style>\r\n.contact-content {\r\nFONT-FAMILY: Arial,helvetica,sans-serif\r\n}\r\n.contact-content TD {\r\nPADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; FONT-SIZE: small; PADDING-TOP: 2px; 3px: \r\n}\r\nTD.label {\r\nWIDTH: 1%; WHITE-SPACE: nowrap; FONT-WEIGHT: bold\r\n}\r\nP SPAN.label {\r\nFONT-WEIGHT: bold\r\n}\r\n.main-content {\r\nFONT-FAMILY: Arial, MingLiU, Helvetica, san-serif; COLOR: #333; FONT-SIZE: 13px\r\n}\r\n.borderless-table {\r\nBORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px\r\n}</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">Pastor:</td>\r\n\t\t\t<td>Rev. Mix Chan</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\" rowspan=\"2\" valign=\"top\">Evangelists:</td>\r\n\t\t\t<td>Ev. Martin Ding</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Address:</td>\r\n\t\t\t<td>38, rue des gardinoux 93300 Aubervilliers, Paris, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Tel#:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Fax#:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Email:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">Zion Fellowship in Northern Paris</span></p>\r\n<p>\r\nCEC in Paris is starting its evangelistic outreach program in Northern Paris. Bible study classes are conducted every Thursday, and Saturday. Please invite your friends in the area to attend.</p>\r\n</div>\r\n'));
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'intro', 'zh', STRINGDECODE('巴黎北區基督教生命堂 - 教會簡介'), STRINGDECODE('<style>\r\n.contact-content {font-family: Arial,helvetica,sans-serif,\u65b0\u7d30\u660e\u9ad4 ;}\r\n.contact-content td {font-size: 14px; padding: 2px; 3px;}\r\ntd.label {font-weight: bold; width: 1%; white-space: nowrap;}\r\np span.label {font-weight: bold;}\r\n.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, \u65b0\u7d30\u660e\u9ad4; font-size: 13px; color: #333;}\r\n.borderless-table {border-width: 0px;}\r\n</style>\r\n<div class=\"contact-content\">\r\n<div style=\"color: #000000; font-size: small\">\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u6703\u7267:</td>\r\n\t\t\t<td>\u9673\u8302\u7965 \u7267\u5e2b</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\">\u99d0\u5802\u50b3\u9053:</td>\r\n\t\t\t<td>\u4E01\u696D\u65B0 \u50b3\u9053</td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n<br />\r\n<div style=\"margin-left: 20px\">\r\n<table cellpadding=\"1\" cellspacing=\"0\">\r\n\t<tbody class=\"borderless-table\">\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u5730\u5740:</td>\r\n\t\t\t<td>38, rue des gardinoux 93300 Aubervilliers, Paris, France</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u8a71:</td>\r\n\t\t\t<td>33-1-5846-0892</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u50b3\u771f:</td>\r\n\t\t\t<td>33-9-5455-0056</td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">\u96fb\u90f5:</td>\r\n\t\t\t<td><a href=\"mailto:emsifrance@hotmail.com\">emsifrance@hotmail.com</a></td>\r\n\t\t</tr>\r\n\t\t<tr>\r\n\t\t\t<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>\r\n\t\t\t<td class=\"label\">Skype:</td>\r\n\t\t\t<td>emsifrance </td>\r\n\t\t</tr>\r\n\t</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<hr align=\"center\" size=\"1\" width=\"100%\" />\r\n</div>\r\n<div class=\"main-content\">\r\n<p>\r\n<span class=\"label\">錫安團契</span></p>\r\n<p>\r\n<br />巴黎基督教生命堂在北區福音工作，屢次中段。近期 (2013) 再度展開。每星期四、星期六有查經，約有十多人固定前來，研讀神的話語。也歡迎弟兄姐妹邀請當地華人朋友參加。\r\n&nbsp;\r\n</p>\r\n</div>\r\n')); 
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



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(51, 'schedule', 'zh', '巴黎北區基督教生命堂 - 聚會日程', '
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

--------  Chinatown
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
			<td>Rev. Moses Yang 973-335-7337, ext. 209, (C) 201-650-1923</td>
		</tr>
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. SenLiang Lin (C) 917-361-6866</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Lingkin Lui (C) 917-753-7787</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Yongsheng Zhang (C) 646-462-6116</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsi/images/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>248 Grand Street, New York, NY 10002 USA</td>
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
			<td class="label">主任牧師:</td>
			<td>楊摩西 牧師, 973-335-7337 ext. 209, (手機)201-650-1923</td>
		</tr>
		<tr>
			<td class="label">牧師:</td>
			<td>林森良 牧師,  (手機)917-361-6866</td>
		</tr>
		<tr>
			<td class="label">傳道:</td>
			<td>呂嶺乾 傳道, (手機)917-753-7787</td>
		</tr>
		<tr>
			<td class="label">傳道:</td>
			<td>張勇生 傳道, (手機)646-462-6116</td>
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
<img align="left" hspace="5" src="/emsi/images/chinatown2012.jpg" />一九六八年，楊牧師在中國城勿街十號（10 Mott St.）租下二樓，成立「生命團契」，這是楊摩西牧師成立的第一間教會，後於一九七○年更名為中國城生命堂。楊摩西牧師常常提起早期大學查經班的八位成員：周靄楣、許娜娜、李珍瑜、曾文鳳、曾文愛、王慕清、林瑞桃及林團鐘長老一家。這八員大將可說是「生命家庭」的開始。後來查經班加入了幾位新人，他們都是研究所的學生：周應彪、吳翩翩、許偉國、郭靄玉、林則寶、陳達堂、潘冀、林國仁、潘重光、向傳仁等。後來林則寶和林珍瑜結為夫婦，其他的弟兄姐妹也分別嫁娶，「生命之家」增加了媳婦和女婿，儼然成為一個大家庭。連續兩次搬遷之後，終於在一九七四年憑信心買下位於中央街的一棟三層樓房（253 Centre St.）。如今，除了林長老回天家，一些弟兄姐妹搬離此地之外，其他的成員和家人都忠心留在東部各生命堂，是楊牧師得力的同工。</p>

<p>長久以來，中國城生命堂的會友絕大多數都是屬於所謂的「ABC」，也就是在美國出生成長的華人。除了少數略懂粵語外，都只能講英語。以往，他們多在美國國慶日時舉辦夏令會，藉此機會傳福音。而那些在夏令會中得救、受洗、加入教會年輕人，也使教會充滿了活力和朝氣。他們對年輕人很有負擔，因此除了主日崇拜、主日學、周五的查經班之外，每周六上午十時至下午四時，教會的設施也開放給附近的年輕人使用，讓他們能夠進來打乒乓、玩電腦遊戲、讀書、做功課，會友們輪流在那兒輔導他們的課業。近幾年，除了傳福音給年輕人，他們也有負擔要傳福音給自己年長的父母，藉著餐會，在溫馨又輕鬆的氣氛中，將福音的好消息帶給只會說家鄉話的父母。</p>

<p>中國城生命堂是楊牧師設立的第一間教會，所以他對這有很特殊的感情，就像是家中的第一個孩子一樣，得到父親許多的關愛。生性幽默、愛開玩笑的楊牧師說：當年挪亞一家八口出方舟，開始了一個新的世界，早期大專生查經班的八位元老也協助推展整個「生命」事工。「八」是個新生的數字，所以他定八月八日為慶祝「生命」事工開展的感恩紀念日。</p>
</div>
'
where church_id = (select church_id from church where church_path = 'chinatown')
and locale = 'zh'
and page_id = 'intro';

------------  ends chinatown

--------------  starts Fuenlabrada -------------
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
<td class="label">Pastor:</td>
<td>Rev. Guo Dan Jiang, 34-620-630-901</td>
</tr>
<tr>
<td class="label">Evangelist:</td>
<td>Ev. Zhi Chuan Li, 34-622-526-181</td>
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
<td>34-910-160-197</td>
</tr>
<tr>
<td class="label"><img src="/emsi/images/icon_phone.gif" width="16" height="16" /></td>
<td class="label">Fax#:</td>
<td>34-91-459-5844</td>
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
<td class="label">牧師:</td>
<td>蔣國淡 牧師, 34-620-630-901</td>
</tr>
<tr>
<td class="label">傳道:</td>
<td>李志川  傳道, 34-622-526-181</td>
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
<td>34-910-160-197</td>
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


	
update church_content set body = STRINGDECODE('
<p>
<b>Pastor: </b>Rev. Guo Dan Jiang, 34-620-630-901
</p>
<p>
<b>Evangelist: </b>Ev. Zhi Chuan Li, 34-622-526-181
</p>
<p>
<b>Address: </b>C/Leon 24, 28947 Fuenlabrada, Madrid, Spain
</p>
<p>
<b>Tel #: </b>34-910-160-197
</p>
<p>
<b>Fax #: </b>34-91-459-5844
</p>
<p>
<b>Email: </b>guodanj@yahoo.es
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;t=m&amp;z=14&amp;ll=40.263727,-3.744919&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;t=m&amp;z=14&amp;ll=40.263727,-3.744919&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'fuenlabrada')
	and locale = 'en'
	and page_id = 'contactus';

	
update church_content set body = STRINGDECODE('
<p>
<b>牧師: </b>蔣國淡 牧師, 34-620-630-901
</p>
<p>
<b>傳道: </b>李志川 傳道, 34-622-526-181
</p>
<p>
<b>地址: </b>C/Leon 24, 28947 Fuenlabrada Madrid, Spain
</p>
<p>
<b>電話: </b>34-910-160-197
</p>
<p>
<b>傳真: </b>34-91-459-5844
</p>
<p>
<b>電郵: </b>guodanj@yahoo.es
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;t=m&amp;z=14&amp;ll=40.263727,-3.744919&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Le%C3%B3n,+24,+28947+Fuenlabrada,+Madrid,+Spain&amp;t=m&amp;z=14&amp;ll=40.263727,-3.744919&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'fuenlabrada')
	and locale = 'zh'
	and page_id = 'contactus';


--------------  ends Fuenlabrada -------------

update church_detail
set value = '三籓市基督教生命堂'
where church_id = 11
and locale = 'zh'
and key = 'menu_name';


------------ starts madrid
update church_content set body = '<p>&nbsp;</p>

<p style="margin: 0.6em 0px 1.2em; padding: 0px"><b>Sunday Worship</b>&nbsp;<b style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px">| Sunday 5:30PM</b></p>

<p style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px; margin: 0.6em 0px 1.2em; padding: 0px">&nbsp;</p>

<hr id="null" style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px; height: 1px; background-color: #5294c1; border-style: none; padding: 0px; margin: 0px" />
<p><br />
<b style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px">Church Services Schedule</b></p>

<table align="center" border="0" style="text-align: center">
	<tbody>
		<tr>
			<td style="text-align: center"><b>Content</b></td>
			<td style="text-align: center"><b>Time&nbsp;</b></td>
			<td style="text-align: center"><b>Location&nbsp;</b></td>
		</tr>
		<tr>
			<td style="text-align: center">Chinese school&nbsp;</td>
			<td style="text-align: center">&nbsp;Sunday 1:30 PM</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Worship Service</td>
			<td style="text-align: center">&nbsp;Sunday 5:30 PM</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Senior Choir</td>
			<td style="text-align: center">&nbsp; Sunday 7:15 PM&nbsp;</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Youth fellowship</td>
			<td style="text-align: center">&nbsp;Thursday 6:30 PM&nbsp;</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Prayer &amp; Testimonial Service</td>
			<td style="text-align: center">Thursday 9:30 PM</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Oversea Student Fellowship</td>
			<td style="text-align: center">Friday 6:00 PM</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Bible study, Fellowship</td>
			<td style="text-align: center">Saturday 5:30 PM&nbsp;</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Junior Choir</td>
			<td style="text-align: center">Saturday 7:00 PM</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
	</tbody>
</table>

<p style="text-align: center; font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px; margin: 0.6em 0px 1.2em; padding: 0px">&nbsp;</p>

<p style="margin: 0.6em 0px 1.2em; padding: 0px"><b>Culto Dominical</b> <b style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px">| Domingos 17:30</b></p>

<p style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px; margin: 0.6em 0px 1.2em; padding: 0px">&nbsp;</p>

<hr id="null" style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px; height: 1px; background-color: #5294c1; border-style: none; padding: 0px; margin: 0px" />
<p><br />
<b style="font-family: Arial,MingLiU,Helvetica,san-serif; font-size: 13px">Horario de las Actividades de la Iglesia</b></p>

<table align="center" border="0" height="183" style="text-align: center" width="635">
	<tbody>
		<tr>
			<td style="text-align: center"><b>Actividad</b></td>
			<td style="text-align: center"><b>Horiario</b></td>
			<td style="text-align: center"><b>Localizaci&oacute;n </b></td>
		</tr>
		<tr>
			<td style="text-align: center">Escuela china</td>
			<td style="text-align: center">Domingo 13:30</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">&nbsp;Culto Dominical</td>
			<td style="text-align: center">Domingo 17:30</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Coro grande</td>
			<td style="text-align: center">&nbsp;Domingo 19:15</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Reuni&oacute;n de adolescentes y j&oacute;venes</td>
			<td style="text-align: center">&nbsp;Jueves 18:30</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Testimonios, Reuni&oacute;n de oraci&oacute;n</td>
			<td style="text-align: center">Jueves 21:30</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Estudiantes Reuni&oacute;n</td>
			<td style="text-align: center">Viernes 18:00</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Escuela B&iacute;blica, Reuniones (hnos y hnas)</td>
			<td style="text-align: center">S&aacute;bado 17:30</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
		<tr>
			<td style="text-align: center">Coro peque&ntilde;o</td>
			<td style="text-align: center">S&aacute;bado 19:00</td>
			<td style="text-align: center">&nbsp;</td>
		</tr>
	</tbody>
</table>
'	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'en'
	and page_id = 'schedule';

	
update church_content set body = '<p><b>主日崇拜 | 週日下午5:30PM</b></p>

<p>&nbsp;</p>

<hr id="null" />
<p><br />
<b>聚會日程</b></p>

<p>&nbsp;</p>

<table border="0">
	<tbody>
		<tr>
			<td align="center"><span style="font-size: small"><b><span style="font-size: small"><span style="font-size: medium">&nbsp;内容</span></span></b></span></td>
			<td align="center"><span style="font-size: small"><b><span style="font-size: small"><span style="font-size: medium">&nbsp;時間</span></span></b></span></td>
			<td align="center"><span style="font-size: small"><b><span style="font-size: small"><span style="font-size: medium">地點&nbsp;</span></span></b></span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">中文學校</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">週日下午 1:30PM&nbsp;</span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">主日崇拜</span></span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">週日下午 5:30PM</span>&nbsp;</span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">大詩班</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">週日下午 7:15PM&nbsp;</span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">青少年團契</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">週四下午 6:30 PM&nbsp;</span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">見證, 禱告會</span></span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">週四晚間 9:30PM</span>&nbsp;</span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">&nbsp;留學生團契</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">週五下午 6:00 PM</span></span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium">&nbsp;查經班, 團契</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">週六下午 5:30PM</span></span></span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: medium">&nbsp;</span><span style="font-size: x-small"><span style="font-size: medium">小</span></span><span style="font-size: x-small"><span style="font-size: medium">詩班</span></span></td>
			<td align="center"><span style="font-size: x-small"><span style="font-size: medium"><span style="font-size: medium">週六下午 7:00PM</span></span></span><span style="font-size: medium"> </span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
		<tr>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
			<td align="center"><span style="font-size: medium">&nbsp;</span></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'zh'
	and page_id = 'schedule';	
	
	
update church_content set body = '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧師:</td>
			<td>李月雲 牧師, 34-629-035-717</td>
		</tr>
	</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">地址:</td>
			<td>C/ Las Carolinas 10, 28039 Madrid, Spain</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">電話:</td>
			<td>34-91-459-5775, 34-91-450-7306</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">傳真:</td>
			<td>34-91-459-5844</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:iglesiamadrid@telefonica.net">iglesiamadrid@telefonica.net</a></td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>yueh2004</td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">成立日期: </span>1996年 4月7日</p>

<p><span class="label">簡史: </span><br />
<img align="left" height="255" hspace="5" src="/emsiweb/images/files/madrid/madrid.jpg" width="360" />一九九五年十一月一日李月雲傳道再度奉派抵西，正式展開本會在歐洲的事工。進駐空蕩無物的佈道會後，即動手裝修、添購傢俱和設備，並分別海陸空運 聖經、聖詩、歌本和圖書。一個月後「福音佈道會」對外開放，藉著查經班、神學課、音樂班的學習、個別關懷輔導和探訪，帶領慕道友、造就信徒、培訓同工，使 建立教會的基礎逐漸成熟。一九九六年四月七日本會西班牙第一間教會「馬德里基督教生命堂」成立，開始主日崇拜。&nbsp;</p>
二00一年五月九日購堂，成為西班牙佈道會辦公和宣教中心。新堂地址: C/CAROLINAS,10(在地鐵1線Alvarado站)佔地733㎡

<p>十二月二日在新堂首次崇拜, 當天有成人182人、兒童18人出席, 25人受洗。</p>

<p>二00<span style="font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體;">二</span>年三月十日舉行馬德里生命堂六週年慶暨獻堂感恩崇拜, 共有350多人參加, 33人受洗</p>
</div>
'	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'zh'
	and page_id = 'intro';	
------------ ends madrid	
	
------------ starts southmadrid	
update church_content set body = '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
.contact-content td {font-size: small; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. Jian Wei Ye</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>C / Alguacil 8, 28038 Madrid, Spain</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-91-025-6831</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:iglesia.m.sur@hotmail.com">iglesia.m.sur@hotmail.com</a></td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>iglesia.m.sur</td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>February 28, 2004</p>

<div style="float: left">&nbsp;</div>

<p><img align="left" alt="CEC South Madrid" height="258" hspace="5" src="/emsiweb/images/southmadrid/SMadrid8_18_13.jpg" title="CEC South Madrid" width="344" />Madrid is the capital city of Spain and it is the center for politics, finance and culture. North Madrid is mainly financial and cultural, and people are more affluent than those in South Madrid. Houses in South Madrid are less expensive and many Chinese lived in this area. The CEC in Madrid South is situated in this area. The CEC Spain headquarters is in North Madrid, and it is not convenient to travel to North Madrid. We had plans to establish the South Madrid church for quite some time. Thank God that the CEC in Madrid South was established in 2004. Rev. Yang assigned Ev. Sophia Wang to help pastor the church, but because of the need in Barcelona, she was transferred to Barcelona. The CEC in Madrid South CEC in S Madridstarted constructing the church building in 2006, and the renovation and expansion was finished in 2007. By God&rsquo;s guidance, the work of the ministry was expanded due to the unity of the co-workers and the total commitment of the church members. The church attendance has increased, but we need to continue to work hard and fulfill the commission set by our Lord.</p>

<p>When we started the CEC in Madrid South, we did not have any co-workers to serve, and only a few Christians. The CEC in North Madrid came to help for two years until we have our church building and services at the same time. Then our south Madrid church needed to have our own co-workers. Thank the Lord that He raised up a number of co-workers, everyone worked and served together harmoniously. When the church was dedicated in October 2006, we found out that the space was not enough. It can only seat 70 people. We need more space to expand the ministry; it is good that both sides of our building have empty space, but we can not find the landowner. Until one day a Spaniard came to sell chairs, although I hesitated first, but then decided to buy ten chairs to be put on stage. He then told me that his father own the empty house on the right. His father came to see us in December and we were able to rent the place at a reasonable price, and immediately did the renovation. By March of 2007, we were able to finish the expansion.</p>

<p>The CEC in Madrid South is a very young church and the CEC in North Madrid have supported us and we have grown steadily. During the four years, our church members are growing not only in number, but also in spiritual life. Our lives, careers, and families were blessed. The Psalmist David said: &ldquo;Except the LORD build the house, they labour in vain that build it: except the LORD keep the city, the watchman waketh but in vain&rdquo; (Psalm 127:1). Therefore, we will have abundant lives in Him. May the CEC Christians serve our eternal and True God in one heart, and have abundant blessings!</p>
</div>
'	where church_id = (select church_id from church where church_path = 'southmadrid')
	and locale = 'en'
	and page_id = 'intro';		
	
	
update church_content set body = '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧師:</td>
			<td>葉建偉 牧師</td>
		</tr>
	</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">地址:</td>
			<td>C / Alguacil 8, 28038 Madrid, Spain (地鐵1線 Nueva Numancia站, Albufera impares(s) 出口右轉)</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">電話:</td>
			<td>34- 91 - 025 &ndash; 6831</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:iglesia.m.sur@hotmail.com">iglesia.m.sur@hotmail.com</a></td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>iglesia.m.sur</td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">成立日期: </span>2004年 2月28日</p>

<p><span class="label">簡史: </span><br />
<img align="left" alt="CEC South Madrid" height="258" hspace="5" src="/emsiweb/images/southmadrid/SMadrid8_18_13.jpg" title="CEC South Madrid" width="344" />馬德里是西班牙的首都、政治、經濟、文化中心，而馬德里的北邊是以經濟文化為主，多屬已發展的城市；相較以工商業為主的南邊則屬正在發展中的區域，所以南邊住房的價格就相對比較低，也是許多華人集中區，而馬德里南區生命堂即坐落於此。馬德里的總會地處北邊，以至於對南區的人來講，自然就有許多不便之處；因此我們早就計劃在馬德里南區建教會。感謝主，二○○四年馬德里南區生命堂成立。當時楊摩西牧師派王艷華傳道來幫助牧養，後因巴塞羅那事工之需又派其前往。馬德里南區生命堂在二○○六年建堂，二○○七年擴建完畢，蒙主的帶領，福音工作如期展開。同工們的同心配搭，盡心盡力擺上，人數一天天增長，但我們知道仍要繼續努力，完成主的托付。<br />
馬德里南區生命堂的開始，我們還沒有自己的 事奉同工，信徒也不多。一開始是北區來支援兩年的時間，直到建堂後，兩邊同時間聚會，南堂必須有自己的事奉人員。感謝主，一批批的同工就產生了，大家同心合意，興旺福音。二○○六年十月獻堂後，由於場地不大，只有一百坪米，七十人就坐滿了。為了更好地發展，我們需要空間，而剛好我們當初買這教堂時，位在中間，左右兩邊還有兩間是空的。當時我們找過房東，但沒找到，而就在獻堂時，有位西班牙人向我們推銷椅子，本來我們不打算買，但我想買十張椅子放在講台上用，結果他送來的時侯告訴我，我們右邊空房子是他父親的，我一聽：「啊！原來如此。」當時我們不急用，直到十二月他父親來找我，我們用很便宜的租金租下來，馬上開始裝修。二○○七年的三月，我們擴建完畢。<br />
馬德里南區生命堂是很年輕的堂會，在北堂(總會)的愛心護養下慢慢地成長。感謝主，回顧馬德里南區生命堂成立四年來，不但人數增長，弟兄姐妹們的靈命也成長許多；而更看到不論是我們的生活、事業和家庭都蒙主賜福。詩人大衛說：「若不是耶和華建造房屋，建造的人就枉然勞力；若不是耶和華看守城池，看守的人就枉然儆醒。」(詩一二七1) 所以，我們的生命與生活都是在主裡得豐富。願馬德里南區生命堂的信徒同心事奉永生的真神，並同蒙主豐厚的賜福！</p>
</div>	
'	where church_id = (select church_id from church where church_path = 'southmadrid')
	and locale = 'zh'
	and page_id = 'intro';		

	
insert into church_content (church_id, locale, page_id, title, body) values (32, 'en', 'schedule', 'CEC in South Madrid - Church Services Schedule',
'<table border="1" cellpadding="5">
<tr>
	<td>Worship Service & Choir</td>
	<td>Sunday 5:30 pm</td>
</tr>
<tr>
	<td>Youth Fellowship</td>
	<td>Thursday 5:30 pm</td>
</tr>
<tr>
	<td>Bible Study & Prayer Meeting</td>
	<td>Friday 5:30 pm</td>
</tr>
<tr>
	<td>Sister Fellowship</td>
	<td>Last Saturday of a month 6 pm</td>
</tr>
<tr>
	<td>Chinese School</td>
	<td>Sunday 6 pm</td>
</tr>
</table>');	


update church_content set body = '<table border="1" cellpadding="5">
<tr>
	<td>中文學校</td>
	<td>禮拜日上午10:00</td>
</tr>
<tr>
	<td>主日崇拜，詩班</td>
	<td>禮拜日下午5:30</td>
</tr>
<tr>
	<td>青少年團契</td>
	<td>禮拜四下午5:30</td>
</tr>
<tr>
	<td>查經禱告會</td>
	<td>禮拜五下午5:30</td>
</tr>
<tr>
	<td>姐妹團契</td>
	<td>每月最後一個禮拜六下午6:00</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'southmadrid')
	and locale = 'zh'
	and page_id = 'schedule';	
------------ends southmadrid	
	
------------starts barcelona	
update church_content set body = '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧者:</td>
			<td>蔣國經 傳道, (手機)0034-687-58-7688</td>
		</tr>
		<tr>
			<td class="label">  </td>
			<td>陳敏 傳道, (手機)0034-651-52-1292</td>
		</tr>
	</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">地址:</td>
			<td>Calle D&rsquo;Olzinelles 91, 08014 Barcelona, Spain</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">電話:</td>
			<td>0034-930-044-152</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:barcelonaemsi2015@hotmail.com">barcelonaemsi2015@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">成立日期: </span>2005年 2月20日</p>

<p><span class="label">簡史: </span><br />
<img align="left" height="255" hspace="5" src="/emsiweb/images/files/barcelona.jpg" width="360" />2005年初北美總會監督楊摩西牧師差派王豔華傳道前往西班牙巴賽隆納開拓教會。同年2月19日、20日，美國短宣隊抵達巴賽隆納舉辦音樂佈道會，楊摩西牧師主講&ldquo;人生的福&rdquo;，並宣佈，2月20日為教會正式成立日期。最初佈道會設在巴賽隆納C/Mallorca,20-22.1&ordm;4&ordf;&nbsp; Barcelona，即每週查經班、禱告會之地，而每週主日崇拜則租用西班牙之教會。由於佈道會房東欠款，銀行準備拍賣其房，合同期滿一年後，佈道會被迫搬出。為此查經班、禱告會曾經過一段流浪時期。在這期間，先後在陳文芳姐妹的洗衣店以及遠東辦公室堅持每週的查經班和禱告會。由於教會人員不斷增長，2006年8月6日開始租用現在聚會的地點: C/Rossell&oacute; 427 Bis, Local 2。( 地鐵：2線、5線Sagrada Familia 站，2線在 Proven&ccedil;a出口，沿Calle de la Marina街向左轉，5線在Sardenya出口，沿 Calle de Sardenya 街向右轉即到 ) 。<br />
目前除了每週主日崇拜聚會外，還有查經班、禱告會、弟兄姐妹團契以及西班牙語免費班等。聚會時間如下：<br />
崇拜時間：每週日下午5:30&mdash;6:45 P.M.<br />
西班牙語免費基礎班:每週三下午4:30&mdash;5:30 P.M.<br />
查經禱告會: 每週三下午5:30&mdash;7:00 P.M.每週日下午7:00&mdash;7:30 P.M.</p>
</div>
'	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'zh'
	and page_id = 'intro';	

	
update church_content set body = '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Guo Jing Jiang, (C)0034-687-58-7688</td>
		</tr>
		<tr>
			<td class="label">          </td>
			<td>Ev. Min Chen, (C)0034-651-52-1292</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>Calle D&rsquo;Olzinelles 91 ,08014 ,Barcelona, Spain</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0034-930-044-152</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:barcelonaemsi2015@hotmail.com">barcelonaemsi2015@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>20 February, 2006</p>

<p><img align="left" alt="Barcelona2012" height="270" hspace="5" src="/emsiweb/images/files/barcelona_0.jpg" title="Barcelona2012" width="360" />In early 2005, Bishop Rev. Moses Yang from the CEMI headquarter in North American sent Evangelist Sophia Wang to Barcelona, Spain, for missionary work. On February 19 and 20 of the same year, a CEM mission team from the States came and presented an Evangelistic concert in Barcelona. Rev. Moses Yang preached on &ldquo;The Blessings of Life&quot;, and announced the establishment of the CEC in Barcelona on February 20. At first, the Mission was located at the Barcelona C / Mallorca ,20-22 .1 &ordm; 4 &ordf; Barcelona, where we held weekly Bible study, prayer meetings, and Sunday worship service in a Spanish church. As the landlord of the Mission went into bankruptcy, the bank auctioned off the building. The Mission <img align="left" alt="Barcelona02_2012" height="270" hspace="5" src="/emsiweb/images/files/barcelona02_0.jpg" title="Barcelona02_2012" width="360" />was forced out when the one year lease expired,. Our weekly Bible Studies and Prayer meetings relocated a few times afterwards. We were at the laundry of Sister CHEN Wen-Fang, and then at the Far East Office. As the church grew, we moved to our current location at C / Rossell&oacute; 427 Bis, Local 2.on 6 August 2006.</p>

<p>Our weekly meetings include the Sunday Worship service, Bible classes and prayer meetings, and free Spanish classes. Our schedule is as follows:</p>

<p>Worship Service: Sunday 5:30&mdash;6:45 P.M.<br />
Free Beginner Spanish: Wednesday 4:30&mdash;5:30 P.M.<br />
Bible Study and Prayer Meeting: Wednesday 5:30&mdash;7:00 P.M. Sunday 7:00&mdash;7:30 P.M.</p>

<p>Direction --<br />
Subway: #2 line, # 5 line getting off at Sagrada Familia station, #2 line: exit at Proven&ccedil;a, make the first left on the Calle de la Marina Street; #5 lines :exit at Sardenya, make the first right on Calle de Sardenya Street.</p>
</div>
'	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'en'
	and page_id = 'intro';	
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Guo Jing Jiang, (C)0034-687-58-7688
</p>
<p>
<b>Evangelist: </b>Ev. Min Chen, (C)0034-651-52-1292
</p>
<p>
<b>Address: </b>Calle D&rsquo;Olzinelles 91 ,08014 ,Barcelona, Spain
</p>
<p>
<b>Tel #: </b>0034-930-044-152
</p>
<p>
<b>Email: </b>barcelonaemsi2015@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;t=m&amp;z=14&amp;ll=41.370954,2.137458&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;t=m&amp;z=14&amp;ll=41.370954,2.137458&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧者: </b>蔣國經 傳道, (手機)0034-687-58-7688
</p>
<p>
<b>牧者: </b>陳敏 傳道, (手機)0034-651-52-1292
</p>
<p>
<b>地址: </b>Calle D&rsquo;Olzinelles 91 ,08014 ,Barcelona, Spain
</p>
<p>
<b>電話: </b>0034-930-044-152
</p>
<p>
<b>電郵: </b>barcelonaemsi2015@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;t=m&amp;z=14&amp;ll=41.370954,2.137458&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Olzinelles,+91,+08014+Barcelona,+Spain&amp;t=m&amp;z=14&amp;ll=41.370954,2.137458&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'zh'
	and page_id = 'contactus';

------------ends barcelona
	
	
	

------------starts sanjose
update church_content set body = STRINGDECODE('<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Rev. Stephen Hosea, 415-309-5661</td>
		</tr>
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. Timotius Tjing, 510-972-0473</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>191 E Gish Road, San Jose, CA 95112-4704 USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>(408)459-1678</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:timotiuschuang@yahoo.com">timotiuschuang@yahoo.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>September 22, 1985
</p>
<p>
<img src="/emsi/images/church_sanjose_2014.JPG" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />C.E.C. in San Jose was officially established on September 22, 1985, under the need and request of fellow Indonesians and the support of E.M.S.I.<br />
When the church was first formed, the attendance was in the teens.  As the church ministry expanded, God continually added to our congregation with new Christians.  As the number of attendants increased, our meeting place had relocated.  In these 24 years, we have been renting churches for our services.  But in November 1990, we moved into our first newly purchased church building.  But in the last ten years, due to the increase in Sunday Worship Service and Sunday school attendance, we didn\u2019t have sufficient space for ministry.  Therefore, in the last few years, we had to use the Government sponsored Senior Citizens place for our Wednesday Prayer Meeting and Friday Youth Group.  We also used another church and their classrooms for our Sunday Service and activities.  Facing these difficulties, we continually prayed that God  may be gracious to us, granting us a bigger church to expand His ministry.  Right now, we are in the process of looking for a more suitable place to purchase and that we have our own church building and expand His ministry.<br />
We have expanded our church ministries to mission, discipleship, evangelism, caring and Laymen\u2019s Institute.  The brothers and sisters actively participate and are very supportive.  Every year we could see that the Lord has given us new believers.  Not only do we have Indonesian Worship Service, but started the English Service too.<br />
Thanks and praises to the Lord!  For the past 24 years, God\u2019s wondrous working is clearly manifested in the church, leading many to salvation, and growing spiritually with steadfastness.  Just as the Bible says, \u201cNow unto him that is able to do exceeding abundantly above all that we ask or think, according to the power that worketh in us, Unto him be glory in the church by Christ Jesus throughout all ages, world without end. Amen.\u201d (Ephesians 3:20-21). 
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'sanjose')
	and locale = 'en'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">主任牧師:</td>
			<td>何兆威 牧師, 415-309-5661</td>
		</tr>
		<tr>
			<td class=\"label\">牧師:</td>
			<td>莊恭進 牧師, 510-972-0473</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 191 E Gish Road, San Jose, CA 95112-4704 USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (408)459-1678 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: timotiuschuang@yahoo.com"> timotiuschuang@yahoo.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1985年 9月 22日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/church_sanjose_2014.JPG" align=\"left\" height=\"255\" width=\"360\" />聖河水基督教生命堂，在印尼同胞的需求和國際神學福音佈道會支持下，於一九八五年九月廿二日正式成立。
</p>
<p>當教會初成立時， 參與崇拜的人數不過十幾人，隨著教會聖工的日漸發展，上帝不斷把得救人數加添給我們。聚會場地也隨著人數的增長而幾經更遷。廿四年當中，我們曾經租用別人的地方，但於一九九○年十一月遷入第一個屬於自己的禮拜堂，然而十年後，禮拜堂再度因為聚會人數增添， 兒童主日學和少年團契人數增加而不敷使用。因此，近幾年來，每週三和週五晚上，我們需租用市政府老人中心舉行禱告會和青年團契，每週日需租用美國安息日會的禮堂和教室聚會。面對這些困難，我們持續不斷地禱告，求主開恩，讓我們可以早日得到更大的禮拜堂發展聖工。如今我們不斷地觀察， 盼望可以看到適合的地方購作自己的禮拜堂，拓展神的聖工。
</p>
<p>本教會的事工發展包括差傳佈道、門徒訓練、關懷培談、及平信徒聖經學校。弟兄姐妹在這幾方面的事工非常積極地參與及支持，每年都看見上帝把得救人數加添在我們的教會裡。目前教會不單用印尼文崇拜，也開始了英文崇拜。
</p>
<p>感謝讚美主！廿四年來，看見祂奇妙的作為顯明在我們當中，使教會裡多人得救，信徒靈性得堅固和造就。正如經文所說：「上帝能照著運行在我們心裡的大力，充充足足的成就一切，超過我們所求所想的，但願他在教會中，並在基督耶穌裡，得著榮耀，直到世世代代、永永遠遠，阿們！」
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'sanjose')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Senior Pastor: </b>Rev. Stephen Hosea, 415-309-5661
</p>
<p>
<b>Pastor: </b>Rev. Timotius Tjing, 510-972-0473
</p>
<p>
<b>Address: </b>191 E Gish Road, San Jose, CA 95112-4704 USA
</p>
<p>
<b>Tel #: </b>(408)459-1678
</p>
<p>
<b>Email: </b>timotiuschuang@yahoo.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=191+E+Gish+Rd,+San+Jose,+CA+95112&amp;ie=UTF8&amp;hq=&amp;hnear=191+E+Gish+Rd,+San+Jose,+California+95112-4704&amp;t=m&amp;z=14&amp;ll=37.36407,-121.905978&amp;z=17&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=191+E+Gish+Rd,+San+Jose,+CA+95112&amp;ie=UTF8&amp;hq=&amp;hnear=191+E+Gish+Rd,+San+Jose,+California+95112-4704&amp;t=m&amp;z=14&amp;ll=37.36407,-121.905978&amp;z=17&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'sanjose')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>主任牧師:</b> 	何兆威 牧師,  415-309-5661
</p>
<p>
<b>牧師:</b> 莊恭進 牧師,  510-972-0473
</p>
<p>
<b>地址: </b>191 E Gish Road, San Jose, CA 95112-4704 USA
</p>
<p>
<b>電話:</b> (408)459-1678
</p>
<p>
<b>電郵: </b>timotiuschuang@yahoo.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=191+E+Gish+Rd,+San+Jose,+CA+95112&amp;ie=UTF8&amp;hq=&amp;hnear=191+E+Gish+Rd,+San+Jose,+California+95112-4704&amp;t=m&amp;z=14&amp;ll=37.36407,-121.905978&amp;z=17&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=191+E+Gish+Rd,+San+Jose,+CA+95112&amp;ie=UTF8&amp;hq=&amp;hnear=191+E+Gish+Rd,+San+Jose,+California+95112-4704&amp;t=m&amp;z=14&amp;ll=37.36407,-121.905978&amp;z=17&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'sanjose')
	and locale = 'zh'
	and page_id = 'contactus';

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(12, 'schedule', 'en', 'IEC in San Jose - Church Services Schedule', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday Services (Indonesian & English)</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">10 am</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Wednesday</td>
			<td style="padding: 0px 10px 0px 10px">7 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Young Adult & Professional Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Friday</td>
			<td style="padding: 0px 10px 0px 10px">7 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">South Bay & East Bay Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Saturday</td>
			<td style="padding: 0px 10px 0px 10px">5 pm</td>
		</tr>
	</tbody>
</table>

<br/>
'));

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(12, 'schedule', 'zh', '聖河水基督教生命堂 - 聚會日程', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日崇拜 (中文, 印尼文)</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">上午 十 時</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">禱告會</td>
			<td style="padding: 0px 10px 0px 10px">星期三</td>
			<td style="padding: 0px 10px 0px 10px">晚上 七 時</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">青年及專業人士團契</td>
			<td style="padding: 0px 10px 0px 10px">星期五</td>
			<td style="padding: 0px 10px 0px 10px">晚 上七 時</td>
		</tr> 
		<tr>
			<td style="padding: 0px 10px 0px 10px">南灣及東灣團契</td>
			<td style="padding: 0px 10px 0px 10px">星期六</td>
			<td style="padding: 0px 10px 0px 10px">下午 五時</td>
		</tr>
	</tbody>
</table>
<br/>
'));



--------------------ends sanjose

---------------------update porto alto - portugal pages

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 351-263-658-466/(cell)351-965-077-777 </td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td> 351-218-868-370</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsilisboa@hotmail.com">emsilisboa@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>January 31, 2010
</p>
<p>
<img src="/emsi/files/portoaltosmall_0.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />
There was a question from a non christian friend as to with all the CEM churches around why was there not one for Porto Alto when Pastor Chen visited Porto Alto on December 30, 2009. There are over thousand Chinese in Porto Alto. On January 2nd, 2010, Pastor Chen and sister Chen Xiao Ping visited Porto Alto again. During that visit, Pastor Chen felt deeply the need to spread gospel in Porto Alto as there is a longing of brothers and sisters for God’s words. A few people told us they would attend church services in Lisbon, if they did not have to work on Sunday and that it would be wonderful to them if we would start a church in Porto Alto.
</p>
<p>
That evening in the prayer meeting of CEC in Lisbon, Pastor Chen shared with everyone the need to spread Gospel in Porto Alto. Many were moved. One sister gave ten thousand dollars for Gospel work in Porto Alto. Another offered Bible, hymn books. Many brothers and sisters also offered to give to start a church there On January 3rd,after a coworkers’ meeting after the church service, it was decided that we will start the CEC in Porto Alto on January 31st.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'portoalto')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 3351-263-658-466/(手機) 351-965-077-777 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 351-218-868-370 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsilisboa@hotmail.com"> emsilisboa@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2010年 1月30日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/portoaltosmall_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />2009年12月30日陳岳平牧師與一位社團的負責人去PORTO ALTO辦事，席間一位未信主的朋友告知PORTO ALTO已有1000左右的華人，這位朋友並建議我們在PORTO ALTO建立教會。神竟然讓一個未信主的人發出馬其頓的呼聲！
</p>
<p>
在回里斯本的路上，陳牧師為PORTO ALTO 新工場禱告，尋求神的旨意。 2010年1月2日 陳牧師和陳小萍姐妹去PORTO ALTO實地考察探訪。在探訪的過程中，深深的感受到當地福音的需要及當地弟兄姐妹的渴慕。
</p>
<p>
2010年2日的晚上在里斯本生命堂禱告會中，陳牧師把PORTO ALTO福音的需要告訴大家。禱告會後有個姐妹奉獻一萬歐元作為PORTO ALTO新福音工場的啟動基金; 另一位姐妹願意奉獻聖經、聖詩; 也有很多弟兄姊妹願為PORTO ALTO作開堂奉獻。
</p>
<p>
2010年1月3日禮拜天崇拜之後同工會議，決定在2010年1月31日禮拜天正式成立播道歐多基督教生命堂。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'portoalto')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal
</p>
<p>
<b>Tel #: </b> 351-263-658-466/(cell)351-965-077-777
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=d&amp;source=s_d&amp;saddr=Rua+Papoila+6A+Porto+Alto,+2135+Samora+Correia,+Portugal&amp;daddr=&amp;hl=en&amp;geocode=&amp;aq=&amp;sll=42.746632,-75.770041&amp;sspn=3.025213,5.811768&amp;mra=ls&amp;ie=UTF8&amp;ll=38.711997,-8.980867&amp;spn=0.006295,0.008068&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=d&amp;source=embed&amp;saddr=Rua+Papoila+6A+Porto+Alto,+2135+Samora+Correia,+Portugal&amp;daddr=&amp;hl=en&amp;geocode=&amp;aq=&amp;sll=42.746632,-75.770041&amp;sspn=3.025213,5.811768&amp;mra=ls&amp;ie=UTF8&amp;ll=38.711997,-8.980867&amp;spn=0.006295,0.008068&amp;t=m" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'portoalto')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal
</p>
<p>
<b>電話:</b> 3351-263-658-466/(手機) 351-965-077-777 
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=d&amp;source=s_d&amp;saddr=Rua+Papoila+6A+Porto+Alto,+2135+Samora+Correia,+Portugal&amp;daddr=&amp;hl=en&amp;geocode=&amp;aq=&amp;sll=42.746632,-75.770041&amp;sspn=3.025213,5.811768&amp;mra=ls&amp;ie=UTF8&amp;ll=38.711997,-8.980867&amp;spn=0.006295,0.008068&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=d&amp;source=embed&amp;saddr=Rua+Papoila+6A+Porto+Alto,+2135+Samora+Correia,+Portugal&amp;daddr=&amp;hl=en&amp;geocode=&amp;aq=&amp;sll=42.746632,-75.770041&amp;sspn=3.025213,5.811768&amp;mra=ls&amp;ie=UTF8&amp;ll=38.711997,-8.980867&amp;spn=0.006295,0.008068&amp;t=m" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'portoalto')
	and locale = 'zh'
	and page_id = 'contactus';

----------------- porto alto

	
---------------------update lisbon  pages

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Rev. Yue Ping Chen, (cell) 351-963-333-777</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Rua Francisco Sanches 17, Loja-D, 1170-141 Lisbon, Portugal</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> (cell) 351-963-333-777</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td> 351-218-868-370</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsilisboa@hotmail.com">emsilisboa@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>October 21, 1999
</p>
<p>
<img src="/emsi/files/6%20-%20001448bsmall_0.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />The Portuguese church, CEC in Lisbon, was founded on October 21, 1999 by Rev. Moses Yang.
</p>
<p>
In July, 1999 Evangelist Yueing Chen was serving in Valencia, Spain. He received acall from his sister Xiao Li Chen. She told him that Lisbon urgently needed the Gospel. After many prayers and discussions with the CEM headquarters in North America, brothers from CEM in the United States and him went to visit the Christians in Lisbon and have an appreciation the need of the gospel there.Evangelist Chen was then transferred to Lisbon in September for starting a church/ministry there with the support of CEC Europe. There were a number of loving Christian families participated in the ministry. A sister in Lord then offered 
her restaurant as a meeting place. On October 3rd, 1999, the first worship service was held. Later on October 21st, Rev. Yang and Rev. Chi went to formally establish the CEC in Lisbon, followed by visitation of Rev. and Mrs. Chan on November 14th to initiate the first co-workers meeting. On December 5th, Sunday Worship was moved to the rented church in Lisbon.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'lisbon')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">會牧:</td>
			<td>陳岳平 牧師</td>
		</tr>
		<tr>
			<td class=\"label\">牧師:</td>
			<td>陳岳平 牧師, (手機) 351-963-333-777</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Rua Francisco Sanches 17, Loja-D, 1170-141 Lisbon, Portugal</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (手機) 351-963-333-777 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 351-218-868-370 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsilisboa@hotmail.com"> emsilisboa@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1999年 10月21日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/6%20-%20001448bsmall_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />一九九九年七月正在西班牙瓦倫西亞生命堂牧會的陳岳平傳道接到他的胞妹陳小麗電話，得悉在里斯本 的福音迫切需要，經禱告和與北美總會磋商後，隨即帶同在由美國去西班牙短宣的弟兄前往葡萄牙里斯本探望信徒。經過多方面去了解真相和考察，確知按真理的原則，實在有必要在該市成立生命堂，以幫助信徒傳揚纯正的真道。回到瓦倫西亞後，陳傳道向總會提出報告，並在九月得總會調派葡萄牙，負責葡萄牙福音佈道會開拓的工作。歐洲福音佈道會亦願意支持陳傳道在該市開展福音事工。剛起步便有幾個愛主的家庭參與一起事奉，他們是阮高華、季建峰、潘光亮、陳小萍及陳玲香等。佈道會得這幾個熱心的家庭同心一起事奉，很快便籌劃開始聚會。陳小萍姐妹願意借出她的餐館「宏發酒家」作崇拜之用；同年十月三日開始了第一次的崇拜，十月廿一日楊摩西牧師和戚厚生牧師來里斯本正式成立生命堂；十一月十四日陳啟猷牧師及師母亦前來探望，並按立第一屆的同工；十二月五日主日崇拜遷到租用的葡萄牙教堂舉行。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'lisbon')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Senior Pastor: </b>Rev. Yue Ping Chen, (cell) 351-963-333-777
</p>
<p>
<b>Address: </b>Rua Francisco Sanches 17, Loja-D, 1170-141 Lisbon, Portugal
</p>
<p>
<b>Tel #: </b>(cell) 351-963-333-777
</p>
<p>
<b>Fax #: </b>351-218-868-370
</p>
<p>
<b>Email: </b>emsilisboa@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rua+Francisco+Sanches+17,+Loja-D,+1170-141+Lisbon,+Portugal&amp;sll=51.026593,3.710005&amp;sspn=0.009609,0.027831&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Francisco+Sanches+17,+Lisboa,+Portugal&amp;ll=38.731155,-9.133608&amp;spn=0.008035,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Rua+Francisco+Sanches+17,+Loja-D,+1170-141+Lisbon,+Portugal&amp;sll=51.026593,3.710005&amp;sspn=0.009609,0.027831&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Francisco+Sanches+17,+Lisboa,+Portugal&amp;ll=38.731155,-9.133608&amp;spn=0.008035,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'lisbon')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 陳岳平 牧師,(手機) 351-963-333-777
</p>
<p>
<b>地址: </b>Rua Francisco Sanches 17, Loja-D, 1170-141 Lisbon, Portugal
</p>
<p>
<b>電話:</b> (手機) 351-963-333-777
</p>
<p>
<b>傳真: </b>351-218-868-370
</p>
<p>
<b>電郵: </b>emsilisboa@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rua+Francisco+Sanches+17,+Loja-D,+1170-141+Lisbon,+Portugal&amp;sll=51.026593,3.710005&amp;sspn=0.009609,0.027831&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Francisco+Sanches+17,+Lisboa,+Portugal&amp;ll=38.731155,-9.133608&amp;spn=0.008035,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Rua+Francisco+Sanches+17,+Loja-D,+1170-141+Lisbon,+Portugal&amp;sll=51.026593,3.710005&amp;sspn=0.009609,0.027831&amp;ie=UTF8&amp;hq=&amp;hnear=R.+Francisco+Sanches+17,+Lisboa,+Portugal&amp;ll=38.731155,-9.133608&amp;spn=0.008035,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'lisbon')
	and locale = 'zh'
	and page_id = 'contactus';


----------------- end Lisbon

	
	
	
	
---------------------update Portugal - porto  pages

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Rua Chã n°117, 4 Andar - Porto, Portugal</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> (cell) 351-965-333-777 </td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td> 351-218-868-370</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsiporto@hotmail.com">emsiporto@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>January 22, 2002
</p>
<p>
<img src="/emsi/files/porto68small_0.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />
CEC in Lisbon co-workers usually reciprocates CEC Holland Churches generosity. During the 2nd year anniversary, CEC Lisbon decided to do a Missionary trip in Porto, following CEC Holland’s footsteps. So during Christmas 2001, Evangelist Chan and co-workers went to Porto to visit Chinese Christians and Chinese non-believers and invited them to attend the first worship service. There was an enthusiastic response, the co-workers decided to continue this worship service.
CEC Headquarters in North America upon hearing this good news immediately sent group of 
missionaries to Porto to spread the Gospel in a revival meeting in January, 2002. The North American Short Missionary Group with Pastor Moses Yang witnessed the establishment of the CEC in Porto on January 22nd, 2002.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Rua Chã n°117, 4 Andar - Porto, Portugal</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>  (手機) 351-965-333-777 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 351-218-868-370 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsiporto@hotmail.com"> emsiporto@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2002年1月22日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/porto68small_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />里斯本生命堂同工們一向願意回饋荷蘭各生命堂對他們的愛心，因此他們成立兩周年之際，決定組隊前往波爾圖宣教，以效法荷蘭的榜樣。
</p>
<p>
二○○一年的聖誕，陳傳道領了一隊同工前往波爾圖，探訪信徒及未信的華人，邀請他們參加第一次的聚會；反應十分熱烈，使同工們不得不計劃接下來的聚會。
</p>
<p>
北美總會欣聞此喜訊，亦立時組隊於二○○二年一月前往該地佈道。一月廿二日在北美短宣隊和楊牧師共證下，波爾圖生命堂便正式成立了。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>Rua Chã n°117, 4 Andar - Porto, Portugal
</p>
<p>
<b>Tel #: </b> (cell) 351-965-333-777
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rua+Ch%C3%A3+117,+4+Andar+-+Porto,+Portugal&amp;ie=UTF8&amp;hq=&amp;hnear=Rua+Ch%C3%A3+117,+Porto,+Portugal&amp;gl=us&amp;t=m&amp;z=14&amp;ll=41.144229,-8.609701&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Rua+Ch%C3%A3+117,+4+Andar+-+Porto,+Portugal&amp;ie=UTF8&amp;hq=&amp;hnear=Rua+Ch%C3%A3+117,+Porto,+Portugal&amp;gl=us&amp;t=m&amp;z=14&amp;ll=41.144229,-8.609701&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>Rua Chã n°117, 4 Andar - Porto, Portugal
</p>
<p>
<b>電話:</b>  (手機) 351-965-333-777 
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rua+Ch%C3%A3+117,+4+Andar+-+Porto,+Portugal&amp;ie=UTF8&amp;hq=&amp;hnear=Rua+Ch%C3%A3+117,+Porto,+Portugal&amp;gl=us&amp;t=m&amp;z=14&amp;ll=41.144229,-8.609701&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Rua+Ch%C3%A3+117,+4+Andar+-+Porto,+Portugal&amp;ie=UTF8&amp;hq=&amp;hnear=Rua+Ch%C3%A3+117,+Porto,+Portugal&amp;gl=us&amp;t=m&amp;z=14&amp;ll=41.144229,-8.609701&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'zh'
	and page_id = 'contactus';


----------------- end Portugal - porto

-----------------starts Portugal - Mindelo

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Chang Yu Zhou</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 351-252-612-642/ (C) 351-962-222-221</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td> 351-218-868-370</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsimindelo@hotmail.com">emsimindelo@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>June 11, 2006
</p>
<p>
CEC in Mindelo was established on June 11, 2006 in the Mindelo Warehouse Wholesale district in Porto. At the time the warehouse wholesale business in Porto had expanded quickly to Mindelo and many Chinese went to Mindelo to start the wholesale business there. There are around 100 stores in the Mindelo warehouse district and the population reached up to a thousand. It is a great gospel field so the CEM in Portugal decided to start the CEC in Mindelo.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'mindelo')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>周長宇 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 351-252-612-642/ (C) 351-962-222-221 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 351-218-868-370 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsimindelo@hotmail.com"> emsimindelo@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2006 年  六月十一日
</p>
<p>
<span class=\"label\">簡史: </span><br />近年來，葡萄牙波爾圖開發明德路倉庫批發區，發展相當迅速，有一部份中國人馬上跟進，邁向明德路倉庫批發區開拓市場。明德路倉庫批發區約有一百多家店面，人口近千人，是一個較大的福音禾場；所以，葡萄牙福音佈道會根據實際的需要，在二○○六年六月十一日在葡萄牙波爾圖明德路倉庫批發區成立了明德路基督教生命堂。
這間生命堂的成立，有很多感人的見證，是主的大能感動弟兄姐妹們一個個願意奉獻！感謝主，哈利路亞！願主大大地使用明德路生命堂！願聚會的人數天天加增！把一切的榮耀歸給我們的主耶穌基督！阿們。

</p>

</div>
')	where church_id = (select church_id from church where church_path = 'mindelo')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Chang Yu Zhou
</p>
<p>
<b>Address: </b>Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal
</p>
<p>
<b>Tel #: </b> 351-252-612-642/ (C) 351-962-222-221
</p>
<p>
<b>Fax #: </b>351-218-868-370
</p>
<p>
<b>Email: </b>emsimindelo@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=41.333965,+-8.720221&amp;aq=&amp;sll=41.334996,-8.723702&amp;sspn=0.008249,0.015664&amp;ie=UTF8&amp;ll=41.334996,-8.723702&amp;spn=0.008249,0.015664&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=41.333965,+-8.720221&amp;aq=&amp;sll=41.334996,-8.723702&amp;sspn=0.008249,0.015664&amp;ie=UTF8&amp;ll=41.334996,-8.723702&amp;spn=0.008249,0.015664&amp;t=m&amp;z=14;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'mindelo')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道 :</b> 周長宇 傳道 
</p>
<p>
<b>地址: </b>Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal
</p>
<p>
<b>電話:</b> 351-252-612-642/ (C) 351-962-222-221
</p>
<p>
<b>傳真: </b>351-218-868-370
</p>
<p>
<b>電郵: </b>emsimindelo@hotmail.com
</p> 
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=41.333965,+-8.720221&amp;aq=&amp;sll=41.334996,-8.723702&amp;sspn=0.008249,0.015664&amp;ie=UTF8&amp;ll=41.334996,-8.723702&amp;spn=0.008249,0.015664&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=41.333965,+-8.720221&amp;aq=&amp;sll=41.334996,-8.723702&amp;sspn=0.008249,0.015664&amp;ie=UTF8&amp;ll=41.334996,-8.723702&amp;spn=0.008249,0.015664&amp;t=m&amp;z=14;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'mindelo')
	and locale = 'zh'
	and page_id = 'contactus';


-----------------ends Portugal - Mindelo

-----------------starts Hungary - budapest

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Angela Chen, 0036-70-510-3123</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 1107 Budapest, Monori u.2-4. E12-12 Hungary</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 0036-1-426-5368, 0036-30-408-6398</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsibudapest@gmail.com">emsibudapest@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>April 2011
</p>
<p>
<img src="/emsi/files/biblestudydec2011.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />On October 18, 2010, Christian Evangelical Mission International sent Ev. Angela Chen to Budapest, Hungary as a missionary. After four months of labor, CEMC in Budapest is established. This is the 47th CEM church established by the Evangelical Mission and Seminary International under the leadership of Rev. Moses Yang. It is also the 28th CEM church established by the CEMI in Europe.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>陳寶珩 傳道, 0036-70-510-3123</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 1107 Budapest, Monori u.2-4. E12-12 Hungary</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0036-1-426-5368, 0036-30-408-6398 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsibudapest@gmail.com"> emsibudapest@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2011年  4月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/biblestudydec2011.jpg\" align=\"left\" height=\"255\" width=\"360\" />2010年10月18日陳寶珩傳道受美國國際神學福音佈道會差派，來到匈牙利布達佩斯開始新工場的開拓。經過四個多月耕耘撒種的前期工作，總會決定正式成立布達佩斯基督教生命堂。這是由楊摩西牧師領導下的美國國際神學福音佈道會屬下的第47間生命堂，也是歐洲分會的第28間生命堂。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Angela Chen, 0036-70-510-3123
</p>
<p>
<b>Address: </b>1107 Budapest, Monori u.2-4. E12-12 Hungary
</p>
<p>
<b>Tel #: </b>0036-1-426-5368, 0036-30-408-6398
</p>
<p>
<b>Email: </b>emsibudapest@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=1107+Budapest,+Monori+u.2-4.+E12-12+Hungary&ie=UTF8&ll=47.48143,19.122584&spn=0.002603,0.004517&sll=47.481868,19.121943&layer=c&cbp=13,283.36,,0,0.84&cbll=47.481884,19.122107&hnear=1101+Budapest,+X.+ker%C3%BClet,+Monori+utca+2,+Hungary&t=m&z=17&iwloc=A&panoid=wQoKPJRBDskPLR3vnEjMJw&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=https://maps.google.com/maps?q=1107+Budapest,+Monori+u.2-4.+E12-12+Hungary&ie=UTF8&ll=47.48143,19.122584&spn=0.002603,0.004517&sll=47.481868,19.121943&layer=c&cbp=13,283.36,,0,0.84&cbll=47.481884,19.122107&hnear=1101+Budapest,+X.+ker%C3%BClet,+Monori+utca+2,+Hungary&t=m&z=17&iwloc=A&panoid=wQoKPJRBDskPLR3vnEjMJw&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b>陳寶珩 傳道, 0036-70-510-3123
</p>
<p>
<b>地址: </b>1107 Budapest, Monori u.2-4. E12-12 Hungary
</p>
<p>
<b>電話:</b> 0036-1-426-5368, 0036-30-408-6398
</p>
<p>
<b>電郵: </b>emsibudapest@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=1107+Budapest,+Monori+u.2-4.+E12-12+Hungary&ie=UTF8&ll=47.48143,19.122584&spn=0.002603,0.004517&sll=47.481868,19.121943&layer=c&cbp=13,283.36,,0,0.84&cbll=47.481884,19.122107&hnear=1101+Budapest,+X.+ker%C3%BClet,+Monori+utca+2,+Hungary&t=m&z=17&iwloc=A&panoid=wQoKPJRBDskPLR3vnEjMJw&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=https://maps.google.com/maps?q=1107+Budapest,+Monori+u.2-4.+E12-12+Hungary&ie=UTF8&ll=47.48143,19.122584&spn=0.002603,0.004517&sll=47.481868,19.121943&layer=c&cbp=13,283.36,,0,0.84&cbll=47.481884,19.122107&hnear=1101+Budapest,+X.+ker%C3%BClet,+Monori+utca+2,+Hungary&t=m&z=17&iwloc=A&panoid=wQoKPJRBDskPLR3vnEjMJw&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'zh'
	and page_id = 'contactus';


-----------------ends Hungary - budapest

-----------------starts kobe
	
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Zhang Qiong</td>
		</tr>
		<tr>
			<td class="label">Intern Seminarian:</td>
			<td>Yang, Xi 0081-090-6914-1321</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F, Japan</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 81-78-381-9837, (C) 81-80-3868-5377</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi_kobe@hotmail.co.jp">emsi_kobe@hotmail.co.jp</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>February 17, 2008
</p>
<p>
When Pastor Moses Yang came to Japan on September 2007 to teach theological courses, he challenged us to start a church for spreading the Gospel in Kobe, Japan. He assigned Ev. Yahui Xie to serve in this church. Through prayers, our Lord prepared for us an assembly place in downtown Kobe. A couple who loved the Lord offered to pay for the monthly rent of that place. It was beyond what we asked for. May God bless them abundantly. After a few months of preparation, CEC in Kobe was established on 17 February, 2008.
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>張瓊 傳道</td>
		</tr>
		<tr>
			<td class=\"label\">實習神學生:</td>
			<td>楊熙 0081-090-6914-1321</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 日本神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>  81-78-381-9837, 手机: 81-80-3868-5377 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsi_kobe@hotmail.co.jp"> emsi_kobe@hotmail.co.jp</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2008年 2月17日
</p>
<p>
<span class=\"label\">簡史: </span><br />
2007年9月楊摩西牧師到日本教授神學課時向我們提出一個挑戰,就是在日本神戶設立教會, 以便福音廣傳. 楊牧師離開之前決定派謝雅惠傳道在神戶教會服事.
</p>
<p>藉著禱告,主在神戶為我們預備了合適的地方, 在神戶繁華的地帶預備了聚會的場所, 同時神也感動一對愛主並對福音事工有負擔的夫婦為我們教會奉獻每月的房租,這真是超乎我們所求所想,相信主會紀念弟兄姐妹的擺上,並賜福給他們.讓他們在今後的服事上更加蒙恩,蒙福,榮神益人!
</p>
<p>經過幾個月的準備, 神戶基督教生命堂終於在2008年2月17日正式成立.
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'zh'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Zhang Qiong
</p>
<p>
<b>Intern Seminarian: </b>Yang, Xi 0081-090-6914-1321
</p>
<p>
<b>Address: </b>神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F, Japan
</p>
<p>
<b>Tel #: </b>81-78-381-9837, (C) 81-80-3868-5377
</p>
<p>
<b>Email: </b>emsi_kobe@hotmail.co.jp
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 張瓊 傳道
</p>
<p>
<b>實習神學生:</b> 楊熙 0081-090-6914-1321
</p>
<p>
<b>地址: </b>日本神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F
</p>
<p>
<b>電話:</b> 81-78-381-9837, (C) 81-80-3868-5377
</p>
<p>
<b>電郵: </b>emsi_kobe@hotmail.co.jp
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'zh'
	and page_id = 'contactus';
	
-----------------ends kobe
	
-----------------starts Japan - osaka

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Chao, Yong Ning, 0081-080-3118-8434</td>
		</tr>
		<tr>
			<td class="label">Intern Bible Studen:</td>
			<td>Yang Xi, 0081-090-6914-1321</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Osaka-shi Abeno-ku Tennoji-machi Kita [North] 1 chome 2-2, Japan</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 0081-6-6714-5337</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi_osaka@hotmail.co.jp">emsi_osaka@hotmail.co.jp</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>October 18, 2010
</p>
<p>
<img src="/emsi/files/osaka_small[1].jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />Pastor Yang was burdened with Gospel outreach in Osaka in October 2009. We prayed earnestly for a church building. A rental property became our purchase target in in February 2010.
</p>
<p>It was not a smooth process to purchase a church building. The negotiation to purchase the first building failed. God’s will exceeded our expectation. He gave us a church building better than the first one. On September 3, 2010, Bishop Rev. Moses Yang came to Japan to sign the contract to purchase the building. On October 10, 2010 we held our first Worship service in a room on the third floor which required no renovation. It took us three months to renovate the building. On December 5, 2010, Superintendent Rev. Moses Yang presided over the Thanksgiving ceremony for the completion of the Japan Asia EMSI building renovation and the Osaka CEM church. There were sixteen overseas visitors attending the meeting.
</p>
<p>
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'osaka')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>曹永寧 傳道, 0081-080-3118-8434</td>
		</tr>
		<tr>
			<td class=\"label\">實習神學生:</td>
			<td>楊熙, 0081-090-6914-1321</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 日本大阪市阿倍野區天王寺町北 1丁目2-2</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0081-6-6714-5337 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsi_osaka@hotmail.co.jp"> emsi_osaka@hotmail.co.jp</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2011年 3月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/osaka_small[1].jpg\" align=\"left\" height=\"255\" width=\"360\" />2009年10月楊牧師有感動要在大阪發展聖工，成立教會。然而租借聚會地方的道路卻屢屢受阻。經過迫切地禱告，2010年2月一間肯租給我們當教會的地方成為我們購堂的對象。 
購堂過程並不順利，第一間預定購買的禮拜堂買賣終止。神的旨意卻超乎所求所想，將一間更好的禮拜堂賜給我們，2010年 9月3日總監督楊摩西牧師來日本親自簽約; 簽約後開始為期約3個月的準備及裝修， 2010年10月10日我們在三樓不用裝修的房間首次禮拜; 2010年12月5日總監督楊摩西牧師親臨主持日本亞洲宣教大樓落成暨大阪基督教生命堂啟用剪彩與獻堂感恩禮拜。
</p>
<p>購堂過程並不順利，第一間預定購買的禮拜堂買賣終止。神的旨意卻超乎所求所想，將一間更好的禮拜堂賜給我們，2010年 9月3日總監督楊摩西牧師來日本親自簽約; 簽約後開始為期約3個月的準備及裝修， 2010年10月10日我們在三樓不用裝修的房間首次禮拜; 2010年12月5日總監督楊摩西牧師親臨主持日本亞洲宣教大樓落成暨大阪基督教生命堂啟用剪彩與獻堂感恩禮拜。
</p>
<p>當天海外各生命堂來賓計 16人
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'osaka')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Chao, Yong Ning, 0081-080-3118-8434
</p>
<p>
<b>Intern Bible Student: </b>Yang Xi, 0081-090-6914-1321
</p>
<p>
<b>Address: </b>Osaka-shi Abeno-ku Tennoji-machi Kita [North] 1 chome 2-2, Japan
</p>
<p>
<b>Tel #: </b>0081-6-6714-5337
</p>
<p>
<b>Email: </b>emsi_osaka@hotmail.co.jp
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%98%AA%E5%B8%82%E9%98%BF%E5%80%8D%E9%87%8E%E5%8D%80%E5%A4%A9%E7%8E%8B%E5%AF%BA%E7%94%BA%E5%8C%97+1%E4%B8%81%E7%9B%AE2-2&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+%C5%8Csaka-fu,+%C5%8Csaka-shi,+Abeno-ku,+Tenn%C5%8Djich%C5%8Dkita,+%EF%BC%91%E4%B8%81%E7%9B%AE%EF%BC%92%E2%88%92%EF%BC%92&amp;gl=us&amp;t=m&amp;z=14&amp;ll=34.646304,135.522001&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%98%AA%E5%B8%82%E9%98%BF%E5%80%8D%E9%87%8E%E5%8D%80%E5%A4%A9%E7%8E%8B%E5%AF%BA%E7%94%BA%E5%8C%97+1%E4%B8%81%E7%9B%AE2-2&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+%C5%8Csaka-fu,+%C5%8Csaka-shi,+Abeno-ku,+Tenn%C5%8Djich%C5%8Dkita,+%EF%BC%91%E4%B8%81%E7%9B%AE%EF%BC%92%E2%88%92%EF%BC%92&amp;gl=us&amp;t=m&amp;z=14&amp;ll=34.646304,135.522001&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'osaka')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b>曹永寧 傳道, 0081-080-3118-8434
</p>
<p>
<b>實習神學生:</b>楊熙, 0081-090-6914-1321
</p>
<p>
<b>地址: </b>日本大阪市阿倍野區天王寺町北 1丁目2-2
</p>
<p>
<b>電話:</b> 0081-6-6714-5337
</p>
<p>
<b>電郵: </b>emsi_osaka@hotmail.co.jp
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%98%AA%E5%B8%82%E9%98%BF%E5%80%8D%E9%87%8E%E5%8D%80%E5%A4%A9%E7%8E%8B%E5%AF%BA%E7%94%BA%E5%8C%97+1%E4%B8%81%E7%9B%AE2-2&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+%C5%8Csaka-fu,+%C5%8Csaka-shi,+Abeno-ku,+Tenn%C5%8Djich%C5%8Dkita,+%EF%BC%91%E4%B8%81%E7%9B%AE%EF%BC%92%E2%88%92%EF%BC%92&amp;gl=us&amp;t=m&amp;z=14&amp;ll=34.646304,135.522001&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%98%AA%E5%B8%82%E9%98%BF%E5%80%8D%E9%87%8E%E5%8D%80%E5%A4%A9%E7%8E%8B%E5%AF%BA%E7%94%BA%E5%8C%97+1%E4%B8%81%E7%9B%AE2-2&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+%C5%8Csaka-fu,+%C5%8Csaka-shi,+Abeno-ku,+Tenn%C5%8Djich%C5%8Dkita,+%EF%BC%91%E4%B8%81%E7%9B%AE%EF%BC%92%E2%88%92%EF%BC%92&amp;gl=us&amp;t=m&amp;z=14&amp;ll=34.646304,135.522001&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'osaka')
	and locale = 'zh'
	and page_id = 'contactus';

	
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(47, 'schedule', 'en', 'CEC in Osaka - Church Services Schedule', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday Worship</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">11 am</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Sunday School</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">11 am</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Choir Practice</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">9:30 am</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Wednesday</td>
			<td style="padding: 0px 10px 0px 10px">7:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Bible Study</td>
			<td style="padding: 0px 10px 0px 10px">Wednesday</td>
			<td style="padding: 0px 10px 0px 10px">8 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Japanese Bible Reading</td>
			<td style="padding: 0px 10px 0px 10px">Saturday</td>
			<td style="padding: 0px 10px 0px 10px">7:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Zion Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">3rd Sunday of the month</td>
			<td style="padding: 0px 10px 0px 10px">2 pm</td>
		</tr>
	</tbody>
</table>

<br/>
'));

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(47, 'schedule', 'zh', '大阪基督教生命堂 - 聚會日程', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日崇拜</td>
			<td style="padding: 0px 10px 0px 10px">毎週日</td>
			<td style="padding: 0px 10px 0px 10px">上午11点</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">兒童主日學</td>
			<td style="padding: 0px 10px 0px 10px">毎週日</td>
			<td style="padding: 0px 10px 0px 10px">上午11点</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">詩班練習</td>
			<td style="padding: 0px 10px 0px 10px">毎週日</td>
			<td style="padding: 0px 10px 0px 10px">上午9点30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">祷告會</td>
			<td style="padding: 0px 10px 0px 10px">毎週三</td>
			<td style="padding: 0px 10px 0px 10px">晩上7点30分</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">査経班</td>
			<td style="padding: 0px 10px 0px 10px">毎週三</td>
			<td style="padding: 0px 10px 0px 10px">晩上8点</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">日語讀經班　</td>
			<td style="padding: 0px 10px 0px 10px">毎週六</td>
			<td style="padding: 0px 10px 0px 10px">晩上7点30分</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">鍚安圑契</td>
			<td style="padding: 0px 10px 0px 10px">毎月第三主日</td>
			<td style="padding: 0px 10px 0px 10px">下午2点</td>
		</tr>
	</tbody>
</table>

<br/>
'));


-----------------ends Japan - osaka
	
-----------------starts Taiwan - taipei


update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Teddy Chen, +886-978-600-153</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 1st Fl, #29, Alley 25, Lane 113, Sec. 3 Mingsheng E. Rd., Taipei, Taiwan</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>+886-2-2713-3769</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>+886-2-2713-3769</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsitaipei@hotmail.com">emsitaipei@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>Sept 23, 2007
</p>
<p>
<img src="/emsi/images/church_taipei.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />The C.E.C. in Taipei was officially established on September 23, 2007. C.E.M. then commissioned Rev. and Mrs. Chan from Holland to pastor the church on a short-term basis. In August, 2008, Pastor and Mrs. Zion Wu was sent to Taipei to shepherding CEC in Taipei. In February, 2010, Pastor Hosea Chi replace Pastor Wu as the pastor of in CEC in Taipei.
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'taipei')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>陳俊年傳道, +886-9-7860-0153</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 台北市民生東路三段113巷25弄29號1樓</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> +886-2-2713-3769 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> +886-2-2713-3769 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsitaipei@hotmail.com"> emsitaipei@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2007年 9月23日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/church_taipei.jpg\" align=\"left\" height=\"255\" width=\"360\" />2007年，在楊摩西牧師的感動下開始了台灣拓荒宣教事工，同年九月廿三日成立教會，總部特由歐洲調派陳啟猷牧師夫婦前往短期協助牧會。2007年11月遷入台北市松山區敦化環球名廈的大樓裡。2008年4月教會人數倍增，故遷入新址，即台北市松山區民生東路3段113巷25弄29號一樓現址，開展教會事工。2008年9月差派吳錫安牧師夫婦牧會。2010年2月由戚厚生牧師繼續牧養羊群。
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'taipei')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Teddy Chen, +886-978-600-153
</p>
<p>
<b>Address: </b>1st Fl, #29, Alley 25, Lane 113, Sec. 3 Mingsheng E. Rd., Taipei, Taiwan
</p>
<p>
<b>Tel #: </b>+886-2-2713-3769
</p>
<p>
<b>Fax #: </b>+886-2-2713-3769
</p>
<p>
<b>Email: </b>emsitaipei@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E5%8F%B0%E5%8C%97%E5%B8%82%E6%B0%91%E7%94%9F%E6%9D%B1%E8%B7%AF%E4%B8%89%E6%AE%B5113%E5%B7%B725%E5%BC%8429%E8%99%9F1%E6%A8%93&amp;sll=25.059427,121.547108&amp;sspn=0.007211,0.013915&amp;ie=UTF8&amp;hq=&amp;hnear=Alley+25,+Lane+113,+Section+3,+M%C3%ADnSh%C4%93ng+East+Rd,+Songshan+District,+Taipei+City,+Taiwan+105&amp;ll=25.059429,121.547112&amp;spn=0.004665,0.006866&amp;z=17&amp;iwloc=A&amp;output=embed\"></iframe><br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=%E5%8F%B0%E5%8C%97%E5%B8%82%E6%B0%91%E7%94%9F%E6%9D%B1%E8%B7%AF%E4%B8%89%E6%AE%B5113%E5%B7%B725%E5%BC%8429%E8%99%9F1%E6%A8%93&amp;sll=25.059427,121.547108&amp;sspn=0.007211,0.013915&amp;ie=UTF8&amp;hq=&amp;hnear=Alley+25,+Lane+113,+Section+3,+M%C3%ADnSh%C4%93ng+East+Rd,+Songshan+District,+Taipei+City,+Taiwan+105&amp;ll=25.059429,121.547112&amp;spn=0.004665,0.006866&amp;z=17&amp;iwloc=A\" style=\"color:#0000FF;text-align:left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'taipei')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 陳俊年傳道, +886-9-7860-0153
</p>
<p>
<b>地址: </b>台北市民生東路三段113巷25弄29號1樓
</p>
<p>
<b>電話:</b> +886-2-2713-3769
</p>
<p>
<b>傳真:</b> +886-2-2713-3769
</p>
<p>
<b>電郵: </b>emsitaipei@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E5%8F%B0%E5%8C%97%E5%B8%82%E6%B0%91%E7%94%9F%E6%9D%B1%E8%B7%AF%E4%B8%89%E6%AE%B5113%E5%B7%B725%E5%BC%8429%E8%99%9F1%E6%A8%93&amp;sll=25.059427,121.547108&amp;sspn=0.007211,0.013915&amp;ie=UTF8&amp;hq=&amp;hnear=Alley+25,+Lane+113,+Section+3,+M%C3%ADnSh%C4%93ng+East+Rd,+Songshan+District,+Taipei+City,+Taiwan+105&amp;ll=25.059429,121.547112&amp;spn=0.004665,0.006866&amp;z=17&amp;iwloc=A&amp;output=embed\"></iframe><br /><small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=%E5%8F%B0%E5%8C%97%E5%B8%82%E6%B0%91%E7%94%9F%E6%9D%B1%E8%B7%AF%E4%B8%89%E6%AE%B5113%E5%B7%B725%E5%BC%8429%E8%99%9F1%E6%A8%93&amp;sll=25.059427,121.547108&amp;sspn=0.007211,0.013915&amp;ie=UTF8&amp;hq=&amp;hnear=Alley+25,+Lane+113,+Section+3,+M%C3%ADnSh%C4%93ng+East+Rd,+Songshan+District,+Taipei+City,+Taiwan+105&amp;ll=25.059429,121.547112&amp;spn=0.004665,0.006866&amp;z=17&amp;iwloc=A\" style=\"color:#0000FF;text-align:left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'taipei')
	and locale = 'zh'
	and page_id = 'contactus';




-----------------ends Taiwan - taipei

	
-----------------starts Italy - milan
update church_content set body = STRINGDECODE('<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Grace Zheng</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Office Address:</td>
			<td>Via Stresa 3, 20125 Milano, Italy</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Worship Address:</td>
			<td>Via Melchiorre Gioia 193, Milano, Italy</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>(0039) 02–7862-4031 / Cell: (0039) 331-728-1265</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:gracez.777@gmail.com"> gracez.777@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>June 17, 2008
</p>
<p>
\u201cServe the Lord with fear, and rejoice with trembling\u201d (Psalm 2:11)
</p>
<img src="/emsi/files/milan2011.jpg" alt="CEC Milan" title="CEC Milan" height="240" align="left" hspace="5" width="360" />
<p>
Thank God! CEM in Milan started its first worship on August 3rd, 2008. During the 6 months CEC Milanperiod, there were 36 people who accepted Jesus as their Savior, and 20 people were baptized at our church. The past experience of CEM in Milan can best be said in the Bible verse: \u201cThis is the Lord\u2019s doing; it is marvelous in our eyes\u201d (Psalm 118:23).
</p>
<p>
Leading: One day in April 2007, I got an early phone call at 6:00am from Rev. Moses Yang \u2013the president of EMSI. He said, \u201cI am in Italy now. There are lots of Chinese here, lots of northern Chinese here. We would like to assign you to serve in Italy.\u201d I felt peaceful the moment I heard it. I answered him in a simple sentence: \u201cIf it\u2019s God\u2019s will, I will obey it. Please pray for me.\u201d Thank God! After continual praying and with the help of the pastor from Spain, I did not have any problems with the application process. God was doing His wonderful work with me. In mid June 2008, Rev. Moses Yang, Rev. Zion Wu, Rev. Hosea Chi and I met in Milan for 3 days. With the assistance of a local Chinese sister, we searched street by street for a real estate agent and/or suitable house. Just one night prior to the pastors\u2019 departure, the Lord prepared a worship place far better than what we had asked for or imagined. Recalling all these things now, I understand it is the vision that God gave to Rev. Yang concerning the gospel work needed in Milan. There was the calling from Macedonia.
</p>
<p>
Thanksgiving: Thank God! He raised many brothers, sisters and families who truly love God in CEC in Milan. As a result, the gospel work can be increased and expanded. He moved the brothers and sisters to have hearts that seek truth from the Bible and to admire the Lord\u2019s words. He touched many brothers and sisters to be willing to devote themselves to participate in church and partner in spreading the gospel. All pastors, brothers and sisters support us by praying hard and providing financial help so we can fully experience the grace of the Lord.
</p>
<p>
Counting the Lord\u2019s grace, I cannot express my praises and thanksgivings to God in words. \u201cWhat shall I render unto the Lord for all his benefits toward me? I will take the cup of salvation, and call upon the name of the Lord\u201d (Psalm 116:12-13).
</p>
<p>
- Ev. Grace Zheng
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'milan')
	and locale = 'en'
	and page_id = 'intro';

update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>鄭恩惠 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">佈道會地址:</td>
			<td> Via Stresa 3，20125 Milano, Italy</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">主日崇拜:</td>
			<td> Via Melchiorre Gioia 193, Milano, Italy </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (0039)02–7862-4031, 手机：(0039) 331-728-1265 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: gracez.777@gmail.com"> gracez.777@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2008年6月17日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/milan2011.jpg\" align=\"left\" height=\"255\" width=\"360\" />2007年3月25日，國際神學福音佈道會總監楊摩西牧師，看到福音事工的需要，與戚厚生牧師、葉建偉牧師前往意大利考察福音工場。在短短的五天內決定在意大利開展米​​蘭福音事工，並差派在美國總院畢業已回中國服事的鄭恩惠傳道，到米蘭開展拓荒工作。 （米蘭有300多萬人口，華人具體數目不清楚。）
</p>
<p>2008年6月，總監楊摩西牧師與吳錫安牧師、戚厚生牧師、鄭恩惠傳道在米蘭機場會合。僅僅三天的時間，租輛車子到處找聚會場所和住處，就在三位牧師要離開米蘭的前一晚，上帝給米蘭生命堂預備了超過我們所求所想的聚會場地。離米蘭中央火車站步行十幾分鐘，交通十分方便。
</p>
<p>2008年7月18日，楊牧師再一次到米蘭與房東簽好了合同。 7月21日進入聚會場所。 8月3日開始第一個主日禮拜，同年12月14日有20名弟兄姊妹接受洗禮。
</p>
<p>為了更好的開展福音事工，楊牧師決定要有大一些的場地聚會，上帝垂聽了我們的禱告，2011年2月米蘭政府批准，借用天主教堂下面的一個場地聚會，能容納200多人，離佈道會步行5分鐘的路程，上帝預備的總是超過我們所求所想。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'milan')
	and locale = 'zh'
	and page_id = 'intro';


----------ends Italy - milan
	
----------  starts Holland - arnhem

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. LeungMing Wong</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Geograaf 13, 6921 EW Duiven, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>00-31-6 1296-5512</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsiamsterdam@gmail.com">emsiamsterdam@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>February 12, 2012
</p>                                  
<p>
<img src="/emsi/files/cec%20arnhem%20group%20small.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />Arnhem is an important city in the central East of the Netherlands near Germany. Chinese are spread out near Arnhem, just as other places. We needed a centralized location to spread Gospel to the entire area. Near Arnhem and its neighbor city of Duiven, there is a supermarket chain "Amazing Oriental". Amazing Oriental considers it important to spread Gospel among its staff and encourage their staff to attend church services and meetings. They invited evangelists to visit their staff, and do personal evangelism work among them. God has blessed them. Many of the staff members and their families believed in Christ. We made arrangement to bring them to our church for baptismal and worship services. However, there were practical difficulties as they live very far from us. The Christian brothers and sisters of CEC in Amsterdam and brothers and sisters prayed and asked God for guidance to further the Gospel work here and to establish a church so that brothers and sisters at Arnhem and Duivan may worship God more locally. The promise of “all things work together for good to them that love God, to them who are the called according to his purpose” was fulfilled. There was a room accommodating 200 people on an upper floor of the Amazing Oriental at Duiven. Its owner agreed that we may use it for church activities. Thus CEC in Arnhem found a gathering place, where the brothers and sisters may serve, and worship with one accord. The church was established on Feb. 12, 2012, and held its first worship service that day.
</p>

<p>The Chinese name of CEC in Arnhem means: “In Christ the believers have peace, and enjoy eternity.

</p>

</div>
'	where church_id = (select church_id from church where church_path = 'arnhem')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>黃良明 牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Geograaf 13, 6921 EW Duiven, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 00-31-6 1296-5512</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsiamsterdam@gmail.com">emsiamsterdam@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2012年 2月12日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/files/cec%20arnhem%20group%20small.jpg\" alt=\"CEC in Arnhem\" align=\"left\" height=\"255\" width=\"360\" />安恆市 Arnhem 是在荷蘭國中部靠東面的一個重要城市，橋接德國與荷蘭。由於華人在該市鄰近散居，如其他的地區一樣，福音工作需要先有據點再而進發到整面。在 Arnhem安恆市及鄰近Duiven市，均有「東方行超級市場」的設立，而該集團非常重視向她的員工們傳揚基督耶穌的福音；因此，經常鼓勵員工們參加教會崇拜及特別聚會，又邀請傳道去作個人談道、探訪等等，讓他們聽到聖經真理。上帝祝福他們，內中多有員工及其家人親友信主，都安排到我們生命堂接受洗禮並參加崇拜；無奈路途偏遠，實有其艱難之處。荷京生命堂的弟兄姊妹，與這裡的弟兄姊妹有較多的交往，於是同心祈禱，求上帝指示開路，讓荷京生命堂能協助這裡福音工作的發展，使到Arnhem和Duiven的弟兄姊妹能有着自己地方來敬拜三一真神。就在「我們曉得萬事都互相効力，叫愛上帝的人得益處，就是按祂旨意被召的人」這實踐上，在Duiven的東方行超級市場樓上，有一處可容納兩百人聚會的空間，由業主借出給教會使用；「安恆基督教生命堂」就得到聚會地方，讓弟兄姊妹同心地事奉、敬拜，且在2012年2月12日正式成立並舉行第一次崇拜。「安恆」取其意為：信徒在主耶穌裡，得平「安」、享永「恆」。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'arnhem')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. LeungMing Wong
</p>
<p>
<b>Address: </b>Geograaf 13, 6921 EW Duiven, The Netherlands
</p>
<p>
<b>Tel #: </b>00-31-6-1296-5512
</p>
<p>
<b>Email: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Geograaf+13,+6921+EW+Duiven,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Geograaf+13,+6921+EW+Duiven,+Gelderland,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=51.962846,6.005776&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Geograaf+13,+6921+EW+Duiven,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Geograaf+13,+6921+EW+Duiven,+Gelderland,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=51.962846,6.005776&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'arnhem')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 黃良明 牧師
</p>
<p>
<b>地址: </b>Geograaf 13, 6921 EW Duiven, The Netherlands
</p>
<p>
<b>電話:</b> 00-31-6-1296-5512
</p>
<p>
<b>電郵: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Geograaf+13,+6921+EW+Duiven,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Geograaf+13,+6921+EW+Duiven,+Gelderland,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=51.962846,6.005776&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Geograaf+13,+6921+EW+Duiven,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Geograaf+13,+6921+EW+Duiven,+Gelderland,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=51.962846,6.005776&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'arnhem')
	and locale = 'zh'
	and page_id = 'contactus';

----------  ends Holland - arnhem

----------  starts Holland - veenendaal
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Andy Chu</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Worship Address:</td>
			<td>Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Office Address:</td>
			<td>Zandstraat 103, 3905 EB, Veenendaal , The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>+31(0)318-76-9144 / +31(0)627-22-1338</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsiveenendaal@gmail.com">emsiveenendaal@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>October 20, 2012
</p>                                  
<p>
<img src="/emsi/images/VeenendaalChurch.JPG" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />We started Bible study classes twice a month in September, 2009 at Petra Kerk for church members in Veenendaal. They lived or owned business in Veenendaal. They were not able to come to CEC in Utrecht regularly.  
</p>
<p>
There were many Chinese who live or run restaurants in Veenendaal and neighboring towns. Many of these families are with two or three children. It was too far for these children to come to the youth fellowship of CEC in Utrecht even we invited them. So we started youth fellowship in September, 2011 for children in the area.
</p>
<p>
There are street fairs in Veenendaal every Sunday. Chinese from neighboring towns come to buy groceries. We met many Chinese from neighboring towns. It occurred to us if it is Lord’s will, we would start a small church in Veenendaal. We started looking for a meeting place after we had consensus with coworkers.
</p>
<p>
A coworker, Brother Chung, searched through internet and found a house for sale at a decent price. It covers 540 square meters, with usable floor area of 287 square meters. One could sit 80 persons in the sanctuary. In addition, there were an auditorium of 60 square meters, and an apartment of four rooms. It was close to the center of town, and was easily accessible. We believed God had provided this building for us, and decided to purchase it. At the time of economic downturn, we thank our Lord and praise Him that brothers and sisters did not neglect God’s work and were giving willingly, and generously, that we had more than enough. Our Father in heaven has provided more than we asked. It is just like what is said in the Bible:”This is the LORD''s doing; it is marvelous in our eyes”. 
</p>
<p>
The closing of the church building at Veenendaal was held on Oct. 11, 2012. CEM Bishop Pastor Moses Yang with a team of pastors came to the Netherlands. He presided over the church dedication on Oct. 20, 2012. CEC in Veenendaal became the 11th church of CEM in The Netherlands. May heavenly blessings come abundantly to this place.
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'veenendaal')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>朱洪順 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">教會崇拜地址:</td>
			<td> Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">辦公室地址:</td>
			<td> Zandstraat 103, 3905 EB, Veenendaal , The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> +31(0)318-76-9144 / +31(0)627-22-1338 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsiveenendaal@gmail.com">emsiveenendaal@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2012年 10月20日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/VeenendaalChurch.JPG\" alt=\"CEC in Veenendaal\" align=\"left\" height=\"255\" width=\"360\" />烏特勒堂的一些弟兄姊妹在Veenendaal市做生意及有幾個信主家庭住在此城市, 而不能經常返教會参加聚會, 所以開設查經班使會友得着神的話語喂養, 於2009年9月份在Petra Kerk教會開始首次每月2次查經聚會。
</p>
<p>
在Veenendaal市及鄰埠也有不少华人居住及做飲食行業, 而且每個家庭都有2至3個孩子, 賞試邀請他們來參加Utrecht少年團契, 但由於路途遠不能參加, 於2011年9月份開始首次少年團契,能夠接觸更多家庭。
</p>
<p>
每逢週六在Veenendaal有擺街市, 各小埠華人都來到此地方買菜, 讓我們看到其實很多華人住在附近地方, 有見及此感動,主若願意是否可以開設小型教會, 所以經同工同意開始找聚會地方。
</p>
<p>
同工鍾弟兄在一次偶然在網上尋找地方時, 發現一所房屋出讓, 而且價錢便宜, 總面積540m2, 實用面積287m2, 有一禮堂可坐80人, 另有一個60m2副堂及3房1廳住家,近市中心交通方便 , 深信上帝為我們預備 決定計劃買下來 , 更得到各生命堂的弟兄姊妹為福音齊心努力奉獻, 雖然當時經濟不景氣的情況下, 但弟兄姊妹對上帝的聖工沒有冷淡竟能如此樂意奉獻, 實在感謝讚美主，讓我們 不但沒有缺乏, 而且有餘。父神為我們預備是超過我們所想所求, 正如聖經說：『這是耶和華所做的， 在我們眼中看為希奇』, 願將一切感恩榮耀頌讚歸給天上行奇事的父神！
</p>
<p>
Veenendaal會址終於在2012年10月11日正式簽約, 於同年10年20日藉監督楊摩西牧師來荷蘭領會並率領牧師團為Veenendaal生命堂主持成立暨獻堂典禮, 成為荷蘭第11間的教會, 並命名為『福臨道基督教生命堂』, 盼望上帝親自把從天上來的福氣臨到這地方。阿們！
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'veenendaal')
	and locale = 'zh'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Andy Chu
</p>
<p>
<b>Worship Address: </b>Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands
</p>
<p>
<b>Office Address: </b>Zandstraat 103, 3905 EB, Veenendaal , The Netherlands
</p>
<p>
<b>Tel #: </b>+31(0)318-76-9144 / +31(0)627-22-1338
</p>
<p>
<b>Email: </b>emsiveenendaal@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Zandstraat+103,+3905+EB,+Veenendaal+,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Zandstraat+103,+3905+EB+Veenendaal,+Utrecht,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=52.028785,5.551582&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Zandstraat+103,+3905+EB,+Veenendaal+,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Zandstraat+103,+3905+EB+Veenendaal,+Utrecht,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=52.028785,5.551582&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'veenendaal')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 朱洪順 傳道
</p>
<p>
<b>教會崇拜地址: </b>Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands
</p>
<p>
<b>辦公室地址: </b>Zandstraat 103, 3905 EB, Veenendaal , The Netherlands
</p>
<p>
<b>電話:</b> +31(0)318-76-9144 / +31(0)627-22-1338
</p>
<p>
<b>電郵: </b>emsiveenendaal@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Zandstraat+103,+3905+EB,+Veenendaal+,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Zandstraat+103,+3905+EB+Veenendaal,+Utrecht,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=52.028785,5.551582&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Zandstraat+103,+3905+EB,+Veenendaal+,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Zandstraat+103,+3905+EB+Veenendaal,+Utrecht,+The+Netherlands&amp;gl=us&amp;t=m&amp;z=14&amp;ll=52.028785,5.551582&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'veenendaal')
	and locale = 'zh'
	and page_id = 'contactus';

----------  ends Holland - veenendaal

	
----------  starts Holland - Groningen
update church_content set body = STRINGDECODE('<style>
.contact-content {
font-family: Arial,helvetica,sans-serif
}
.contact-content td {
padding-bottom: 2px; padding-left: 2px; padding-right: 2px; font-size: small; padding-top: 2px; 3px: 
}
td.label {
width: 1%; white-space: nowrap; font-weight: bold
}
p span.label {
font-weight: bold
}
.main-content {
font-family: Arial, MingLiU, Helvetica, san-serif; color: #333; font-size: 13px
}
.borderless-table {
border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px
}</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Yiu Cheung (mobile: 06 - 81 556 777)</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Korreweg 37, 9714 AB Groningen, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-(0)50-571-8040 / 0031-(0)681-55-6777</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsigroningen@gmail.com">emsigroningen@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>August 29, 2009
</p>
<p>
<img hspace="5" src="/emsi/images/church_groningen.jpg" align="left" height="255" width="360" />"Unless the Lord builds the house, They labor in vain; Unless the Lord guards the city, The watchman stays awake in vain." Psalm 127:1
</p>
<p>
Praise the Lord, Pastor Moses Yang, Bishop of EMSI has been moved to start a church in the northern Netherlands. He commissioned Pastor Hugo Chan and his wife for pioneering the work. In April, 2009, Pastor Chen and his wife visited Chinese firms in the northern Netherlands area. They met many students, but there was no Chinese Church there. At the end of May, God prepared a 110 square meter meeting place for us at Korreweg 37, Groningen. The transportation is very convenient, It isclose to the "Oriental Supermarket", which 
the Chinese and foreign students in the neighboring towns are very familiar with.
We are also grateful to the Lord that more than thirty brothers and sisters from different CEM churches in the Netherlands joined this pioneering ministry. On June 6, in the first meeting of the ministry, we set the time table for the progress of the work, and staffed each task. In the middle of June we began transporting the tools and items, and started the interior renovation. In mid-July the renovation was completed. By the end of July, we started visiting restaurants, Chinese shops and Chinese families door to door, and distributed tracts in the streets, inviting friends interested to know the Lord, to share, to dine and to attend gospel meetings. In August Student Fellowship from CEMC at Utrecht came to arrange student activities and to distribute leaflets in the weekends on a regular basis. The brothers and sisters of CEMC at The Hague also came to to lead the gospel cafe on Saturday. On August 2nd the first Sunday service was held, followed by a second worship service on August 16, with more than thirty participants each time.
</p>
<p>Twelve made a commitment to accept Christ as Savior in early August. On August 28 a talent show was organized for international students’ orientation by the Lamb Fellowship to reach Chinese oversea students. Pastor Yang presided over the beginning ceremony of the CEMC at Groningen on August 29 and conducted a Baptism and Baby Dedication services. He preached at the Renew Life Series, "Who Holds Tomorrow?" Weekly Sunday Worship and Sunday school began in mid September. 

</p>
</div>
')	where church_id = (select church_id from church where church_path = 'groningen')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>張堯 傳道, 06-81-55-6777</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>Korreweg 37, 9714 AB Groningen, The Netherlands </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>0031-(0)50-571-8040 / 0031-(0)681-55-6777</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href="mailto:emsigroningen@gmail.com">emsigroningen@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2009年 8月29日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/church_groningen.jpg" align="left" height="255" width="360" />「若不是耶和華建造房屋，建造的人就枉然勞力；若不是耶和華看守城池，看守的人就枉然警醒。」詩127:1
<p>

感謝主，總監楊摩西牧師一直有感動在荷蘭北部開拓教會，差派陳啟猷牧師夫婦二人負責拓荒。2009年四月底陳牧師夫婦前往探訪北部一帶華人商號，遇到不少留學生，但沒有華人教會。很奇妙，神竟在五月底為我們預備了一個佔地約110平方公尺的聚會地方，位於高寧根市 (Groningen) Korreweg 37，交通十分便利，因靠近「東方行雜貨超市」，鄰鎮的華人及留學生都十分熟悉。
</p>
<p>
更感謝主，來自不同的荷蘭生命堂會的30多位弟兄姊妹投入這項拓荒事工，經6月6日第一次的事工會議，確定工作的進展，並安排人手分擔工作及訂進度時間表。六月中便開始搬運裝修所需的工具和物品，並負責裝修室內的工作，七月中旬裝修完成。七月底展開逐家餐館、華人店舖並逐戶華人家庭探訪工作，並在街頭分派福音單張，邀請有心認識主的朋友到會所交談用餐，參加福音聚會。八月烏特勒生命堂留學生團契定期週末前來協助派發傳單及安排學生活動。海牙生命堂亦有弟兄姊妹前來帶領週六福音茶座。8月2日開始舉行了首次主日崇拜，跟著8月16日亦進行了第二次的崇拜，每次均有三十多人參加。八月初已有12位作決志禱告，接受主耶穌為救主。828是特別為留學生所舉辦的迎新生有獎才藝會，由小羊牧場團契負責，藉此接觸更多新留學生同學。8月29日下午2時監督楊牧師親臨主持啟堂禮、洗禮及孩童奉獻禮，並晚上分享生命更生講座「誰掌管明天？」。九月中旬將開始每主日崇拜及主日學。
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'groningen')
	and locale = 'zh'
	and page_id = 'intro';

	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Yiu Cheung (mobile: 06 - 81 556 777)
</p>
<p>
<b>Address: </b>Korreweg 37, 9714 AB Groningen, The Netherlands
</p>
<p>
<b>Tel #: </b>0031-(0)50-571-8040 / 0031-(0)681-55-6777
<p>
<b>Email: </b>emsigroningen@gmail.com
</p>
<p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;t=m&amp;z=14&amp;ll=53.227686,6.563361&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;t=m&amp;z=14&amp;ll=53.227686,6.563361&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'groningen')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 張堯 傳道, 06-81-55-6777
</p>
<p>
<b>地址: </b>Korreweg 37, 9714 AB Groningen, The Netherlands
</p>
<p>
<b>電話:</b> 0031-(0)50-571-8040 / 0031-(0)681-55-6777
</p>
<p>
<b>電郵: </b>emsigroningen@gmail.com
</p>
<p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;t=m&amp;z=14&amp;ll=53.227686,6.563361&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Korreweg+37,+9714+AB+Groningen,+Netherlands&amp;t=m&amp;z=14&amp;ll=53.227686,6.563361&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'groningen')
	and locale = 'zh'
	and page_id = 'contactus';

----------  ends Holland - Groningen
	
	
	
	
	
	
	
---------------------starts Holland - Utrecht
update church_content set body = STRINGDECODE('<style>
.contact-content {
font-family: Arial,helvetica,sans-serif
}
.contact-content td {
padding-bottom: 2px; padding-left: 2px; padding-right: 2px; font-size: small; padding-top: 2px; 3px: 
}
td.label {
width: 1%; white-space: nowrap; font-weight: bold
}
p span.label {
font-weight: bold
}
.main-content {
font-family: Arial, MingLiU, Helvetica, san-serif; color: #333; font-size: 13px
}
.borderless-table {
border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px
}</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. Chi Fan Chung</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Andy Chu</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Marokkodreef 3, 3564 EV , Utrecht, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-30-261-6167 / 0031-65-065-2284</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsiutrecht@gmail.com">emsiutrecht@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>October 24, 1981 
</p>
<p>
<img src="/emsi/files/utrechtsmall_0.jpg" alt="CEC in Utrecht" title="CEC in Utrecht" align="left" height="270" hspace="5" width="360" />On a Saturday morning on August 1978, Pastor Hugo Chen drove the gospel bus &quot;Heavenly Journey&quot; to a parking lot near the Utrecht\u2019s train station to start the first youth fellowship in Utrecht for those who recently accepted Lord as Savior in a Gospel camp. We were grateful to the Lord that shortly afterwards, He prepared for us a church fellowship hall at Onder Marieplaats 22 as the meeting place. 
</p>
<p>
God blessed this small group of young people. In three years, they grew spiritually, and their desires to spread the gospel increased. The number of participants in the fellowship also increased. In the summer of 1981, we found a two-stories building at 1e Atjestraat 18 as our church building. On October 24, the church Dedication Ceremony was held. This was the beginning of the third CEM church in Netherlands. 
</p>
<p>
With a church site, we immediately began with Chinese school ministry, and developed various fellowships. The number of believers increased, and the church building space became insufficient. On November 12, 1989, God prepared a Dutch church building at Krommerijn 1, Utrecht for us to rent for worship and Sunday school. Other group activities remained at the old venue. At the end of December 2003 the church needed to find a new place for gathering as the Dutch church had been sold. So we rented College Blaukapel at Winklierlaan 373, Utrecht for worship in 2004 and 2005. 
</p>
<p>
On December 26, 2005 God wonderfully helped us buy our current church premises at Marokkodreef 3, Utrecht to continue the Gospel ministry, so to enable more people to turn to God. 
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'utrecht')
	and locale = 'en'
	and page_id = 'intro';

update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>鍾志勳 牧師</td>
		</tr>
		<tr>
			<td class=\"label\">傳道:</td>
			<td>朱洪順 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Marokkodreef 3, 3564 EV, Utrecht, The Netherlands  </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>0031-30-261-6167 / 0031-65-065-2284</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsiutrecht@gmail.com\">emsiutrecht@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1981年 10月24日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/utrechtsmall.jpg\" align=\"left\" height=\"255\" width=\"360\" />一九七八年八月的一個週六早上，為跟進幾位來自烏特勒地區在剛過的青年福音營信主的年輕人，陳啟猷牧師駕駛福音車「天程」號到該市火車站的一個停車場，開始第一次的青年團契聚會。很感謝主，這次聚會後，父神隨即在附近的Onder Marieplaats 22 ,一間教會的副堂為他們預備了團契聚會的地方。</p>
<p>
主祝福這小群的年輕人，經過三年左右的團契生活，不但靈命大有成長，更擁有一顆熱愛傳福音的心，参加的人數也大有增長。在一九八一年夏天，我們覓得位於1e Atjestraat 18 的一棟兩層樓宇作為教會。同年十月廿四日舉行獻堂禮，也就是荷蘭第三間生命堂的開始了！</p>
<p>
有了會址立刻開始中文學校事工接觸橋胞及發展不同類型團契,信主人數漸增地方已經不夠應用,於1989年11月12日 上帝又為我們預備租用一間荷蘭人教會Krommerijn 1 Utrecht 作崇拜及主日學之用,其如小組活動仍保持在舊會址。直至2003年12月底因西人教會己出賣,本堂急需另尋地方聚會。</p>
<p>
2004年-2005年的12月19日差不多兩年的時間租用一所中學College Blaukapel 在Winklierlaan 373 Utrecht 舉行崇拜及主日學。
<p>
在2005年12月26日 上帝奇妙的成就為我們購得現今的會址 Marokkodreef 3 Utrecht 繼續發展福音事工,使更多人歸向真神。</p></div>
')	where church_id = (select church_id from church where church_path = 'utrecht')
	and locale = 'zh'
	and page_id = 'intro';
-------------- ends Holland - Utrecht	

	
------------ Starts breda --------
	
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Linda Chiu</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Teteringsedijk 89C, 4817 MB Breda, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>31-76-532-3351 / 31-62-454-2277</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsibreda@gmail.com">emsibreda@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>September 1999
</p>
<p>
<img src="/emsi/files/BredaSmallD.jpg" align="left" width="360" height="255" hspace="5"/>
</p><p>On July of 1997, Rev. Moses Yang led several seminary students and co-workers from the North American CEM Headquarters to the Netherlands for a short term mission''s trip. The trip included a three days visitation to families and one night evangelical meeting. The Holy Spirit worked wonders and moved those who were visited and those attended the meeting. They either accepted Christ or were revived. With the encouragement of Rev. Yang,  CEC in Rotterdam offered to send evangelist Tang Kam Fung, and Mr. and Mrs. Kan Yun Tat, to assist Rev. Chan to develop the evangelical work in Breda. The Lord also moved Mr. and Mrs Lim Wuchiang to offer their restaurant as a place for worship. Some of the brothers and sisters from Breda in CEC in Rotterdam also followed to serve. In September, the CEC in Breda began to have Sunday worship and Sunday School.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'breda')
	and locale = 'en'
	and page_id = 'intro';

------------ Ends breda --------

----------  starts Holland - amsterdam
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. LeungMing Wong</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Anton Waldorpstraat 90, 1062 AZ Amsterdam, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-(0)20-6730350 / 0031-(0)61-2965512</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsiamsterdam@gmail.com">emsiamsterdam@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>April 1985
</p>                                  
<p>
<img src="/emsi/files/amsterdam/amsterdam.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />CEC in Amsterdam (The Holland Capital church) was founded in 1990 by CEC in Europe. It is located in the capital of Holland, Amsterdam. Previously, it was a fellowship of young men, which was set up on October 27, 1984 in Amsterdam
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>黃良明 牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Anton Waldorpstraat 90, 1062 AZ Amsterdam, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0031-(0)20-6730350 / 0031-(0)61-2965512 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsiamsterdam@gmail.com">emsiamsterdam@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1985年  4月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/files/amsterdam/amsterdam.jpg\" alt=\"CEC in Amsterdam\" align=\"left\" height=\"255\" width=\"360\" />一九八四年前的幾屆青年福音營都有來自荷京地區的青年人参加，後因不易跟進而多有流失。八四年夏令營後，當時在烏特勒教會牧會的黄良明傳道願意負起開拓荷京青年福音工作，每周六早前往該市帶領青年團契。他們在Stadhouderskade租了一個聾啞中心的地方作聚會之用，又有來自其他三個生命堂的青年弟兄姐妹前來協助，很快聚會的人數有顯著的加增。
</p>
<p>
八五年初，佈道會派譚俊德傳道負責建立教會的工作。同年四月份楊摩西牧師來荷巡迴佈道，並主領荷京生命堂的第一個主日崇拜。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'zh'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. LeungMing Wong
</p>
<p>
<b>Address: </b>Anton Waldorpstraat 90, 1062 AZ Amsterdam, The Netherlands
</p>
<p>
<b>Tel #: </b>0031-(0)20-6730350 / 0031-(0)61-2965512
</p>
<p>
<b>Email: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;t=m&amp;z=14&amp;ll=52.362588,4.834154&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;t=m&amp;z=14&amp;ll=52.362588,4.834154&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 黃良明 牧師
</p>
<p>
<b>地址: </b>Anton Waldorpstraat 90, 1062 AZ Amsterdam, The Netherlands
</p>
<p>
<b>電話:</b> 0031-(0)20-6730350 / 0031-(0)61-2965512
</p>
<p>
<b>電郵: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;t=m&amp;z=14&amp;ll=52.362588,4.834154&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Anton+Waldorpstraat+90,+1062+AZ+Amsterdam,+Netherlands&amp;t=m&amp;z=14&amp;ll=52.362588,4.834154&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'zh'
	and page_id = 'contactus';

----------  ends Holland - amsterdam
	
	
	
	
	
	
----------  starts Holland - bergenopzoom
update church_content set body = STRINGDECODE('<style>
.contact-content {
font-family: Arial,helvetica,sans-serif
}
.contact-content td {
padding-bottom: 2px; padding-left: 2px; padding-right: 2px; font-size: small; padding-top: 2px; 3px: 
}
td.label {
width: 1%; white-space: nowrap; font-weight: bold
}
p span.label {
font-weight: bold
}
.main-content {
font-family: Arial, MingLiU, Helvetica, san-serif; color: #333; font-size: 13px
}
.borderless-table {
border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px
}</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellpadding="0px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. Kwok On Lam (Eric Lam)</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-(0)164 78 58 22 / 0031-(0)629 55 17 72</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:ekolam@hotmail.com">ekolam@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>September 12, 1999
</p>
<p>
<img hspace="5" src="/emsi/images/BergenOpZoom072514.JPG" align="left" height="255" width="360" />The launching of CEC in Bergen Op Zoom and CEC in Breda are very similar. Both were the results of the North American CEM Headquarter''s short term mission trip in July, 1997. The foundation for the church was established after three days of visiting families and three mornings of evangelical meetings. In the beginning, brother Yu Changhan and his wife offered their restaurant as a place for worship. The Lam brothers from Rotterdam also took up the difficult task of establishing the church.
</p>
<p>
After the church was established, brother Lam Kowk On decided to take a one year seminary courses at the North America Headquarters. He returned to the Netherlands, and later was transferred to the Paris campus for continuing studies while assuming the heavy duty of pastoring the church. By the Grace of God, soon after the church was established, they were able to rent a Netherland church in front of brother Yu''s restaurant for Sunday worship, Sunday school and Thursday Bible studies.
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'bergenopzoom')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>林國安 牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands  </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>0031-(0)164 78 58 22 / 0031-(0)629 55 17 72</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href="mailto:ekolam@hotmail.com">ekolam@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1999年 9月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/BergenOpZoom072514.JPG" align="left" height="255" width="360" />百合山生命堂與百利達生命堂成立經過相似，也是北美總會一九九七年七月來荷短宣的成果。經過那次三天逐家探訪和三個早上的佈道會，奠定了教會的開始。剛起步的時間，邱長興弟兄夫婦樂意借出他們的餐館作各聚會之用。
<p>
原在鹿特丹聚會的林氏兄弟們也願意負起開拓的挑戰，當中林國安弟兄在教會成立後決定前往北美總會神學院修讀一年神學課程，後回荷一面再到巴黎分院選讀，一面負責牧養教會的重任。教會成立不久，在神豐富預備，他們租到位於邱弟兄餐館對面的荷蘭教堂用作主日崇拜、主日學和周四查經聚會的地方。
<p>
</div>
')	where church_id = (select church_id from church where church_path = 'bergenopzoom')
	and locale = 'zh'
	and page_id = 'intro';

	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Kwok On Lam (Eric Lam)
</p>
<p>
<b>Address: </b>Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands
</p>
<p>
<b>Tel #: </b>0031-(0)164 78 58 22 / 0031-(0)629 55 17 72
<p>
<b>Email: </b>ekolam@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rozenstraat+2&amp;ie=UTF8&amp;hq=&amp;hnear=Rozenstraat+2,+4613+AJ+Bergen+op+Zoom,+The+Netherlands&amp;z=14&amp;ll=51.502719,4.282703&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Rozenstraat+2&amp;ie=UTF8&amp;hq=&amp;hnear=Rozenstraat+2,+4613+AJ+Bergen+op+Zoom,+The+Netherlands&amp;z=14&amp;ll=51.502719,4.282703&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'bergenopzoom')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 林國安 牧師
</p>
<p>
<b>地址: </b>Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands
</p>
<p>
<b>電話:</b> 0031-(0)164 78 58 22 / 0031-(0)629 55 17 72
</p>
<p>
<b>電郵: </b>ekolam@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Rozenstraat+2&amp;ie=UTF8&amp;hq=&amp;hnear=Rozenstraat+2,+4613+AJ+Bergen+op+Zoom,+The+Netherlands&amp;z=14&amp;ll=51.502719,4.282703&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Rozenstraat+2&amp;ie=UTF8&amp;hq=&amp;hnear=Rozenstraat+2,+4613+AJ+Bergen+op+Zoom,+The+Netherlands&amp;z=14&amp;ll=51.502719,4.282703&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'bergenopzoom')
	and locale = 'zh'
	and page_id = 'contactus';

----------  ends Holland - bergenopzoom

	
	
	
update church_content set body = STRINGDECODE('<style>
.contact-content {
FONT-FAMILY: Arial,helvetica,sans-serif
}
.contact-content TD {
PADDING-BOTTOM: 2px; PADDING-LEFT: 2px; PADDING-RIGHT: 2px; FONT-SIZE: small; PADDING-TOP: 2px; 3px: 
}
TD.label {
WIDTH: 1%; WHITE-SPACE: nowrap; FONT-WEIGHT: bold
}
P SPAN.label {
FONT-WEIGHT: bold
}
.main-content {
FONT-FAMILY: Arial, MingLiU, Helvetica, san-serif; COLOR: #333; FONT-SIZE: 13px
}
.borderless-table {
BORDER-RIGHT-WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px
}</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellPadding="0" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Zuquan Lai</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellPadding="1" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-965-123-563</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi-alicante@hotmail.com">emsi-alicante@hotmail.com</a></td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_skype.gif" height="16" width="16" /></td>
			<td class="label">Skype:</td>
			<td>emsialicante</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" SIZE="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>December 25, 2002 
</p>
<p>
<img hspace="5" src="/emsi/files/alicante2008med.jpg" alt="CEC Alicante" align="left" title="CEC Alicante" height="270" width="360" />The Ministries of Benidorm and Alicante began about the same time in May 1997. With God\u2019s leading, Benodorm was the first established. Because the driving time between Benidorm to Alicante is 40 minutes, Alicante Brothers and Sisters came to Benidorm to worship. 
</p>
<p>
After 5 years, the CEC in Alicante in Christmas of 2002 was established. In 2005 February, an apartment in the center of Alicante behind the bus stations was leased for living and worship. Evangelist Li Suxin was sent from the Paris Seminary School in MAY to the CEC in Alicante to establish the missionary work for the Church for CEC in Alicante. 
</p>
<p>
In 2005 September, Evangelist Li Suxin became ill and went to China for treatment. During this time, Evangelist Pan Saopin began to minister temporarily. Evangelist Lai Zuquan continued to minister the Church till January 2006. Evangelist Li Suxin returned but returned to China in the beginning of July 2006 for treatment. Subsequently, Evangelist Lai Zuquan resume the responsibilities of the Church again. 
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'en'
	and page_id = 'intro';
	
---------begins Gran Canaria

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. Guo Dan Jiang, 34-620-630-901</td>
		</tr>
		<tr>
			<td class="label">Contact:</td>
			<td>方金欢姊妹, 34-928-761-704</td>
		</tr>
	</tbody>

</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>C/.Menceyes 36，35110 Las Palmas, de Gran Canaria, Spain</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-620-630-901 , 34-928-761-704</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>34-91-459-5844</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:guodanj@yahoo.es">guodanj@yahoo.es</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>August 26, 2003
</p>
<p>
<a href="/emsi/gallery/?g2_itemId=1034"><img src="/emsi/files/2011-grancaria17small.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /> </a>We planned our first short missionary trip led by Ev. Yeh, and brother Guo Dan Jiang. to the coastal islands in August, 2000 after some CEC church members’ families/businesses moved there from mainland Spain. We visited Tenerife, Gran Canaria two islands, and organized meetings there.
</p>
<p>In the beginning of 2003, brother Guo Dan Jiang opened a store in Gran Canaria for Gospel work and started visitation. After many prayers and planning, some mission coworkers restarted missionary work in the islands in the summer of 2003. They included several coworkers of CEC in Madrid and two EBI students Zhang, Jian and John Zhang from Paris. On Aug. 26 ,2003 the Christian Evangelical Mission Church in Gran Canaria was established in Las Palmas de Gran Canaria, the capital city of Gran Canaria. A meeting was held at the Imperial Restaurant in the Northern District; and another meeting in the Playa del Inglés in the Southern District the following day.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'en'
	and page_id = 'intro';
	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>蔣國淡 牧師, 34-620-630-901</td>
		</tr>
		<tr>
			<td class=\"label\">聯絡人:</td>
			<td>方金欢姊妹, 34-928-761-704</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> C/.Menceyes 36，35110 Las Palmas, de Gran Canaria, Spain</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 34-620-630-901 , 34-928-761-704 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 34-91-459-5844 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: guodanj@yahoo.es"> guodanj@yahoo.es</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2003年 8月26日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/2011-grancaria17small.jpg\" align=\"left\" height=\"255\" width=\"360\" />因部份會友的事業、家庭從西班牙内陸轉移到海島，二○○○年八月首次籌劃海島短宣，由葉傳道與蔣國淡弟兄至Tenerife、Gran Canaria兩海島探訪、組織聚會。
</p>
<p>二○○三年年初，蔣國淡弟兄因福音負擔，前往Gran canaria開店，恢復該區的探訪聯絡。2003年夏見時機成熟，傳道同工經過禱告、策劃，重開海島宣教工作。馬德里生命堂的幾位同工和本會巴黎神學院兩位神學生張健與張約翰配搭，前往Gran Canaria海島佈道。八月廿六日在Gran canaria首府Las Palmas de Gran canaria成立加納利亞基督教生命堂，於皇城酒家舉行北區聚會，隔日在南區Playa del Inglés舉行南區聚會。
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'zh'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Guo Dan Jiang, 34-620-630-901
</p>
<p>
<b>Contact: </b>方金欢姊妹, 34-928-761-704
</p>
<p>
<b>Address: </b>C/.Menceyes 36，35110 Las Palmas, de Gran Canaria, Spain
</p>
<p>
<b>Tel #: </b>34-620-630-901 , 34-928-761-704
</p>
<p>
<b>Fax #: </b>34-91-459-5844
</p>
<p>
<b>Email: </b>guodanj@yahoo.es
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=C%2F.Menceyes+36%EF%BC%8C35110+Las+Palmas,+de+Gran+Canaria,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Menceyes,+36,+Santa+Luc%C3%ADa+de+Tirajana,+Las+Palmas,+Spain&amp;gl=us&amp;t=m&amp;z=14&amp;ll=27.850315,-15.447372&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=q=C%2F.Menceyes+36%EF%BC%8C35110+Las+Palmas,+de+Gran+Canaria,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Menceyes,+36,+Santa+Luc%C3%ADa+de+Tirajana,+Las+Palmas,+Spain&amp;gl=us&amp;t=m&amp;z=14&amp;ll=27.850315,-15.447372&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>

</p>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'en'
	and page_id = 'contactus';
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 蔣國淡 牧師, 34-620-630-901
</p>
<p>
<b>聯絡人:</b> 方金欢 姊妹, 34-928-761-704
</p>
<p>
<b>地址: </b>C/.Menceyes 36，35110 Las Palmas, de Gran Canaria, Spain
</p>
<p>
<b>電話:</b> 34-620-630-901 , 34-928-761-704
</p>
<p>
<b>傳真:</b> 34-91-459-5844
</p>
<p>
<b>電郵: </b>guodanj@yahoo.es
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=C%2F.Menceyes+36%EF%BC%8C35110+Las+Palmas,+de+Gran+Canaria,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Menceyes,+36,+Santa+Luc%C3%ADa+de+Tirajana,+Las+Palmas,+Spain&amp;gl=us&amp;t=m&amp;z=14&amp;ll=27.850315,-15.447372&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=q=C%2F.Menceyes+36%EF%BC%8C35110+Las+Palmas,+de+Gran+Canaria,+Spain&amp;ie=UTF8&amp;hq=&amp;hnear=Calle+Menceyes,+36,+Santa+Luc%C3%ADa+de+Tirajana,+Las+Palmas,+Spain&amp;gl=us&amp;t=m&amp;z=14&amp;ll=27.850315,-15.447372&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'zh'
	and page_id = 'contactus';
	
	
---------ends Gran Canaria
----------- starts enschede 
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. Louis Chung</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Worship Address:</td>
			<td>Deurningerstraat 212 , 7522 CL Enschede, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Office Address:</td>
			<td>Deurningerstraat 39A, 7514 BD Enschede , The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-53-231-0798 / 0031-(0)65-065-2284</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsienschede@gmail.com">emsienschede@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>September 6, 2009
</p>                                  
<p>
<img hspace="5" src="/emsi/images/Enschele10292014.JPG" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /> </a>Enschede is in the northernmost part of the Nethelands bordering of Germany. The city is home to many Universities. There are many overseas Chinese Students studying here, and also many restaurants nearby. In 2003, the Mission Board sent Sister Pan xx to Enschede for summer training, and upon her graduation in 2004, she was sent to start a Gospel Ministry among college students. Through the support of a college professor, she started a weekly bible study in the dining hall of a dormitory, and many overseas students came to know Christ through this ministry. In the ensuing five years that we have been in Enschede, we have longed to start Sunday Worship Services. In 2009, we started to diligently search for a place, and to pray. The Lord ultimately provided for us unexpectedly good news. A catholic church in the city center was willing to let us hold services there. Within a very short one week span, they agreed to let us use a part of the church for Sunday services and Sunday school at a rental we could afford. On Sept 6, 2009, we held our first Sunday Worship and Baptism Service. We call our church CEC in Enschede 
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>鍾志勳 牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">教會崇拜地址:</td>
			<td> Deurningerstraat 212 , 7522 CL Enschede, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">辦公室地址:</td>
			<td> Deurningerstraat 39A, 7514 BD Enschede , The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0031-53-231-0798 / 0031-(0)65-065-2284 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsienschede@gmail.com">emsienschede@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2009年 9月6日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Enschele10292014.JPG" align=\"left\" height=\"255\" width=\"360\" />恩赫斯基(Enschede)是位於荷蘭最東面靠近德國邊境，這個城市有不同的大學，其中有很多中國留學生在這個城市上學及附近有很多餐館行業,從2003年佈道會派神學生潘少萍姊妹往Enschede暑假實習,2004年潘姊妹完成神學後再被派往當地做留學生福音事工,開始了每週性的留學生查經斑，透過一位大學教授為我們在學生旅館的餐廳進行每週的查經,當中亦有不少留學生信主。在Enschede已經5年時間,我們很想開展主日崇拜，所以在2009年頭積極找地方及禱告,上帝總是為我們預備好意想不到的驚喜。而其中一間位於市中心的天主教堂為我們提供了聚會可能性。在很短的一周內對方答應我們可以承受的價格租下了部分場地作崇拜及主日學使用, 並於2009年9月6曰成立並舉行首次崇拜及洗禮。教會名稱為: 恩慈地基督教生命堂。
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'zh'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Louis Chung
</p>
<p>
<b>Worship Address: </b>Deurningerstraat 212 , 7522 CL Enschede, The Netherlands
</p>
<p>
<b>Office Address: </b>Deurningerstraat 39A, 7514 BD Enschede , The Netherlands
</p>
<p>
<b>Tel #: </b>0031-53-231-0798 / 0031-(0)65-065-2284
</p>
<p>
<b>Email: </b>emsienschede@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;t=m&amp;z=14&amp;ll=52.23197,6.888148&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;t=m&amp;z=14&amp;ll=52.23197,6.888148&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>

</p>
')	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'en'
	and page_id = 'contactus';
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 鍾志勳 牧師
</p>
<p>
<b>教會崇拜地址: </b>Deurningerstraat 212 , 7522 CL Enschede, The Netherlands
</p>
<p>
<b>辦公室地址: </b>Deurningerstraat 39A, 7514 BD Enschede , The Netherlands
</p>
<p>
<b>電話:</b> 0031-53-231-0798 / 0031-(0)65-065-2284
</p>
<p>
<b>電郵: </b>emsienschede@gmail.com
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;t=m&amp;z=14&amp;ll=52.23197,6.888148&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;ie=UTF8&amp;hq=&amp;hnear=Deurningerstraat+212,+7522+CL+Enschede,+The+Netherlands&amp;t=m&amp;z=14&amp;ll=52.23197,6.888148&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'zh'
	and page_id = 'contactus';
	
----------- starts USA - Towaco pages
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Rev. Moses Yang, 973-331-0545 ext. 209, (C) 201-650-1923</td>
		</tr>
		<tr>
			<td class="label">Associate Pastor:</td>
			<td>Rev. Zion Wu, 973-331-0545 ext. 202, (C) 973-768-5805</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Patty Chien, 973-331-0545 ext. 200, (C) 201-993-3043</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Jonathan Poon, 973-331-0545 ext. 203, (C) 973-979-1950</td>
		</tr>
		<tr>
			<td class="label">Youth Minister:</td>
			<td>Ev. Wingkit Chan, 973-331-0545 ext. 250, (C) 973-413-4132</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" width="16" height="16" /></td>
			<td class="label">Address:</td>
			<td><a href="http://maps.google.com/maps?q=36+Alpine+Rd,+Towaco,+NJ+07082&amp;hl=en&amp;ll=40.922398,-74.322445&amp;spn=0.006396,0.013894&amp;sll=40.9022,-74.551001&amp;sspn=0.012796,0.027788&amp;oq=36+Alpine+Road,+Towaco,+NJ+07082&amp;hnear=36+Alpine+Rd,+Towaco,+New+Jersey+07082&amp;t=m&amp;z=17" target="_blank">36 Alpine Road, Towaco, NJ 07082</a></td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" width="16" height="16" /></td>
			<td class="label">Tel#:</td>
			<td>973-331-0545, 973-331-0546</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" width="16" height="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:cemc.towaco@gmail.com">cemc.towaco@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>1980
</p>
<p>
<img src="/emsi/files/towacochurch_1.jpg" align="left" width="360" height="255" hspace="5" />
</p>
<p>
Christian Evangelical Mission Church (CEMC) in Towaco was first established in 1980 by a small group of believers gathering together to pray, worship, and fellowship at Waughaw Road in Towaco. In 1982, CEMC in Towaco along with Evangelical Bible Institute moved to our current location at 36 Alpine Road, Towaco, NJ. This is a 26 acre campus and facility which provides the seminary students and the congregation with many indoor and outdoor activities such as basketball, handball, softball, table tennis, tennis, volleyball and etc\u2026 After 30 years since the birth of CEMC in Towaco, today the congregation has grown to approximately 300 people. The congregation is composed of mostly Chinese from Burma, China, Hong Kong, Indonesia, Malaysia, Philippines, Singapore, Taiwan, American born Chinese, and a small number of Americans. Many live within ten miles of Towaco, including Lincoln Park, Montville, Parsippany, Pine Brook, Pompton Lakes, Wayne and etc\u2026 But some even come as far as Trenton, Pennsylvania, upstate New York, and Connecticut.
</p>
<p>
We have two separate Sunday Worship Services, one in Mandarin with English translation and one in English with no translation.  During the week, we also have many gatherings including various bible studies and fellowship in English, Mandarin and other Chinese dialects. Please see the Ministries &amp; Fellowships section for more detail. 
</p>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
</div>
' 	where church_id = (select church_id from church where church_path = 'towaco')
	and locale = 'en'
	and page_id = 'intro';
	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">主任牧師:</td>
			<td>楊摩西 牧師, 973-331-0545 ext. 209, (手機) 201-650-1923</td>
		</tr>
		<tr>
			<td class=\"label\">牧師:</td>
			<td>吳錫安 牧師, 973-331-0545 ext. 202, (手機) 973-768-5805</td>
		</tr>
		<tr>
			<td class=\"label\">傳道:</td>
			<td>錢舜 傳道, 973-331-0545 ext. 200, (手機) 201-993-3043</td>
		</tr>
		<tr>
			<td class=\"label\">傳道:</td>
			<td>潘逸豪 傳道, 973-331-0545 ext. 203, (手機) 973-979-1950</td>
		</tr>
		<tr>
			<td class=\"label\">青年事工:</td>
			<td>陳永傑  傳道, 973-331-0545 ext. 250, (手機) 973-413-4132</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 36 Alpine Rd., Towaco, NJ 07082, USA </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>(973) 331-0545, (973) 331-0546</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:cemc.towaco@gmail.com\">cemc.towaco@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1980年
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/towacochurch_1.jpg\" align=\"left\" height=\"255\" width=\"360\" />多華谷生命堂的誕生是一個意外。當年國際福音佈道會之下已有三間生命堂。一在紐約市中國城，一在紐約州Nanuet（珍珠河生命堂前身），一在新澤西的西橘園。楊牧師並無意在多華谷設立分堂，他的計畫是創辦神學院。但是向政府申請辦學時才知道，神學院必須附屬在教會之下，於是多華谷生命堂於一九八○年應運而生。
</p>
<p>
建堂之初，會友只有二十人左右，都是西橘園生命堂的會友，為支持神學教育而轉來的。經過二十多年的聖工發展，目前已有近三百名會友，分別來自台灣、越南、香港、新加坡、菲律賓、印尼、馬來西亞、中國大陸等地，也有少數美國人。一九八二年，多華谷生命堂隨著神學院一同遷至亞棚。神學院廣大的校園和各種運動設施，為會友提供了休閒場所。
</p>
<p>
多華谷生命堂的主日崇拜通常是國語證道，英語翻譯。另外同時間有英語崇拜和成人主日學。此外，每周的聚會活動也很多，有禱告會、迦勒團契、弟兄團契、姐妹團契、青年團契，國語、台語、粵語、英語查經班、特別專題講座、大專學生英語查經班……等。迦勒團契就是專門為一些年長的弟兄姐妹所設立。別看他們年紀較長，他們可是非常活躍又令人羨慕的團契喔！每月有兩次聚會。
</p>
<p>
本堂的另一個特色是逢年過節，兩、三百人的聚餐。本堂有一個大廚房，烹煮食物非常方便，所以每遇節慶，必定聚餐同樂。來自不同地方的會友們輪流掌廚，可以吃到不同風味的料理。此外，每主日崇拜之後，也有聚餐。會友們一面吃飯，一面聊天，達到團契的目的；住在遠處的會友，不必餓著肚子上路；願意留下來運動的朋友也因此有足夠的體力。教會願意提供這樣的服務固然值得稱許，而會友們願意輪流掌廚，且多年來從不間斷，更是令人敬佩的服事精神。
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'towaco')
	and locale = 'zh'
	and page_id = 'intro';
	

update church_content set body = STRINGDECODE('<p>
<b>地址: </b>36 Alpine Road, Towaco, NJ 07082, USA 
</p>
<p>
<b>電話:</b>\u00a0 973-331-0545 | 973-331-0546 
</p>
<p>
<b>電郵:\u00a0<span style="color: #0062a0"><u>cemc.towaco@gmail.com</u></span>\u00a0</b> 
</p>
<b>\u00a0 
<table cellpadding="0" cellspacing="0" border="1" style="border-collapse: collapse; border: medium none" class="MsoTableGrid">
	<tbody>
		<tr>
			<td style="padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border: 1pt solid windowtext" valign="top" width="139"><span lang="EN-US"><o:p><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">\u00a0</span></o:p></span></td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">辦公室電話分機</span></span> 
			</p>
			</td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">手機</span></span> 
			</p>
			</td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: 新細明體,''Times New Roman''; color: #000000">電子郵件</span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:,新細明體 ''Times New Roman''; color: #000000">楊摩西 牧師</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 209</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">201-650-1923</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:emsimoses@optonline.net"><span style="font-size: small; font-family: ''Times New Roman''">bishop_mosesyang@yahoo.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">楊陳愛玫 師母</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 208</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-919-6456</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:roseayang@gmail.com"><span style="font-size: small; font-family: ''Times New Roman''">roseayang@gmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">吳錫安 牧師</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 202</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-768-5805</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:zionwu@hotmail.com"><span style="font-size: small; font-family: ''Times New Roman''">zionwu@hotmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: 新細明體,''Times New Roman''; color: #000000">吳周麗華 師母</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 213</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-941-1873</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:wujudy2008@gmail.com"><span style="font-size: small; font-family: ''Times New Roman''">wujudy2008@gmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">錢舜 傳道</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 200</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">201-993-3043</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">pattym33@juno.com</span></span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000">潘逸豪 傳道</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 203</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-979-1950</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">jc1jj2@gmail.com</span></span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family:新細明體, ''Times New Roman''; color: #000000"> 陳永傑 傳道</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 250</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-413-4132</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">Wk_chan@hotmail.com</span></span></span> 
			</p>
			</td>
		</tr>
	</tbody>
</table>
</b>
<hr />
<b>路線:</b> 
<p>
<iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=36+Alpine+Road,+Towaco,+NJ+07082&amp;sll=40.794806,-74.34828&amp;sspn=0.0109,0.019698&amp;ie=UTF8&amp;hq=&amp;hnear=36+Alpine+Rd,+Towaco,+Morris,+New+Jersey+07082&amp;ll=40.930829,-74.318218&amp;spn=0.031126,0.054932&amp;z=14&amp;output=embed" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" height="480" width="640"></iframe><br />
<small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=36+Alpine+Road,+Towaco,+NJ+07082&amp;sll=40.794806,-74.34828&amp;sspn=0.0109,0.019698&amp;ie=UTF8&amp;hq=&amp;hnear=36+Alpine+Rd,+Towaco,+Morris,+New+Jersey+07082&amp;ll=40.930829,-74.318218&amp;spn=0.031126,0.054932&amp;z=14" style="text-align: left; color: #0000ff">View Larger Map</a></small> <b><i>By car</i> </b>
</p>
<ol>
	<li><u>由紐約市出發<br />
	</u>取道 Rt.80(W) 到 53 號出口，依循 Rt. 23(N) 進入 Lincoln Park，再走 Rt. 202(S)  <br />
	向左轉上 Rose Court 直走上坡至底。</li>
	<li><u>由新澤西南部出發<br />
	</u>取道Rt. 287(N) 到47 號出口，接 Rt. 202(N)，在第三個紅綠燈向右轉，下一個紅 綠燈向左轉走 Rt. 202(N)，<br />
	 看到 Delta加油站時，注意在下一條街右轉上 Rose Court 直走上坡到底。 <br />
	</li>
</ol>
')	where church_id = (select church_id from church where church_path = 'towaco')
	and locale = 'zh'
	and page_id = 'contactus';
-- chui, 2 lines above, this is supposed to be: locale = 'zh', no?
--yes, corrected

update church_content set body = STRINGDECODE('<p>
Christian Evangelical Mission Church in Towaco
</p>
<p>
<b>Address: </b>36 Alpine Road, Towaco, NJ 07082, USA 
</p>
<p>
<b>Tel #:</b>\u00a0 973-331-0545 | 973-331-0546 
</p>
<p>
<b>Email:\u00a0<span style="color: #0062a0"><u>cemc.towaco@gmail.com</u></span>\u00a0</b> 
</p>
<b>\u00a0 
<table cellpadding="0" cellspacing="0" border="1" style="border-collapse: collapse; border: medium none" class="MsoTableGrid">
	<tbody>
		<tr>
			<td style="padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border: 1pt solid windowtext" valign="top" width="139"><span lang="EN-US"><o:p><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">\u00a0</span></o:p></span></td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Office Phone Extenstion</span></span> 
			</p>
			</td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Cell Phone</span></span> 
			</p>
			</td>
			<td style="border-color: windowtext windowtext windowtext #ece9d8; border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-top-width: 1pt; border-top-style: solid; border-right-width: 1pt; border-right-style: solid" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">e-mail</span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Pastor Moses Yang</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 209</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">201-650-1923</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:emsimoses@optonline.net"><span style="font-size: small; font-family: ''Times New Roman''">bishop_mosesyang@yahoo.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Mrs. Rose Yang</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 208</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-919-6456</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:roseayang@gmail.com"><span style="font-size: small; font-family: ''Times New Roman''">roseayang@gmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Pastor Zion Wu</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 202</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-768-5805</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:hoseachi@hotmail.com"><span style="font-size: small; font-family: ''Times New Roman''">zionwu@hotmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Mrs. Judy Wu</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 213</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-941-1873</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><a href="mailto:jalin7@hotmail.com"><span style="font-size: small; font-family: ''Times New Roman''">wujudy2008@gmail.com</span></a></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ev. Patty Chien</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 200</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">201-993-3043</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">pattym33@juno.com</span></span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ev. Jonathan Poon</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 203</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-979-1950</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">jc1jj2@gmail.com</span></span></span> 
			</p>
			</td>
		</tr>
		<tr>
			<td style="border-color: #ece9d8 windowtext windowtext; border-bottom-width: 1pt; border-bottom-style: solid; border-left-width: 1pt; border-left-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 104.4pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="139">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ev. Wingkit Chan</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 76.7pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="102">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 250</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 78.8pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="105">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">973-413-4132</span></span> 
			</p>
			</td>
			<td style="border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); border-bottom-width: 1pt; border-bottom-style: solid; padding: 0cm 5.4pt; background-color: transparent; width: 166.2pt; border-right-width: 1pt; border-right-style: solid" valign="top" width="222">
			<p style="text-align: center; margin: 0cm 0cm 0pt" class="MsoNormal" align="center">
			<span class="MsoHyperlink"><span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #027ac6">Wk_chan@hotmail.com</span></span></span> 
			</p>
			</td>
		</tr>
	</tbody>
</table>
</b>
<hr />
<b>Directions:</b> 
<p>
<iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=36+Alpine+Road,+Towaco,+NJ+07082&amp;sll=40.794806,-74.34828&amp;sspn=0.0109,0.019698&amp;ie=UTF8&amp;hq=&amp;hnear=36+Alpine+Rd,+Towaco,+Morris,+New+Jersey+07082&amp;ll=40.930829,-74.318218&amp;spn=0.031126,0.054932&amp;z=14&amp;output=embed" scrolling="no" marginheight="0" marginwidth="0" frameborder="0" height="480" width="640"></iframe><br />
<small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=36+Alpine+Road,+Towaco,+NJ+07082&amp;sll=40.794806,-74.34828&amp;sspn=0.0109,0.019698&amp;ie=UTF8&amp;hq=&amp;hnear=36+Alpine+Rd,+Towaco,+Morris,+New+Jersey+07082&amp;ll=40.930829,-74.318218&amp;spn=0.031126,0.054932&amp;z=14" style="text-align: left; color: #0000ff">View Larger Map</a></small> <b><i>By car</i> </b>
</p>
<ol>
	<li><u>From NY City<br />
	</u>Take Rt. 80(W) till Exit 53, follow Rt. 23(N) to Lincoln Park, proceed on Rt. 202(S).\u00a0 <br />
	Make a left turn onto Rose Court, keep straight on to the end of the road. </li>
	<li><u>From South NJ<br />
	</u>Take Rt. 287(N) till Exit 47. get into Rt. 202(N).<br />
	Make a right turn at the 3rd traffic light, then a left turn at the next traffic light. <br />
	Make a right turn\u00a0past the\u00a0Delta Gas Station onto Rose Court, and proceed on to the end of the road</li>
</ol>
')	where church_id = (select church_id from church where church_path = 'towaco')
	and locale = 'en'
	and page_id = 'contactus';
		
-----------------  end USA - Towaco

	
----------------- starts Italy - prato	
-----   use &#39  for apostrophe

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Zong Quan Zhou</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Piazza San Domenico 10, 59100, Prato (PO), Italy</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0039 057 4831203, (C) 0039 327 7533773</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:wzzzq_cn@163.com">wzzzq_cn@163.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>August 8, 2010
</p>
<p>
<a href="/emsi/gallery/?g2_itemId=119"><img src="/emsi/files/prato_small_0.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /></a>
</p>
<p>
Praise the almighty Lord for leading CEC Prato through it’s first year. On the 7th of August 2011 CEC Prato celebrated her first anniversary. Thank God for guidance and blessing of the past year.
<p>
On the 5th of July of 2010, the EMSI Short Term Mission (STM) team was sent from Holland to Prato. The team was led by Rev. Hugo Chan and Erna shimu and its team members were HongYou Yu and JieLin Feng, a young couple from CEC Groningen, and Yen Chow Chan, an EBI Bible student in Towaco. The goals for STM were to evangelize Chinese people, and to rent a place for Sunday worship services and accommodation for Yen Chow Chan. The STM team prayed for these two locations. If God wants EMSI to start a church in Prato, the team should find the locations within two or three months.
</p>
<p>
Thanks God for leading Rev. Hugo Chan and Erna shimu to a broker who can speak English. The broker had helped to find a accommodation for Yen Chow Chan. Later God led Rev. Chan and Yen Chow to Piazza San Domenico 10. With the help of the broker communication with the owner was possible. It all happened in the first week that the STM team was in Prato; our faith in God was strengthened. The will of God was clear; He wanted a CEC church in Prato. In August 2010, Brother Martin Ding from CEC Utrecht came to assist Yen Chow Chan for one month. On the 8th of August CEC Prato was established, the first Sunday worship service was attended by five persons. At the end of October Yen Chow&#39s wife Shuqi Hu came over from China, the family was reunited and served together in CEC Prato. The number of people being saved increased rapidly. In the second quarter of 2011 the average attending the Sunday worship service had increased to 15 persons. Praise the merciful God for saving more than hundreds of souls through CEC Prato past year.
</p>
<p>
The work in the past first year was not possible if not a team of loyal prayers had moved God&#39s hand. Daily prayers on their knees from EBI Towaco&#39s Bible students and coworkers, CEC Den Haag&#39s youth fellowship and coworkers and those who know the importance of mission. Please keep on praying the harvest in Prato is plenteous.
</p>
<p>
Then saith he unto his disciples, The harvest truly is plenteous, but the labourers are few; pray ye therefore the Lord of the harvest, that he will send forth labourers into his harvest. Matthew 9:37,38
</p>
</div>
' where church_id = (select church_id from church where church_path = 'prato')
	and locale = 'en'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>周宗泉 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Piazza San Domenico 10, 59100, Prato (PO), Italy</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0039-057-483-1203, (C) 0039-327-753-3773 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: wzzzq_cn@163.com"> wzzzq_cn@163.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2010年 8月8日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/prato_small_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />讚美全能的上帝帶領義大利普拉托生命堂走過了兩年。2011年八月7日普拉托生命堂慶祝成立週年，感謝上帝在過去一年的引領及賜福！
</p>
<p>2010年初，陳啟猷牧師夫婦發現義大利普拉托有很多華人。於是，2010年七月5日，國際福音佈道會差派短宣隊由陳啟猷牧師及師母帶領，從荷蘭到義大利普拉托。隊員包括荷蘭高寧根生命堂的于洪友、馮洁琳一對年輕的夫婦及我。
</p>
<p>短宣隊主要的目的是向華人傳福音, 同時尋找主日聚會的場地及傳道人的住處。短宣隊的禱告是，如果上帝要國際神學福音佈道會在普拉托成立生命堂，那麼短宣隊就應該會在兩到三個月內找到這兩個場地。
</p>
<p>感謝上帝帶領，陳牧師夫婦很快地就遇見一位能說英文的房屋仲介，這位仲介很快地就幫我找到了住所，並在Piazza San Domenico找到一間可為教會所用的地方。這些事都是在短宣隊到達普拉托的第一個星期發生。感謝主，事情有了進展，因此我們更有信心向前，也看見上帝的旨意相當清楚了。
</p>
<p>一個星期後，陳牧師夫婦離開普拉托，繼續他們其他的事工。我、于洪友及馮洁琳夫婦三人繼續在普拉托的工作。2010年八月初，上帝差派烏特勒生命堂的丁業新弟兄來協助我們一個月。而普拉托生命堂就在八月的第一個主日，八月八日正式於Piazza San Domenico成立，有五位會友參加第一次主日崇拜。十月底妻子舒祺來普拉托, 我們全家終於一起事奉；教會的人數很快地增長，平均主日的人數約有十人左右(不包括孩童) 。
</p>
<p>2010年成立 一年，普拉托生命堂聚會的人數平均已有十五人了。感謝主，藉著普拉托生命堂已帶領超過一百人接受基督的福音了。
</p>
<p>過去兩年中，許多人忠心地為普拉托宣教事工禱告。不論是國際福音神學院的學生和同工每天早晨的跪地禱告、海牙生命堂青年團契和同工的禱告，以及知道宣教教會重要，而自動地為我們的代禱，都震動了上帝大能的手。謝謝大家的代禱，也請弟兄姐妹們繼續為普拉托生命堂有更豐盛的福音收穫禱告！
</p>
<p>於是對門徒說：要收的莊稼多，做工的人少。所以，你們當求莊稼的主打發工人出去收他的莊稼。 (馬太福音九章37-38)
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'prato')
	and locale = 'zh'
	and page_id = 'intro';

	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Zong Quan Zhou
</p>
<p>
<b>Address: </b>Piazza San Domenico 10, 59100, Prato (PO), Italy
</p>
<p>
<b>Tel #: </b>0039-057-483-1203, (C) 0039-327-753-3773
</p>
<p>
<b>Email: </b>wzzzq_cn@163.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'prato')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 周宗泉 傳道
</p>
<p>
<b>地址: </b>Piazza San Domenico 10, 59100, Prato (PO), Italy
</p>
<p>
<b>電話:</b> 0039-057-483-1203, (C) 0039-327-753-3773
</p>
<p>
<b>電郵: </b>wzzzq_cn@163.com
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'prato')
	and locale = 'zh'
	and page_id = 'contactus';
	
	
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(43, 'schedule', 'en', 'CEMC in Prato - Church Services Schedule', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Office hours</td>
			<td style="padding: 0px 10px 0px 10px">Tuesday - Saturday</td>
			<td style="padding: 0px 10px 0px 10px">2:00 pm – 6:00 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Worship Service</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">4:00 pm – 5:00 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Bible Study & Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">Wednesday </td>
			<td style="padding: 0px 10px 0px 10px">3:30 pm – 4:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Youth Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">The second and fourth Friday of the month</td>
			<td style="padding: 0px 10px 0px 10px">3:30 pm – 4:30 pm</td>
		</tr>
	</tbody>
</table>

<br/>
'));

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(43, 'schedule', 'zh', '普拉托基督教生命堂 - 聚會日程', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">开 放 时 间</td>
			<td style="padding: 0px 10px 0px 10px">星期二至六</td>
			<td style="padding: 0px 10px 0px 10px">下午14:00至18:00</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">崇 拜 时 间</td>
			<td style="padding: 0px 10px 0px 10px">礼拜天</td>
			<td style="padding: 0px 10px 0px 10px">下午16:00至17:00</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">查 经 祷 告</td>
			<td style="padding: 0px 10px 0px 10px">星期三</td>
			<td style="padding: 0px 10px 0px 10px">下午15:30至16:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">少 年 团 契</td>
			<td style="padding: 0px 10px 0px 10px">每月第2和第4个星期五</td>
			<td style="padding: 0px 10px 0px 10px">下午15:30至16:30</td>
		</tr>
	</tbody>
</table>

<br/>
'));


-----------------ends Italy - prato
	
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(39, 'schedule', 'en', 'CEC in Paris - Church Services Schedule', STRINGDECODE('
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Worship Service</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">3:15 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Prayer Meeting</td>
			<td style="padding: 0px 10px 0px 10px">1<sup>st</sup> Sunday of the month</td>
			<td style="padding: 0px 10px 0px 10px">5:45 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Youth Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Sunday</td>
			<td style="padding: 0px 10px 0px 10px">5:45 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Jabez Fellowship*</td>
			<td style="padding: 0px 10px 0px 10px">Tuesday</td>
			<td style="padding: 0px 10px 0px 10px">3:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Joy Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Wednesday</td>
			<td style="padding: 0px 10px 0px 10px">3:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Chinese Bible Study</td>
			<td style="padding: 0px 10px 0px 10px">Friday</td>
			<td style="padding: 0px 10px 0px 10px">7:30 pm</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">Teenage Fellowship</td>
			<td style="padding: 0px 10px 0px 10px">Saturday</td>
			<td style="padding: 0px 10px 0px 10px">2:00 pm</td>
		</tr>
	</tbody>
</table>

<br/>
* Jabez fellowship is held at the restaurant "Fu Yuan Feng" at 22 rue de Trévisse, 7509 Paris.
'));
 

update PUBLIC.CHURCH_CONTENT
set body = '
<table  border="1">
	<tbody>
		<tr>
			<td style="padding: 0px 10px 0px 10px">主日崇拜</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:15</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">禱告會</td>
			<td style="padding: 0px 10px 0px 10px">每月第一個星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 5:45</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">青年團契</td>
			<td style="padding: 0px 10px 0px 10px">星期日</td>
			<td style="padding: 0px 10px 0px 10px">下午 5:45</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">雅比斯 團契 *</td>
			<td style="padding: 0px 10px 0px 10px">星期二</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">喜樂團契</td>
			<td style="padding: 0px 10px 0px 10px">星期三</td>
			<td style="padding: 0px 10px 0px 10px">下午 3:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">中文查經</td>
			<td style="padding: 0px 10px 0px 10px">星期五</td>
			<td style="padding: 0px 10px 0px 10px">晚 7:30</td>
		</tr>
		<tr>
			<td style="padding: 0px 10px 0px 10px">少年團契</td>
			<td style="padding: 0px 10px 0px 10px">星期六</td>
			<td style="padding: 0px 10px 0px 10px">下午 2:00</td>
		</tr>
	</tbody>
</table>

<br/>
* 雅比斯 團契聚會地址: Fu Yuan Feng福源豐餐館, 巴黎九區22 rue de Trévisse, 7509 Paris, 地鐵7 號線Cadet 站. 
'
where church_id = 39
and page_id = 'schedule'
and locale = 'zh';

--------------------------starts USA - livingston
update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. Stephen Lim 973-335-7337, ext. 204, (C) 973-960-6088</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>
			71 Old Road, Livingston, N. J. 07039</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>973-994-0079</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>973-335-0535</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:ceclinfo@gmail.com">ceclinfo@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>1974
</p>
<p>
<a href="/emsi/gallery/?g2_itemId=119"><img src="/emsi/images/church_livingston.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /></a>
</p>
<p>
The CEC in Livingston (former name: CEC in West Orange) is the first CEC in New Jersey. Because of the requests of some Chinese Christian families who lived in New Jersey, the preparation to establish the CEC in West Orange was set in motion in 1973. During that time, Rev. Moses Yang had a car accident and was hurt. From this incident, he thought to himself that this could not be God&#39s will to establish the West Orange Church. So, he knelt and prayed to the Lord for clear direction. The Lord revealed to him a Bible verse from Psalm 66:12: &#39Thou hast caused men to ride over our heads; we went through fire and through water; 
but thou broughtest us out into a wealthy place.&#39 This verse revealed God&#39s will to Rev. Yang. With great faith, the church was established in early 1974.</p>
<p>
Currently the church has a diverse congregational mix. We welcome people from all walks of life.
</p>
<p>
By the grace of God, He has provided us with a property for His work. Our building dedication was held on June 3, 2006 with the presence of the Mayor of the Township of Livingston.
</p>
</div>
' where church_id = (select church_id from church where church_path = 'livingston')
	and locale = 'en'
	and page_id = 'intro';

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">
<table cellPadding="0" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label">牧師:</td>
			<td>林耀奇 牧師, (973) 335-7337 ext. 204, (手機) (973) 960-6088</td>
		</tr>
	</tbody>
</table>
<br />
<div style="margin-left: 20px">
<table cellPadding="1" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">地址:</td>
			<td> 71 Old Road Livingston NJ 07039, USA  </td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">電話:</td>
			<td>(973) 994-0079</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">傳真:</td>
			<td>(973) 335-0535</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:ceclinfo@gmail.com">ceclinfo@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" SIZE="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">成立日期: </span>1974年 
</p>
<p>
<span class="label">簡史: </span><br />
<img hspace="5" src="/emsi/images/church_livingston.jpg" align="left" height="255" width="360" />活石園基督教生命堂 (前名: 西橘園基督教生命堂) 是本會在新澤西州設立的第一個教會。一九七三年底，楊摩西牧師因應新澤西州信徒的要求，籌備成立西橘園生命堂。正當緊鑼密鼓地籌備時，楊牧師發生了一次車禍，頭部受傷。他想，也許上帝對成立西橘園生命堂不喜悅，進行攔阻。於是跪下迫切禱告，盼望主明示旨意。上帝給他的經文是詩篇六十六篇十二節：「你使人坐車，軋我們的頭，我們經過水火，你卻使我們到豐富之地。」這節經文十分清楚地把上帝的旨意告訴楊牧師，於是，他信心十足地繼續籌備工作。一九七四年初，西橘園生命堂誕生了。 
</p>
<p>
活石園生命堂是個多元化的教會。教會會友以華人佔多數，分別來自菲律賓、印尼、香港、馬來西亞、台灣和中國。除此以外，也有美國人。主日崇拜是中、英語並用，此外尚有禱告會、查經班、青少年團契、社青小組及各級主日學、詩班等。 
</p>
<p>
本會於二零零六年四月在李文斯頓鎮Livingston 購堂, 並於當年六月三日舉行獻堂禮。 
</p>
</div>
' where church_id = (select church_id from church where church_path = 'livingston')
	and locale = 'zh'
	and page_id = 'intro';
	

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Worship Service</td>
			<td>Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>Sunday School(Youth & Children)</td>
			<td>Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>Restaurant Bible Study</td>
			<td>Monday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>English Bible Study/Church Prayer Meeting</td>
			<td>Friday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>Youth / Junior Fellowship</td>
			<td>Friday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>Chinese Bible Study</td>
			<td>Every 1st, 3rd Saturday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>Men&#39; Fellowship</td>
			<td>Every 2nd Saturday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>Women&#39; Fellowship</td>
			<td>Every 2nd Saturday</td>
			<td>10:30 am</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'livingston')
	and locale = 'en'
	and page_id = 'schedule';	
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日上午</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>主日學(青少年與兒童)</td>
			<td>星期日上午</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>餐館查經</td>
			<td>星期一上午</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英文查經 /禱告會</td>
			<td>星期五晚上</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>青年 , 少年團契</td>
			<td>星期五晚上</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>中文查經</td>
			<td>每月第一，第三 星期六上午</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>弟兄團契</td>
			<td>每月第二星期六上午</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>姊妹團契</td>
			<td>每月第二星期六上午</td>
			<td>10:30 am</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'livingston')
	and locale = 'zh'
	and page_id = 'schedule';	

	
-------- ends USA - livingston

-----------------starts Belgium - antwerpen

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor:</td>
			<td>Rev. Mix Chan</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> +32(0)3-707 1707 / +32(0)484-148682</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsibelgium@hotmail.com">emsibelgium@hotmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>November 9, 2003
</p>
<p>
<img hspace="5" src="/emsi/images/BelgiumAntwerpen10_31_13.JPG" align="left" height="255" width="360" />The EMSI short term mission to Belgium in the spring of 2000 covered Antwerpen and Brussels. We saw the need for the Gospel in Brussels there and established the CEC in Brussels in May 2004. We have morning service in Antwerpen and afternoon service in Brussels. God raised up godly members who came to serve with us from Antwerpen to Brussels. Their faithfulness really encouraged us greatly
</p>
<p>Pictured: CEC in Antwerpen purchased a new church building.</p>
<p>
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧師:</td>
			<td>陳茂祥 牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> +32(0)3-707 1707 / +32(0)484-148682 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsibelgium@hotmail.com"> emsibelgium@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>2011年 3月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/BelgiumAntwerpen10_31_13.JPG" align="left" height="255" width="360" />感謝主帶領我們在二○○○年的春天，有機會參予國際神學福音佈道會的短宣隊前往法國和比利時短宣；二○○一年自神學院畢業後，我與妻子被差派前往法國巴黎生命堂實習。在法國的兩年裡多次聽聞比利時需要工人，所以我們經常為此事禱告，希望比利時能盡快找到傳道人。然而，經過一段時間，上帝給我們一個感動，因為比利時是荷、法雙語的國家，若懂當地語言相對來說是比較方便；而我們都是在荷蘭長大受教育，又曾在法國居住過兩年，好像這些都是有利的基本條件，最後我們確定是上帝的呼召，便順服祂的旨意。
</p>
<p我們對比利時的環境並不了解，只抱著一顆傳福音的心志，二○○三年的夏天踏進這個陌生的地方。上帝為我們預備了一對愛主的夫婦(程伯君夫婦)與我們一起開始了開荒的工作。雖不容易，但終於在同年的十一月在安特衛普市成立了「安慰城基督教生命堂」。當時是從一些留學生工作開始，也不斷嘗試透過各種的途徑來傳福音，上帝慢慢地帶領不同的家庭、小孩子和青少年人來到我們當中，大家在主的愛裏感到非常溫馨，弟兄姐妹的靈命也在聖經的真理中漸漸成長。當我們踏進第四個年頭時，看見上帝極大的恩典臨到安慰城的弟兄姐妹，因著各國生命堂的支持與關懷，我們能夠有自己的會所，為此向主獻上衷心感謝和讚美；而更叫我們不敢浪費一分一秒的時間，要加倍地努力傳揚福音，回報主恩及大家的愛心。
</p>
<p>圖:二○一二年八月二十八日購新堂簽約
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'zh'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Mix Chan
</p>
<p>
<b>Address: </b>Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium
</p>
<p>
<b>Tel #: </b>+32(0)3-707 1707 / +32(0)484-148682
</p>
<p>
<b>Email: </b>emsibelgium@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Franklin+Rooseveltplaats+12&amp;ie=UTF8&amp;hq=&amp;hnear=Franklin+Rooseveltplaats+12,+Antwerpen+2060+Antwerpen,+Belgium&amp;t=m&amp;z=14&amp;ll=51.219508,4.417894&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Franklin+Rooseveltplaats+12&amp;ie=UTF8&amp;hq=&amp;hnear=Franklin+Rooseveltplaats+12,+Antwerpen+2060+Antwerpen,+Belgium&amp;t=m&amp;z=14&amp;ll=51.219508,4.417894&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師: </b>陳茂祥 牧師
</p>
<p>
<b>地址: </b>Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium
</p>
<p>
<b>電話:</b> +32(0)3-707 1707 / +32(0)484-148682
</p>
<p>
<b>電郵: </b>emsibelgium@hotmail.com
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Franklin+Rooseveltplaats+12&amp;ie=UTF8&amp;hq=&amp;hnear=Franklin+Rooseveltplaats+12,+Antwerpen+2060+Antwerpen,+Belgium&amp;t=m&amp;z=14&amp;ll=51.219508,4.417894&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Franklin+Rooseveltplaats+12&amp;ie=UTF8&amp;hq=&amp;hnear=Franklin+Rooseveltplaats+12,+Antwerpen+2060+Antwerpen,+Belgium&amp;t=m&amp;z=14&amp;ll=51.219508,4.417894&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'zh'
	and page_id = 'contactus';


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Service</td>
			<td>Sunday</td>
			<td>09:30 am - 11:00 am</td>
		</tr>
		<tr>
			<td>Sunday School(Children & Teenagers)</td>
			<td>Sunday</td>
			<td>09:30 am - 11:00 am</td>
		</tr>
		<tr>
			<td>Adult Fellowship / Tuesday’s Worship Service (Cantonese)</td>
			<td>2nd & 4th Tuesday</td>
			<td>11:00 am - 01:00 pm</td>
		</tr>
		<tr>
			<td>Dutch Bible Study</td>
			<td>2nd & 4th Friday</td>
			<td>08:00 pm - 09:30 pm</td>
		</tr>
		<tr>
			<td>Youth Fellowship (Dutch)</td>
			<td>1st & 3rd Saturday</td>
			<td>10:30 am - 01:00 pm</td>
		</tr>
		<tr>
			<td>Teenager Fellowship (Dutch)</td>
			<td>2nd & 4th Saturday</td>
			<td>12:30 pm - 03:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'en'
	and page_id = 'schedule';	
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日上午</td>
			<td>09:30 am - 11:00 am</td>
		</tr>
		<tr>
			<td>主日學(青少年與兒童)</td>
			<td>星期日上午</td>
			<td>09:30 am - 11:00 am</td>
		</tr>
		<tr>
			<td>成人團契 / 週二崇拜 (粵語)</td>
			<td>每月第二、四個 星期二</td>
			<td>11:00 am - 01:00 pm</td>
		</tr>
		<tr>
			<td>查經聚會 (荷語)</td>
			<td>每月第二、四個 星期五</td>
			<td>08:00 pm - 09:30 pm</td>
		</tr>
		<tr>
			<td>青年團契 - 18-30歲未婚男女 (荷語)</td>
			<td>每月第一、三個 星期六</td>
			<td>10:30 am - 01:00 pm</td>
		</tr>
		<tr>
			<td>少年團契 - 就讀中學階段的學生 (荷語)</td>
			<td>每月第二、四個 星期六</td>
			<td>12:30 pm - 3:00 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'antwerpen')
	and locale = 'zh'
	and page_id = 'schedule';	

	
	
----------------  ends  Belgium - antwerpen

	
----------------  Belgium - Brussels

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Service</td>
			<td>Sunday</td>
			<td>03:30 pm - 05:00 pm</td>
		</tr>
		<tr>
			<td>Children’s Sunday School</td>
			<td>Sunday</td>
			<td>03:30 pm - 05:00 pm</td>
		</tr>
		<tr>
			<td>Basic French Class for Adults</td>
			<td>Wednesday</td>
			<td>10:00 am - 11:30 am</td>
		</tr>
		<tr>
			<td>Wednesday’s Worship Service (Cantonese)</td>
			<td>1st Wednesday</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>
		<tr>
			<td>Bible Study (Mandarin)</td>
			<td>2nd & 4th Wednesday</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>
		<tr>
			<td>Youth Bible Study (Mandarin)</td>
			<td>1st & 3rd Thursday</td>
			<td>07:00 pm - 09:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'brussels')
	and locale = 'en'
	and page_id = 'schedule';	
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日</td>
			<td>03:30 pm - 05:00 pm</td>
		</tr>
		<tr>
			<td>兒童主日學</td>
			<td>星期日</td>
			<td>03:30 pm - 05:00 pm</td>
		</tr>
		<tr>
			<td>成人法語初級班</td>
			<td>星期三</td>
			<td>10:00 am - 11:30 am</td>
		</tr>
		<tr>
			<td>週三崇拜 (粵語)</td>
			<td>每月第一個 星期三</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>
		<tr>
			<td>查經聚會 (國語)</td>
			<td>每月第二、四個 星期三</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>
		<tr>
			<td>青年查經聚會 (國語)</td>
			<td>每月第一、三個 星期四</td>
			<td>07:00 pm - 09:30 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'brussels')
	and locale = 'zh'
	and page_id = 'schedule';	

	
	
----------------  ends  Belgium - Brussels
	
	
----------------  Belgium - Gent

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Bible Study (Cantonese)</td>
			<td>2nd & 4th Thursday</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'gent')
	and locale = 'en'
	and page_id = 'schedule';	
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>查經聚會 (粵語)</td>
			<td>每月第二、四個 星期四</td>
			<td>02:30 pm - 04:00 pm</td>
		</tr>


	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'gent')
	and locale = 'zh'
	and page_id = 'schedule';	

	
----------------  ends  Belgium - Gent
	
	
	
---------- Leuven , Belgium ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(56, 'leuven', 1, 4, 0);               
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(56, 'en', 'menu_name', 'CEC in Leuven');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(56, 'zh', 'menu_name', '魯汶基督教生命堂 ');            
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(11, NULL, 56);         

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'intro', 'en', 'CEC in Leuven - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor: </td>
			<td>Rev. M. C. (Mix) Chan</td>
		</tr>

</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">Address:</td>
<td>Brouwersstraat 1, 3000 Leuven, Belgium</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Tel#:</td>
<td> +32(0)484-14 86 82 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Email:</td>
<td>emsibelgium@hotmail.com </td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>January 2015</p>
<p>
</p>
<p>

</p>

</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'intro', 'zh', '魯汶基督教生命堂  - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧師: </td>
			<td>陳茂祥 牧師</td>
		</tr>
</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">地址:</td>
<td>Brouwersstraat 1, 3000 Leuven, Belgium</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">電話:</td>
<td> +32(0)484-14 86 82</td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">電郵:</td>
<td>emsibelgium@hotmail.com </td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<span class=\"label\">成立日期: </span>2015 年 1 月 
</p>
<p>
<span class=\"label\">簡史: </span><br />
<p>
</p>
<p>
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'schedule', 'en', 'CEC in Leuven - Church Services Schedule', 'Christian Evangelical Church in Leuven <br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'schedule', 'zh', '魯汶基督教生命堂  - 聚會日程','');          

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Service</td>
			<td>Sunday</td>
			<td>09:30 am - 11:30 am</td>
		</tr>
		<tr>
			<td>Children’s Sunday School</td>
			<td>Sunday</td>
			<td>09:30 am - 11:30 am</td>
		</tr>
		<tr>
			<td>Adult Bible Study (Mandarin)</td>
			<td>1st & 3rd Tuesday</td>
			<td>11:00 am - 12:30 pm</td>
		</tr>
		<tr>
			<td>Youth Bible Study (Mandarin)</td>
			<td>1st & 3rd Wednesday</td>
			<td>06:30 pm - 09:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'leuven')
	and locale = 'en'
	and page_id = 'schedule';	
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日上午</td>
			<td>09:30 am - 11:30 am</td>
		</tr>
		<tr>
			<td>兒童主日學</td>
			<td>星期日上午</td>
			<td>09:30 am - 11:30 am</td>
		</tr>
		<tr>
			<td>成人查經聚會 (國語)</td>
			<td>每月第一、三個 星期二</td>
			<td>11:00 am - 12:30 pm</td>
		</tr>
		<tr>
			<td>青年查經聚會 (國語)</td>
			<td>每月第一、三個 星期三</td>
			<td>06:30 pm - 09:00 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'leuven')
	and locale = 'zh'
	and page_id = 'schedule';	




INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'contactus', 'en', 'CEC in Leuven - Contact Us', 'Christian Evangelical Church in Leuven <br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(56, 'contactus', 'zh', '魯汶基督教生命堂  - 連絡我們','');          


update church set address='Brouwersstraat 1, 3000 Leuven, Belgium', latitude = 50.882435, longitude = 4.696683 where church_path = 'leuven';

update church_content set body = STRINGDECODE('<p>
<b>Pastors </b>Rev. M. C. (Mix) Chan</br>
</p>
<p>
<b>Address: </b>Brouwersstraat 1, 3000 Leuven, Belgium</p>
<p>
<b>Tel #: </b>+32(0)484-14 86 82</p>
<p>
<b>Email: </b>emsibelgium@hotmail.com</p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;ie=UTF8&amp;hq=&amp;hnear=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;t=m&amp;z=14&amp;ll=50.882435,4.696683&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;ie=UTF8&amp;hq=&amp;hnear=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;t=m&amp;z=14&amp;ll=50.882435,4.696683&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'leuven')
	and locale = 'en'
	and page_id = 'contactus';
	
update church_content set body = STRINGDECODE('<p>
<b>牧師: </b> 陳茂祥 牧師<br />
</p>
<p>
<b>地 址: </b>Brouwersstraat 1, 3000 Leuven, Belgium</p>
<p>
<b>電 話: </b>+32(0)484-14 86 82</p>
<p>
<b>電 郵: </b>emsibelgium@hotmail.com</p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;ie=UTF8&amp;hq=&amp;hnear=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;t=m&amp;z=14&amp;ll=50.882435,4.696683&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;ie=UTF8&amp;hq=&amp;hnear=Brouwersstraat+1,+3000+Leuven,+Belgium&amp;t=m&amp;z=14&amp;ll=50.882435,4.696683&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'leuven')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Leuven Belgium
	
	
	
---------- TOKYO ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(52, 'tokyo', 1, 1, 0);               
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(52, 'en', 'menu_name', 'CEC in Tokyo');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(52, 'zh', 'menu_name', '東京基督教生命堂');            
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(14, NULL, 52);          

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'intro', 'en', 'CEC in Tokyo - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. Sau Lan Fong, 81-90-9700-4895</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>701F SS1 BIRU 3-20-5 Minamioi, Sinagawa-ku, Tokyo, Japan</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>81-3-6423-1773</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi_omoritokyo@hotmail.co.jp">emsi_omoritokyo@hotmail.co.jp</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>2012</p>

<br/>
<p><b>March 2012 - Evangelistic Ministry began</b><br />
<br />
Tokyo is the capital of Japan. It is the place where most Chinese gather in Japan. Although there are a lot of churches there, there are still a lot of lost souls who have yet to receive the gospel. Sister Lin Yun Fang and her husband moved from Osaka to a place nearby Tokyo (about a 40 minutes ride away) about three years ago. After they arrived, they looked for a church hoping to get spiritually fed. But they still felt spiritually hungry. So they prayed to God earnestly hoping that CEM will open up a church in Tokyo. In March 2012, after Sister Lin and her husband purchased a new house, they opened their house for the Lord&rsquo;s use. They told Ev. Fong about their conviction; and Ev. Fong in turn told Rev. Yang. So by the end of April 2012, Rev. Yang went to Tokyo to start the first family service.
</p>
<br/>

<p><b>June 2012 - CEM Church established</b><br />
<br />
Rev. Yang asked the Lord for a sign that there would be at least 20 people in the first meeting. And Ev. Fong also asked for sign that there would be at least three people received Christ in the first meeting. It turned out that both signs came true. There were 24 adults and 6 children; and five of them were unbelievers. That day three people received Christ. Thank the Lord that CEM in Tokyo was officially established. On June 2012, Rev. Yang sent Ev. Fong temporarily to Sister Lin&rsquo;s house once a month to lead worship service there. In August 2013, we rented an office so the brothers and sisters in Tokyo finally have a spiritual home of our own. On September 29, 2013, Rev. Hosea Chi officiated the Inaugural Thanksgiving Service.</p>
<br/>

<p><b>Present Situation</b><br />
<br />
CEM in Tokyo is in a residential area. The church had about 10 regular members in the beginning when we rented the place. There are many Chinese nearby. Through our prayers and everyone working together, God opens a door for us, and we have new people coming every week.</p>
</div>
');    
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'intro', 'zh', '東京生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧者:</td>
			<td>方秀蘭傳道, 81-90-9700-4895</td>
		</tr>
	</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">地址:</td>
			<td>東京都品川區南大井 3-20-5 ＳＳ１大樓 701室。</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">電話:</td>
			<td>81-3-6423-1773</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:emsi_omoritokyo@hotmail.co.jp">emsi_omoritokyo@hotmail.co.jp</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">成立日期: </span>2012年</p>

<p><b>2012年三月福音事工開展</b><br />
<br />
東京是日本的首都，聚集的中國人也是全日本最多的。儘管有許多華人教會，但還是有許多失喪的靈魂正等著基督耶穌的福音。 林雲芳夫婦早在三年前舉家從大阪搬遷到東京的附近(坐車四十分鐘左右可達東京)，到了當地後便找教會，原希望能在教會得到些靈裏的餵養，但卻始終覺得靈裏乾渴。因此迫切向上帝禱告，希望生命堂能在東京開展。 2012年三月，雲芳夫婦經過禱告購得新房後，願意開放家庭為主所用。他們將此感動傳達給方傳道，方傳道與楊牧師匯報後，2012年四月底，楊牧師來到東京視察，並開始了第一次的家庭聚會。</p>
&nbsp;

<p><b>2012年六月 教會成立</b><br />
<br />
楊牧師曾為東京的福音事工求印證，第一次要有二十多人來參加，而方傳道求的印證是至少三人信主。結果29日當天兩個印證都實現，首次聚會大人二十四位，小孩六位，其中五位未信主，當日有三位慕道友歸主。感謝主，東京基督教生命堂正式成立。 楊牧師差派方傳道從2012年六月開始暫時一個月一次到雲芳夫婦家帶領崇拜。 2013年八月，租借到一間事務所，東京的弟兄姐妹終於有了屬於自己的家。2013年九月29日，戚厚生牧師主持了「東京基督教生命堂」成立感恩崇拜。</p>
&nbsp;

<p><b>教會現況</b><br />
<br />
東京生命堂位於住宅區，附近有不少的中國人。正式開始崇拜時有近十人的固定弟兄姐妹參加，在代禱與弟兄姐妹共同地努力下，上帝為我們開路，幾乎每週都有新朋友來到我們當中。</p>
</div>');         
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'schedule', 'en', 'CEC in Tokyo - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship Service</td>
			<td>Sunday</td>
			<td>11:00am ~ 12:30pm</td>
		</tr>
		<tr>
			<td>Sunday School</td>
			<td>Sunday</td>
			<td>11:00am ~ 12:30pm</td>
		</tr>
		<tr>
			<td>Prayer Meeting</td>
			<td>Wednesday</td>
			<td>7:30pm ~ 8:00pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Wednesday</td>
			<td>8:00pm ~ 9:00pm</td>
		</tr>
		<tr>
			<td>Sisters&#39; Fellowship</td>
			<td>Second Friday of the Month</td>
			<td>7:00pm ~ 8:30pm</td>
		</tr>
		<tr>
			<td>Japanese Language Class</td>
			<td>Saturday</td>
			<td>7:00pm ~ 8:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');            
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'schedule', 'zh', '東京基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日上午</td>
			<td>11:00am ~ 12:30pm</td>
		</tr>
		<tr>
			<td>主日學</td>
			<td>星期日上午</td>
			<td>11:00am ~ 12:30pm</td>
		</tr>
		<tr>
			<td>禱告會</td>
			<td>星期三晚上</td>
			<td>7:30pm ~ 8:00pm</td>
		</tr>
		<tr>
			<td>查經班</td>
			<td>星期三晚上</td>
			<td>8:00pm ~ 9:00pm</td>
		</tr>
		<tr>
			<td>姐妹團契</td>
			<td>每月第二週 星期五晚</td>
			<td>7:00pm ~ 8:30pm</td>
		</tr>
		<tr>
			<td>日語班</td>
			<td>星期六晚上</td>
			<td>7:00pm ~ 8:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');             

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'contactus', 'en', 'CEC in Tokyo - Contact Us','Christian Evangelical Church in Tokyo<br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'contactus', 'zh', '東京 基督教生命堂 - 連絡我們','');          



update church_content set body = STRINGDECODE('<p>
<b>Evangelist: </b>Ev. Sau Lan Fong</p>
<p>
<b>Address: </b>701F SS1 BIRU 3-20-5 Minamioi, Sinagawa-ku, Tokyo, Japan</p>
<p>
<b>Tel #: </b>81-3-6423-1773</p>
<p>
<b>Email: </b> <a href="mailto:emsi_omoritokyo@hotmail.co.jp">emsi_omoritokyo@hotmail.co.jp</p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E3%80%92140-0013+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;t=m&amp;z=14&amp;ll=35.589223,139.735285&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=%E3%80%92140-0013+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;t=m&amp;z=14&amp;ll=35.589223,139.735285&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'tokyo')
	and locale = 'en'
	and page_id = 'contactus';
	
	
update church_content set body = STRINGDECODE('<p>
<b>傳道: </b>方秀蘭傳道, 81-90-9700-4895</p>
<p>
<b>地 址: </b>東京都品川區南大井 3-20-5 ＳＳ１大樓 701室</p>
<p>
<b>電 話: </b>81-3-6423-1773</p>
<p>
<b>電 郵: </b><a href="mailto:emsi_omoritokyo@hotmail.co.jp">emsi_omoritokyo@hotmail.co.jp</p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E3%80%92140-0013+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;t=m&amp;z=14&amp;ll=35.589223,139.735285&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=%E3%80%92140-0013+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+T%C5%8Dky%C5%8D-to,+Shinagawa-ku,+Minami%C5%8Di,+3+Chome%E2%88%9220%E2%88%9217+%E3%82%B3%E3%83%BC%E3%83%85%E7%AC%AC%EF%BC%95%E5%A4%A7%E6%A3%AE&amp;t=m&amp;z=14&amp;ll=35.589223,139.735285&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'tokyo')
	and locale = 'zh'
	and page_id = 'contactus';



update church set address='701F SS1 BIRU 3-20-5 Minamioi, Sinagawa-ku, Tokyo, Japan', latitude = 35.589223, longitude = 139.735285 where church_path = 'tokyo';

------------ CEC TOKYO end ----------

---------- Oradell ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(53, 'oradell', 1, 9, 0);               
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(53, 'en', 'menu_name', 'CEC in Oradell');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(53, 'zh', 'menu_name', '俄備得基督教生命堂');            
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(3, NULL, 53);          

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'intro', 'en', 'CEC in Oradell - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastors: </td>
			<td>Ev. Sorina Yang, (H)973-331-0438</td>
		</tr>

</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">Address:</td>
<td>343 Kinderkamack Road, Oradell, NJ 07649 USA</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Tel#:</td>
<td> (973) 335-7337 ext. 220, (C) (973) 699-3223 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Email:</td>
<td><a href="mailto: emsilan2013@gmail.com"> emsilan2013@gmail.com</a></td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>June 1, 2014</p>
<p>
<img hspace="5" src="/emsi/images/OradellChurch.JPG" align="left" height="255" width="360" />
</p>
<p>
<b>Bible Study Classes Started</b>
</p>
<p>
A couple of years ago, there was apparent shortage of space for all the ministries of the Pearl River church. At that time a sister serious with God’s Commission to spread the Gospel reminded us the need of Gospel message among Chinese in the Bergen County. So after prayers, we began looking for a church in the Bergen County. We looked at a few churches in the area, and started praying for a suitable church earnestly. We thank the Lord our God who led us to the Annunciation church in Oradell. They agreed for us to use their church. In December 2012 we put out posters. In January 2013 we began planning and inviting people to attend Bible Study classes. We started with two Bible study classes, one on Wednesdays at 7:45 pm for career people; one on Friday mornings at 11:00am for the believers who did not go to work during the day.  In the beginning attendees included brothers and sisters from Pearl River Church, as well as new friends from nearby areas.
</p>
<p>
There are two universities, Chinese restaurants, New Jin Feng Chinese supermarket, as well as Chinese School in the vicinity of the Oradell Church. All these people are now targets to whom we can spread the Gospel. We also start to approach FDU students. Since Oradell Church has only Bible Study Class and no Sunday worship services, at this time we are bringing the students and friends to the Pearl River Church for Sunday worship service. We also help provide various services for these students such as applying and securing their student driver’s permits, etc. We thank the Lord that He moved a couple who devote their time and energy caring for these students to drive them around and provide other support activities.
</p>
<p>
This is the beginning efforts to develop the CEM Church in Oradell, NJ. We need many more prayers, and even more willing brothers and sisters to enter the service in the Gospel field for our Lord. May the Lord stir up even more local brothers and sisters to be co-workers with us! May He use us to bring the Gospel into the hearts of the Chinese in Bergen County, enabling all of us to unite and enjoy the salvation of our Lord Jesus!
</p>
<p>
Mt. 9:36-38
But when he saw the multitudes, he was moved with compassion on them, because they fainted, and were scattered abroad, as sheep having no shepherd. Then saith he unto his disciples, The harvest truly is plenteous, but the labourers are few; Pray ye therefore the Lord of the harvest, that he will send forth labourers into his harvest.
</p>
<p>

<b>CEC Oradell began Worship Services</b>
</p>
<p>
After a year of Bible study, we discovered that it was impossible to retain people if there are no worship services, so we started planning on worship services. At the time the Annunciation Church went through major renovations. At every step of renovation, the church needed a permit to proceed. So we waited patiently till the end of April 2014 when they informed us that they have received the permit to use the church building. Meanwhile there was a Korean church wanting to rent this space. We could only pray for Lord’s guidance what to do.
On the third Tuesday night of May, Ev. Sorina Yang went their board meeting, and told them our vision and our practice. During the Wednesday night Bible study the following day, pastor Archie told me: “Congratulations! They chose you over the Korean church..!”
We truly thank the Lord for He opened the door no one can shut. Because time is rushing by we decided to start our first worship service which was presided by Pastor Moses Yang on June 1st. We are looking forward to the days when Oradell will become a place of blessing as a result of our evangelistic outreach.

</p>

</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'intro', 'zh', '俄備得基督教 生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧者: </td>
			<td>楊張秀蘭 傳道, (H)973-331-0438</td>
		</tr>
</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">地址:</td>
<td>343 Kinderkamack Road, Oradell, NJ 07649 USA</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">電話:</td>
<td> (973) 335-7337 ext. 220, (C) (973) 699-3223 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">電郵:</td>
<td><a href="mailto: emsilan2013@gmail.com"> emsilan2013@gmail.com</a></td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<span class=\"label\">成立日期: </span>2014 年 6 月 1 日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/OradellChurch.JPG" align="left" height="255" width="360" />
<p><b>俄備得查經班 開始</b>  </p>

<p>因著珍珠河生命堂教會的空間漸漸有不敷使用的現象，又因著一位姐妹對福音的使命感，提到Bergen County 有許多的華人需要福音。讓我想到楊牧師曾一直希望在這裡建立一個福音的據點。 於是經過禱告以後，我們就開始找地方。當我們觀察了幾間教會以後，就為這幾間教會的選擇迫切的禱告。感謝主，最後，主帶領我們到Oradell的 Annunciation church借用他們教會的場地。他們同意以每個月$200.00元的租金讓我們使用。於是我們于2012年12月開始張貼廣告，於2013年一月開始籌畫並邀請人來參加查經班。    我們剛開始設了兩個查經班，一個是週三晚上7:45，是針對上班族而設立的查經班。 另一個是週五早上11:00，是為沒有上班的信徒們預備的查經班。剛開始的成員，有珍珠河教會的弟兄姐妹，也有住在附近的新朋友。 
</p>
<p>教會周圍有兩所大學，有幾家中國餐館，新金豐超市，還有中文學校， 這些人都將成為我們傳福音的對象。目前我們也開始進行FDU的學生工作。但因為Oradell 教會只有查經班，還未正式有主日崇拜，所以就暫時把這些學生或新朋友帶到珍珠河教會作禮拜。同時也幫助這些學生考駕照等等的服務。 感謝主，祂感動一對夫婦，全心全力的投入學生事工，關懷，接送…。
</p>
<p>
 這只是俄備得教會的起步，我們需要更多的禱告，也需要更多的弟兄姐妹願意為主的緣故，為福音的緣故投入福音工場的事奉。求主興起更多當地的弟兄姐妹來和我們一起同工。求主藉著我們把福音帶進住在 Bergen County 的華人心中，讓他們和我們一起享受主耶穌的救恩。
</p>
<p>< 馬太福音9:36-38>
</p>
</p>
祂看見許多的人，就憐憫他們；因為他們困苦流離，如同羊沒有牧人一般。 於是對門徒說：「要收的莊稼多，做工的人少。 所以，你們當求莊稼的主打發工人出去收他的莊稼。」
</p>

<b>俄備得教會正式成立 </b><br>
<p>
 經過一年多的查經，我們發現若是不開始有主日的崇拜，就不可能留住人，所以就積極著手開始主日聚會的計劃。 但那時因為Annunciation教會在大裝修，每一樣裝修都需要拿到許可使用證。於是我們就等待…等待…，一個月一個月就這樣過去。 我相信時間在主的手中，因此我耐心等候，直到2014年四月底，他們通知我已經拿到許可使用權時，同時有另一個韓國牧師要來租用這個場地，他們給了很高的價碼，每月$1,900.00元租金。當Archie牧師告訴我的時候，我嚇了一跳，竟然來了一個搶用地方的團體。我實在付不起這麼貴的租金，我只有禱告求主指示，我該怎麼作。
</p>
<p>
到了五月的第三個星期的星期二晚上，我去參加他們的董事會議，我把我們的異象及生命堂的作法告訴他們。最後， 我就實實在在的告訴他們，目前，我只能付$600.00元一個月。一個多小時的會議完畢之後，我覺得主是與我們同在的。第二天是星期三，晚上我們有查經班。當我們來到教會的時候，一進門，Archie牧師就向我揮手，告訴我說： 恭喜你！ 他們選擇讓你們留下來，拒絕了韓國人…！ 但是租金變成$ 800元。我驚呆了！
</p>
<p>
感謝主，上帝開的路就沒有人能關。 我知道接下來就是要努力傳福音了。 因為時間的緊迫，我們就立刻決定六月一日第一個主日就開始崇拜。 時間雖然有點緊張，但有主同在，真的是難處一點一點的迎刃而解。 我也要感謝神學院及幾位牧長同工都全力支持，還有珍珠河教會的幾個家庭及同工們的支持，讓我心裡更加有力量。 我們期待著，Oradell的社區，真的能因著我們的福音工作而成為一塊蒙福之地。
</p>
<p>2014年 5月28日</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'contactus', 'en', 'CEC in Oradell - Contact Us', 'Christian Evangelical Church in Oradell<br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'contactus', 'zh', '俄備得 基督教生命堂 - 連絡我們','');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'schedule', 'en', 'CEC in Oradell - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>New-life Fellowship</td>
			<td>Sunday</td>
			<td>1:00pm</td>
		</tr>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>2:00pm</td>
		</tr>
		<tr>
			<td>Sunday School </td>
			<td>Sunday</td>
			<td>2:00pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Wednesday</td>
			<td>7:45pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Friday</td>
			<td>11:00am</td>
		</tr>
		<tr>
			<td>English Class</td>
			<td>Friday</td>
			<td>1:00pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');            
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'schedule', 'zh', '俄備得基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>新生命團契 </td>
			<td>星期日 下午</td>
			<td>1:00pm</td>
		</tr>
		<tr>
			<td>主日崇拜 </td>
			<td>星期日 下午</td>
			<td>2:00pm</td>
		</tr>
		<tr>
			<td>兒童主日學 </td>
			<td>星期日 下午</td>
			<td>2:00pm</td>
		</tr>
		<tr>
			<td>週三查經班</td>
			<td>星期三 晚</td>
			<td>7:45pm</td>
		</tr>
		<tr>
			<td>週五查經班</td>
			<td>星期五上午 </td>
			<td>11:00am</td>
		</tr>
		<tr>
			<td>英文會話課 </td>
			<td>星期五下午</td>
			<td>1:00pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');             


update church set address='343 Kinderkamack Road, Oradell, NJ 07649 USA', latitude = 40.9521361, longitude = -74.0320762 where church_path = 'oradell';

update church_content set body = STRINGDECODE('<p>
<b>Pastors: </b>Ev. Sorina Yang, (H)973-331-0438
</p>
<p>
<b>Address: </b>343 Kinderkamack Road, Oradell, NJ 07649 USA</p>
<p>
<b>Tel #: </b>(973) 335-7337 ext. 220, (C)(973) 699-3223</p>
<p>
<b>Email: </b>emsilan2013@gmail.com</p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?sll=40.9521347,-74.0320579&amp;sspn=0.0062231,0.0109864&amp;q=343+Kinderkamack+Rd&amp;ie=UTF8&amp;hq=&amp;hnear=343+Kinderkamack+Rd,+Oradell,+New+Jersey+07649&amp;t=m&amp;z=14&amp;ll=40.952136,-74.032076&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'oradell')
	and locale = 'en'
	and page_id = 'contactus';
	
update church_content set body = STRINGDECODE('<p>
<b>牧者: </b>楊張秀蘭 傳道, (H)973-331-0438
</p>
<p>
<b>地 址: </b>343 Kinderkamack Road, Oradell, NJ 07649 USA</p>
<p>
<b>電 話: </b>(973) 335-7337 ext. 220, (C) (973) 699-3223</p>
<p>
<b>電 郵: </b>emsilan2013@gmail.com</p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?sll=40.9521347,-74.0320579&amp;sspn=0.0062231,0.0109864&amp;q=343+Kinderkamack+Rd&amp;ie=UTF8&amp;hq=&amp;hnear=343+Kinderkamack+Rd,+Oradell,+New+Jersey+07649&amp;t=m&amp;z=14&amp;ll=40.952136,-74.032076&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'oradell')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Oradell


---------- Brooklyn 7th ave - used to called Brooklyn Mandarin - 8th Ave ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(55, 'brooklynmandarin', 1, 10, 0);               
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(55, 'en', 'menu_name', 'ECMSI in Brooklyn');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(55, 'zh', 'menu_name', '希伯崙基督教生命堂 ');            
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(3, NULL, 55);          

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'intro', 'en', 'ECMSI in Brooklyn  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Pastor: </td>
			<td>Rev. Hosea Chi 973-335-7337, ext. 219, (C) 973-960-8065</td>
		</tr>

</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">Address:</td>
<td>6401 7th Ave., Brooklyn, NY 11220, USA</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Tel#:</td>
<td> 646-979-0107 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Email:</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>December 2014</p>
<p>
</p>
<p>

</p>

</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'intro', 'zh', '希伯崙基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label">牧師: </td>
			<td>戚厚生牧師 973-335-7337, ext. 219, (手機) 973-960-8065</td>
		</tr>
</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">地址:</td>
<td>6401 7th Ave., Brooklyn, NY 11220</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">電話:</td>
<td> 646-979-0107</td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">電郵:</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<span class=\"label\">成立日期: </span>2014 年 12 月 
</p>
<p>
<span class=\"label\">簡史: </span><br />
<p>
</p>
<p>
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'contactus', 'en', 'ECMSI in Brooklyn - Contact Us', 'Christian Evangelical Church in Brooklyn Mandaring Service<br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'contactus', 'zh', '希伯崙基督教生命堂  - 連絡我們','');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'schedule', 'en', 'ECMSI in Brooklyn - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Tuesday</td>
			<td>7:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');            
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'schedule', 'zh', '希伯崙基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜 </td>
			<td>星期日 上午</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>查經班</td>
			<td>星期二 晚</td>
			<td>7:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');             


update church set address='6401 7th Ave., Brooklyn, NY 11220, USA', latitude = 40.6343803, longitude = -74.0140939 where church_path = 'brooklynmandarin';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Pastors </b>Rev. Hosea Chi 973-335-7337, ext. 219, (C) 973-960-8065</br>
</p>
<p style="padding-left: 55px;">
Mrs. Chialin Chi, (C) 973-932-3534</p>
<p>
<b>Address: </b>6401 7th Ave., Brooklyn, NY 11220, USA</p>
<p>
<b>Tel #: </b>646-979-0107</p>
<p>
<b>Email: </b></p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=6401+7th+Ave,+Brooklyn,+NY+11220&sll=40.6343803,-74.0140939&sspn=0.0062521,0.0109864&hnear=6401+7th+Ave,+Brooklyn,+NY+11220&t=m&z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=6401+7th+Ave,+Brooklyn,+NY+11220&sll=40.6343803,-74.0140939&sspn=0.0062521,0.0109864&hnear=6401+7th+Ave,+Brooklyn,+NY+11220&t=m&z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklynmandarin')
	and locale = 'en'
	and page_id = 'contactus';
	
update church_content set body = STRINGDECODE('<p>
<b>牧師: </b> 戚厚生 牧師 973-335-7337, ext. 219, (手機) 973-960-8065<br />
</p>
<p style="padding-left: 40px;">
戚陳佳琳 師母, (手機) 973-932-3534</p>
<p>
<b>地 址: </b>6401 7th Ave., Brooklyn, NY 11220, USA</p>
<p>
<b>電 話: </b>646-979-0107</p>
<p>
<b>電 郵: </b></p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=6401+7th+Ave,+Brooklyn,+NY+11220&sll=40.6343803,-74.0140939&sspn=0.0062521,0.0109864&hnear=6401+7th+Ave,+Brooklyn,+NY+11220&t=m&z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=6401+7th+Ave,+Brooklyn,+NY+11220&sll=40.6343803,-74.0140939&sspn=0.0062521,0.0109864&hnear=6401+7th+Ave,+Brooklyn,+NY+11220&t=m&z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklynmandarin')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Brooklyn 7th ave - used to be called Brooklyn Mandarin - 8th Ave
	
	
	
	

-----------------starts pearlriver

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Minister:</td>
			<td>Ev. Sorina Yang 973-335-7337, ext. 220, (C) 973-699-3223</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 456 North Middle Town Rd, Pearl River, NY 10965 USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> (845)623-2045</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsilan2013@gmail.com">emsilan2013@gmail.com</a><br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>1973
</p>
<p>
<img hspace="5" src="/emsi/images/church_pearlriver.jpg" align="left" height="255" width="360" />In 1970s, the Chinese Evangelical Church (C.E.C.) in Pearl River started as a Bible study group in response to a sister in Christ when Rev. Moses Yang was still pasturing a church of New Jersey, because there was no Chinese church around that area by then.
</p>

<p>Gradually, the attendance grew and the believers wanted to have Sunday Worship Service. Seeing the need and the hunger of the flock, Rev. Yang and a group of devoted Christians rent the Methodist church and started Chinese Evangelical Church in Pearl River in the year of 1973. Then move again to the Nanuet area, and rent the Grace Baptist Church of Nanuet and change the name to the C.E.C. in New York State.
</p>

<p>There were many inconveniences in renting other church facilities, and the plan to have our own church building was eagerly pursued among the brothers and sisters, and the Building Fund Offering had been continuing on. Finally, in early April 1996, we found a suitable place and purchased the lot in cash. On June 2, 1996, the church moved to its new location, and a New Church Building Dedication Ceremony was held later on July 27. Since the church was located in Pearl River, the name of the church was changed again back to C.E.C. in Pearl River.
</p>

<p>Throughout the years, besides the founding pastor Rev. Moses Yang, the church had also been pastured by Rev. Paul Hsu, Ev. Roycos Hom, and EBI graduates such as Ev. Anny Li, Ev. Joan Dan, Ev. & Mrs. Luke Chang, etc, and presently by Ev. Sorina Yang. Currently, most church members reside in Rockland County, NY and Bergen County, NJ.
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">牧者:</td>
			<td>楊張秀蘭 傳道 973-335-7337, ext. 220, (C) 973-699-3223</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 456 North Middle Town Rd, Pearl River, NY 10965 USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (845)623-2045 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsilan2013@gmail.com"> emsilan2013@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1973年 
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/church_pearlriver.jpg" align="left" height="255" width="360" />一九七o年代，在新澤西州牧會的楊摩西牧師為了回應一位姊妹的呼聲，於新州北部靠近紐約州的地方開始了一個小小的查經班，因為該處沒有中國教會。
</p>
<p>漸漸地，查經班的人數越來越多，弟兄姊妹也希望能夠開始有主日崇拜。基於羊群的需要，楊牧師和一群忠心的基督徒於一九七三年在紐約州珍珠河借用美國衛理公會教堂，成立了珍珠河基督教生命堂。後再遷至紐約州南部與新澤西州相接的南紐約(Nanuet)，租用美國恩惠浸信會(Grace Baptist Church of Nanuet)教堂聚會，並更名為紐約州基督教生命堂。
</p>
<p>在借用的教堂聚會，難免有許多不便，於是弟兄姊妹興起購建新堂的計畫，建堂奉獻也從未間斷。一九九六年初，終於覓得一處合適的建築，幾經交涉，於四月擇期以現款買斷成交，並於六月二日遷入新址，同年七月廿七日舉行獻堂典禮。由於新堂堂址位於紐約州珍珠河，亦即當年成立教會的地區，因此教會再度正名為珍珠河基督教生命堂。
</p>
<p>多年來，本堂的牧者除了當初建立教會的楊摩西牧師之外，尚有新加坡禧年堂退休的徐頌光牧師、香港宣道浸信會譚俊德傳道、國際福音佈道神學院畢業生李月雲傳道、但功濤傳道及張博淨、蔡純德傳道夫婦等等，一九九七年至今，則由國際福音佈道神學院畢業的楊張秀蘭傳道帶領。教會成員多數來自紐約州的羅克蘭郡（Rockland County, New York）,以及新澤西州的柏根郡(Bergen County)。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'zh'
	and page_id = 'intro';

	

	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Minister: </b>Ev. Sorina Yang 973-335-7337, ext. 220, (C) 973-699-3223
</p>
<p>
<b>Address: </b>456 North Middle Town Rd, Pearl River, NY 10965 USA
</p>
<p>
<b>Tel #: (845)623-2045
</p>
<p>
<b>Email: </b>emsilan2013@gmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=456+North+Middle+Town+Rd,+Pearl+River,+NY+10965+USA&amp;aq=&amp;sll=52.23197,6.888148&amp;sspn=0.00891,0.016694&amp;ie=UTF8&amp;hq=&amp;hnear=456+N+Middletown+Rd,+Pearl+River,+New+York+10965&amp;t=m&amp;z=14&amp;ll=41.075231,-74.013037&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=456+North+Middle+Town+Rd,+Pearl+River,+NY+10965+USA&amp;aq=&amp;sll=52.23197,6.888148&amp;sspn=0.00891,0.016694&amp;ie=UTF8&amp;hq=&amp;hnear=456+N+Middletown+Rd,+Pearl+River,+New+York+10965&amp;t=m&amp;z=14&amp;ll=41.075231,-74.013037&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>牧者: </b>楊張秀蘭 傳道 , 973-335-7337, ext. 220, (C) 973-699-3223
</p>
<p>
<b>地址: </b>456 North Middle Town Rd, Pearl River, NY 10965 USA
</p>
<p>
<b>電話:</b> (845)623-2045
</p>
<p>
<b>電郵: </b>emsilan2013@gmail.com
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=456+North+Middle+Town+Rd,+Pearl+River,+NY+10965+USA&amp;aq=&amp;sll=52.23197,6.888148&amp;sspn=0.00891,0.016694&amp;ie=UTF8&amp;hq=&amp;hnear=456+N+Middletown+Rd,+Pearl+River,+New+York+10965&amp;t=m&amp;z=14&amp;ll=41.075231,-74.013037&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=456+North+Middle+Town+Rd,+Pearl+River,+NY+10965+USA&amp;aq=&amp;sll=52.23197,6.888148&amp;sspn=0.00891,0.016694&amp;ie=UTF8&amp;hq=&amp;hnear=456+N+Middletown+Rd,+Pearl+River,+New+York+10965&amp;t=m&amp;z=14&amp;ll=41.075231,-74.013037&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'zh'
	and page_id = 'contactus';
	
	
update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Worship (Mandarin speaking with English interpretation)</td>
			<td>Sunday</td>
			<td>10:30 AM</td>
		</tr>
		<tr>
			<td>Children&#39; Sunday School </td>
			<td>Sunday</td>
			<td>11:00 AM</td>
		</tr>
		<tr>
			<td>Chinese Bible Study</td>
			<td>Every Other Tues</td>
			<td>8:00 PM</td>
		</tr>
		<tr>
			<td>Berea Bible Study Group</td>
			<td>Wednesday</td>
			<td>11:00 AM</td>
		</tr>
		<tr>
			<td>Wayne Restaurant Bible Study</td>
			<td>Thursday</td>
			<td>3:30 PM</td>
		</tr>
		<tr>
			<td>Joy Fellowship </td>
			<td>Saturday</td>
			<td>3:30 PM</td>
		</tr>
		<tr>
			<td>Prayer Meeting </td>
			<td>Friday</td>
			<td>8:00 PM</td>
		</tr>
		<tr>
			<td>Senior Fellowship </td>
			<td>Every 3rd Wednesday</td>
			<td>10:30 AM</td>
		</tr>
		<tr>
			<td>Brothers Fellowship </td>
			<td>Every 1st Saturday</td>
			<td>5:30 AM</td>
		</tr>
		<tr>
			<td>Sisters Fellowship </td>
			<td>Every 1st Saturday</td>
			<td>5:30 AM</td>
		</tr>
		<tr>
			<td>Elim Fellowship </td>
			<td>Every 3rd or 4th Saturday</td>
			<td>5:30 PM</td>
		</tr>
		<tr>
			<td>Gospel Fellowship </td>
			<td>Sunday</td>
			<td>12:45 PM</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

'	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'en'
	and page_id = 'schedule';
	

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜 (有英文翻譯)</td>
			<td>星期日 上午</td>
			<td>10:30 AM</td>
		</tr>
		<tr>
			<td>兒童主日學 </td>
			<td>星期日 上午</td>
			<td>11:00 AM</td>
		</tr>
		<tr>
			<td>中文查經班</td>
			<td>每月雙週週二晚間 </td>
			<td>8:00 PM</td>
		</tr>
		<tr>
			<td>庇哩亞查經小組 </td>
			<td>週三上午</td>
			<td>11:00 AM</td>
		</tr>
		<tr>
			<td>惟恩餐館查經小組</td>
			<td>週四下午  </td>
			<td>3:30 pm</td>
		</tr>
		<tr>
			<td>喜樂團契 </td>
			<td>週六下午 3:30</td>
			<td>3:30 PM</td>
		</tr>
		<tr>
			<td>查經禱告會 </td>
			<td>週五晚間</td>
			<td>8:00 PM</td>
		</tr>
		<tr>
			<td>長青團契</td>
			<td>每月第三個週三上午</td>
			<td>10:30 AM</td>
		</tr>
		<tr>
			<td>弟兄團契</td>
			<td>每月第一個週六下午</td>
			<td>5:30 PM</td>
		</tr>
		<tr>
			<td>姐妹團契</td>
			<td>每月第一個週六下午</td>
			<td>5:30 PM</td>
		</tr>
		<tr>
			<td>以琳團契 </td>
			<td>每月第三或第四週週六下午</td>
			<td>5:30 PM</td>
		</tr>
		<tr>
			<td>福音團契 </td>
			<td>主日下午 12:45</td>
			<td>12:45 PM</td>
		</tr>
	</tbody>
	</tbody>
</table>

<p>&nbsp;</p>

'	where church_id = (select church_id from church where church_path = 'pearlriver')
	and locale = 'zh'
	and page_id = 'schedule';	

	
----------------  ends  pearlriver
	
	
---------- Parow-Noord ---------

	INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(49, 'schedule', 'en', 'CEC in Parow-Noord - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship</td>
			<td>Sunday</td>
			<td>3:00 - 4:30pm</td>
		</tr>
		<tr>
			<td>Children&#39; Sunday School </td>
			<td>Sunday</td>
			<td>3:00 - 4:00pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Thursday</td>
			<td>7:00 - 9:00pm</td>
		</tr>
		<tr>
			<td>Para Noord Fellowship</td>
			<td>First Sunday of the Month</td>
			<td>4:30 - 6:00pm</td>
		</tr>
		<tr>
			<td>Prayer Meeting</td>
			<td>2nd and 4th Thursday of the Month</td>
			<td>4:30 - 5:00pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>3rd Sunday of the Month</td>
			<td>4:30 - 5:00pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');            
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(49, 'schedule', 'zh', '八福城基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>崇拜 </td>
			<td>星期日 下午</td>
			<td>3:00 - 4:30pm</td>
		</tr>
		<tr>
			<td>兒童主日學 </td>
			<td>星期日 下午</td>
			<td>3:00 - 4:00pm</td>
		</tr>
		<tr>
			<td>查經班</td>
			<td>星期四 晚上</td>
			<td>7:00 - 9:00pm</td>
		</tr>
		<tr>
			<td>八福城團契 </td>
			<td>每月第一週星期日下午</td>
			<td>4:30 - 6:00pm</td>
		</tr>
		<tr>
			<td>禱告會</td>
			<td>每月第二週和第四週星期日下午 </td>
			<td>4：30 - 5:00 pm</td>
		</tr>
		<tr>
			<td>查經班 </td>
			<td>每月第三週星期日下午</td>
			<td>4：30 - 5:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');             

-----------------------end Parow-Noord



-----------------starts Africa - capetown

update church_content set body = '<style>
.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelist:</td>
			<td>Ev. William Ng, (C) 0027-(0)76-515-1934</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 0027-(0)21-686-2783(CEM), 0027-(0)21-686-0714(church)</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi.cecsa@gmail.com">emsi.cecsa@gmail.com</a><br />
			</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_skype.gif" height="16" width="16" /></td>
			<td class="label">Skype:</td>
			<td>cemcapetownsa<br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>February 1996
</p>
<p>
<img hspace="5" src="/emsi/files/capetownsmall_0.jpg" align="left" height="255" width="360" />Rev. Moses Yang went to South Africa in November of 1995 for an exploratory trip. He found out that there were a lot of Chinese here in this coastal area, yet there was no sight of a Chinese church. Through the introduction of some brothers and sisters, he came to know sister Wu, who normally opened her home for Bible study. They realized that there was not enough spiritual nourishment through sharing only. Although they had tried to make calls to Taiwan, Hong Kong and Singapore for help, there was no response. Rev. Yang came at the right time. He then sent a seminary student to start the ministry and the C.E.C. in Cape Town was officially established.
</p>
<p>
</p>


</div>
'	where church_id = (select church_id from church where church_path = 'capetown')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>\r\n<div class=\"contact-content\">
<div style=\"color: #000000; font-size: small\">
<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道:</td>
			<td>吳偉南 傳道 , (C) 0027-(0)76-515-1934</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0027-(0)21-686-2783(佈道會), 0027-(0)21-686-0714(教會) </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsi.cecsa@gmail.com"> emsi.cecsa@gmail.com</a></td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_skype.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">Skype:</td>
			<td>cemcapetownsa<br />
			</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<span class=\"label\">成立日期: </span>1996年 2月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/files/capetownsmall_0.jpg" align="left" height="255" width="360" />一九九五年十一月楊摩西牧師至南非考察，發現沿海地區有不少華人聚集，卻沒有教會。經弟兄姐妹介紹，楊牧師認識了伍沈梅芳姐妹，她經常開放自宅供大家查經；但深感大家的分享無法供應靈糧。雖曾嘗試在台灣、香港及新加坡等地發出呼聲，卻終未見回應，因此楊牧師去的正是時候。一九九六年二月，楊摩西牧師派神學生至開普敦開展事工，並於南非開普敦  (Cape Town)，設立「開普敦基督教生命堂」。
</p>
<p>感謝主帶領國際神學福音佈道會走過四十年的路程，也感謝主讓楊摩西牧師在南非建立開普敦生命堂，使遠在非洲的華人也能得到福音的好處。自一九九六年開普敦生命堂成立以來，已走過了十四年，而我是在二○○六年開普敦生命堂十週年慶時來到南非，開始了我學習牧會的曠野之路。
</p>
<p>在第一年的牧會過程中，感謝主讓我從同時由總會派來的陳寳珩傳道那學習不少功課。我也看到主不斷地加添我力量，不斷幫助及扶持我；而讓我感觸最深刻的就是在二○○七年三月，陳傳道向總會請假，要去中國三個月，這讓我一下不知所措。面對每週的講道，還有三個查經班、兩個團契、主日學，全部要獨自承擔，這如大山一樣壓得我喘不過氣來。我知自己能力有限，擔心虧欠主；但我也知這是主給我成長的機會，所以我不住禱告求主幫助。感謝主，在禱告中主對我說：「我的恩典夠你用的，因為我的能力是在人的軟弱上顯得完全。」(林後十二9) 有了主的這話，我心中一下子踏實了很多也有信心來完成主給我的功課。果真，當我懂得交託後，主親自感動人來幫助我：主日學開始有人帶了、查經班的車子有人開了……。感謝主，祂的聖工沒有耽誤，一樣一樣都按部就班地進行；正如主所說，祂的能力是在軟弱人身上顯得完全。感謝主，一切都是祂在做，祂的恩典與憐憫讓衆人知道祂是全能的神，也看到祂能力的彰顯。
</p>
<p>開普敦生命堂是主賜福的地方，每年都有很多人信主得救，而且這裡的工場很大，每年都有很多中國人來求學、工作及經商。但每當教會剛剛穩定要發展時，撒但就會來攻擊，致使聖工一直沒辦法順利開展；可是也是因經過這些苦難和磨練後，弟兄姐妹們成長了。現在藉著查經班、生命團契及青年團契讓大家更清楚上帝的教導，靈命得更新，也學會在有了屬靈的經驗後，不再輕易被撒但利用。看到弟兄姐妹的成長心中有說不出的欣喜，願主堅固祂所做的善工也求主繼續賜福這些尋求祂的人。
</p>
<p>二○○七年八月總部因事工的需要，調回陳寳珩傳道，差派了王濤傳道前來協助南非的事工。感謝主，目前弟兄姐妹們都能積極地參與服事，努力發展福音聖工。開普敦生命堂因尚無自己的教堂，所以我們正在積極尋找，盼望能早日找到合適的地點，好更方便開展各項事工，願一切榮耀頌讚都歸與我主耶穌！
</p>
<p>
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'capetown')
	and locale = 'zh'
	and page_id = 'intro';

	
update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. William Ng, (C) 0027-(0)76-515-1934
</p>
<p>
<b>Address: </b>94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa
</p>
<p>
<b>Tel #: 0027-(0)21-686-2783(CEM), 0027-(0)21-686-0714(church)
</p>
<p>
<b>Email: </b>emsi.cecsa@gmail.com
</p>
<p>
<b>Skype: </b>cemcapetownsa
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=94+Campground+Rd,+Cape+Town+7700,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=94+Campground+Rd,+Southern+Suburbs,+Cape+Town,+Western+Cape+7700,+South+Africa&amp;ll=-33.965856,18.474988&amp;spn=0.002625,0.004259&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=94+Campground+Rd,+Cape+Town+7700,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=94+Campground+Rd,+Southern+Suburbs,+Cape+Town,+Western+Cape+7700,+South+Africa&amp;ll=-33.965856,18.474988&amp;spn=0.002625,0.004259&amp;t=m&amp;z=14&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'capetown')
	and locale = 'en'
	and page_id = 'contactus';
	
	
	
update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道: </b>吳偉南 傳道 , (C) 0027-(0)76-515-1934
</p>
<p>
<b>地址: </b>94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa
</p>
<p>
<b>電話:</b> 0027-(0)21-686-2783(佈道會), 0027-(0)21-686-0714(教會)
</p>
<p>
<b>電郵: </b>emsi.cecsa@gmail.com
</p>
<p>
<b>Skype: </b>cemcapetownsa
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=94+Campground+Rd,+Cape+Town+7700,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=94+Campground+Rd,+Southern+Suburbs,+Cape+Town,+Western+Cape+7700,+South+Africa&amp;ll=-33.965856,18.474988&amp;spn=0.002625,0.004259&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=94+Campground+Rd,+Cape+Town+7700,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=94+Campground+Rd,+Southern+Suburbs,+Cape+Town,+Western+Cape+7700,+South+Africa&amp;ll=-33.965856,18.474988&amp;spn=0.002625,0.004259&amp;t=m&amp;z=14&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'capetown')
	and locale = 'zh'
	and page_id = 'contactus';
	
----------------  ends  Africa - Cape Town


---- wellington ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(54, 'wellington', 1, 3, 0);               
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(54, 'en', 'menu_name', 'CEC in Wellington');             
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(54, 'zh', 'menu_name', '衛靈盾基督教生命堂');            
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(17, NULL, 54);          

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'intro', 'en', 'CEC in Wellington - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
<td class="label">Evangelist:</td>
<td>Ev. William Ng</td>
</tr>
</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">Address:</td>
<td>22 Jan Van Riebeeck Street, Wellington, 7654, South Africa</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Tel#:</td>
<td> 27-21-686-2783 / 27-76-515-1934</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Fax#:</td>
<td> 27-21-686-2783</td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Email:</td>
<td><a href="mailto: emsi.cecsa@gmail.com"> emsi.cecsa@gmail.com</a></td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Skype:</td>
<td>cemcapetownsa</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>2014</p>
<p>
<img hspace="5" src="/emsi/images/Wellingtonsmall.jpg" align="left" height="255" width="360" />
</p>

</div>

');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'intro', 'zh', '衛靈盾 生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
<td class="label">傳道:</td>
<td>吳偉南 傳道</td>
</tr>
</tbody>
</table>
&nbsp;

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">地址:</td>
<td>22 Jan Van Riebeeck Street, Wellington, 7654, South Africa</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">電話:</td>
<td> 27-21-686-2783 / 27-76-515-1934 </td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">傳真:</td>
<td> 27-21-686-2783 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">電郵:</td>
<td><a href="mailto: emsi.cecsa@gmail.com"> emsi.cecsa@gmail.com</a></td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Skype:</td>
<td>cemcapetownsa</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<span class=\"label\">成立日期: </span>2014 年 
</p>
<p>
<img hspace="5" src="/emsi/images/Wellingtonsmall.jpg" align="left" height="255" width="360" />
</p>
<p>
<span class=\"label\">簡史: </span><br />
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'contactus', 'en', 'CEC in Wellington - Contact Us', 'Christian Evangelical Church in Wellington<br><br>');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'contactus', 'zh', '俄備得 基督教生命堂 - 連絡我們','');          
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'schedule', 'en', 'CEC in Wellington - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship</td>
			<td>Tuesday</td>
			<td>7:30pm</td>
		</tr>
		<tr>
			<td>Choir Practice </td>
			<td>Tuesday</td>
			<td>7:00pm</td>
		</tr>
		<tr>
			<td>Fellowship</td>
			<td>2nd Tuesday of each month </td>
			<td>8:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'); 

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(54, 'schedule', 'zh', '衛靈盾基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>崇拜 </td>
			<td>每週二晚上</td>
			<td>7:30pm</td>
		</tr>
		<tr>
			<td>詩班練習 </td>
			<td>每週二晚上</td>
			<td>7:00pm</td>
		</tr>
		<tr>
			<td>團契</td>
			<td>每月第二週星期二晚上</td>
			<td>8:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');             


update church set address='22 Jan Van Riebeeck Street, Wellington, 7654, South Africa', latitude =-33.637757, longitude = 19.003839 where church_path = 'wellington';

update church_content set body = STRINGDECODE('<p>
<b>Evangelist: </b>Ev. William Ng</p>
<p>
<b>Address: </b>22 Jan Van Riebeeck Street, Wellington, 7654, South Africa</p>
<p>
<b>Tel #: </b>27-21-686-2783 / 27-76-515-1934</p>
<p>
<b>Fax #: </b>27-21-686-2783</p>
<p>
<b>Email: </b> emsi.cecsa@gmail.com</p>
<p>
<b>Skype: </b> cemcapetownsa</p>

<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=22+Jan+Van+Riebeeck+St,+Wellington,+7654,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=22+Jan+Van+Riebeeck+St,+Wellington+7654,+South+Africa&amp;t=m&amp;z=14&amp;ll=-33.637757,19.003839&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=22+Jan+Van+Riebeeck+St,+Wellington,+7654,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=22+Jan+Van+Riebeeck+St,+Wellington+7654,+South+Africa&amp;t=m&amp;z=14&amp;ll=-33.637757,19.003839&amp;t=m&amp;z=14&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>

</p>
')	where church_id = (select church_id from church where church_path = 'wellington')
	and locale = 'en'
	and page_id = 'contactus';
	
update church_content set body = STRINGDECODE('<p>
<b>傳道: </b>吳偉南 傳道</p>
<p>
<b>地址: </b>22 Jan Van Riebeeck Street, Wellington, 7654, South Africa</p>
<p>
<b>電話: </b>27-21-686-2783 / 27-76-515-1934</p>
<p>
<b>傳真: </b>27-21-686-2783</p>
<p>
<b>電郵: </b> emsi.cecsa@gmail.com</p>
<p>
<b>Skype: </b> cemcapetownsa</p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=22+Jan+Van+Riebeeck+St,+Wellington,+7654,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=22+Jan+Van+Riebeeck+St,+Wellington+7654,+South+Africa&amp;t=m&amp;z=14&amp;ll=-33.637757,19.003839&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=22+Jan+Van+Riebeeck+St,+Wellington,+7654,+South+Africa&amp;ie=UTF8&amp;hq=&amp;hnear=22+Jan+Van+Riebeeck+St,+Wellington+7654,+South+Africa&amp;t=m&amp;z=14&amp;ll=-33.637757,19.003839&amp;t=m&amp;z=14&amp;iwloc=A&amp;\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'wellington')
	and locale = 'zh'
	and page_id = 'contactus';
	

-----------------------end africa - wellington


	
