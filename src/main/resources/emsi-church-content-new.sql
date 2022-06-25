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
update church set address='41-42 College Point Boulevard, Unit 2B, Flushing NY 11355, USA', latitude = 40.7550813, longitude = -73.8354977 where church_path = 'queens';
update church set address='23 South 2nd Avenue, Highland Park, NJ 08904, USA', latitude = 40.4976633, longitude = -74.4299261 where church_path = 'highlandpark';
update church set address='71 Old Road, Livingston, NJ 07039, USA', latitude = 40.794605, longitude = -74.348285 where church_path = 'livingston';
update church set address='725 Mountain Avenue, Berkeley Heights, NJ 07922, USA', latitude = 40.669049, longitude = -74.438916 where church_path = 'murrayhill';
update church set address='456 North Middletown Road, Pearl River, NY 10965, USA', latitude = 41.075231, longitude = -74.013037 where church_path = 'pearlriver';
update church set address='36 Alpine Road, Towaco, NJ 07082, USA', latitude = 40.922399, longitude = -74.322447 where church_path = 'towaco';
update church set address='6910b Miramar Road, San Diego, CA 92121, USA', latitude = 32.897902, longitude = -117.171575 where church_path = 'sandiego';
update church set address='539 North Sunset Avenue, Azusa, CA 91702, USA', latitude = 34.131395, longitude = -117.911747 where church_path = 'losangeles';
update church set address='400 Brussels Street, San Francisco, CA 94134, USA', latitude = 37.726874, longitude = -122.4056077 where church_path = 'sanfrancisco';
update church set address='191 E Gish Road, San Jose, CA 95112-4704, USA', latitude = 37.36407, longitude = -121.905978 where church_path = 'sanjose';
update church set address='6656 Park Riviera Way, Sacramento, CA 95831, USA', latitude = 38.506565, longitude = -121.550272 where church_path = 'sacramento';
update church set address='1107 Budapest, Monori u.2-4. E12-12 Hungary', latitude = 47.4818745, longitude = 19.122065  where church_path = 'budapest';
update church set address='Geograaf 13, Centerpoort-Nieuwgraaf, 6921 EW Duiven, The Netherlands', latitude = 51.9628456, longitude = 6.0057757 where church_path = 'amhem';
update church set address='Zandstraat 103, 3905 EB Veenendaal, The Netherlands', latitude = 52.0287846, longitude = 5.5515824 where church_path = 'veenendaal';
update church set address='De Hooidollen 8, 8918 HV Leeuwarden, The Netherlands', latitude = 53.2158923, longitude = 5.7914105 where church_path = 'leeuwarden';
update church set address='Korreweg 37, 9714 AB Groningen, The Netherlands', latitude = 53.2277242, longitude = 6.5633512 where church_path = 'groningen';
update church set address='Floraparkstraat 155, 7531 XG Enschede, The Netherlands', latitude = 52.2316531, longitude = 6.9163489 where church_path = 'enschede';
update church set address='Donarpad 9, 3072 Rotterdam, The Netherlands', latitude = 51.8981098, longitude = 4.4795884 where church_path = 'rotterdam';
update church set address='Isingstraat 165A, 2522 JS The Hague, The Netherlands', latitude = 52.0614258, longitude = 4.3235395 where church_path = 'denhaag';
update church set address='Marokkodreef 3, 3564 EV Utrecht, The Netherlands', latitude = 52.1215477, longitude = 5.1067358 where church_path = 'utrecht';
update church set address='Poeldijkstraat 8, 1059 VM Amsterdam. The Netherlands', latitude = 52.3505629, longitude = 4.841578 where church_path = 'amsterdam';
update church set address='Esdoornstraat 25, 8021 WB Zwolle, The Netherlands', latitude = 52.521532, longitude = 6.0963997 where church_path = 'zwolle';
update church set address='Goeseelsstraat 30, 4817 MV Breda, The Netherlands', latitude = 51.595722, longitude = 4.796017 where church_path = 'breda';
update church set address='Rozenstraat 2, 4613 AJ Bergen Op Zoom, The Netherlands', latitude = 51.502719, longitude = 4.282703  where church_path = 'bergenopzoom';
update church set address='Calle Carolinas, 10, 28039 Madrid, Spain', latitude = 40.4512378, longitude = -3.7048897 where church_path = 'madrid';
update church set address='Calle Brasil 73, Valencia 46018, Spain', latitude = 39.47280, longitude = -0.40080 where church_path = 'valencia';
update church set address='Avda. Europa 25, Local-9, 03503 Benidorm Alicante ', latitude = 38.542950192104264, longitude = -0.12028468755987111 where church_path = 'benidorm';
update church set address='C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain', latitude = 38.339698, longitude = -0.489878 where church_path = 'alicante';
update church set address='Av. Mesa y Lopez 15, Local 11, 35006 Las Palmas, de Gran Canaria, Spain', latitude = 28.134365, longitude = -15.432344 where church_path = 'canaria';
update church set address='Calle Alguacil, 8, 28038 Madrid, Spain', latitude = 40.3960213, longitude = -3.6630519 where church_path = 'southmadrid';
update church set address='Carrer dOlzinelles, 91, 08014 Barcelona, Spain', latitude = 41.3709592, longitude = 2.1374551 where church_path = 'barcelona';
update church set address='Calle Matarrosa 30, 28947 Fuenlabrada Madrid, Spain', latitude = 40.2646057, longitude = -3.7542281 where church_path = 'fuenlabrada';
update church set address='Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal', latitude = 38.711997, longitude = -8.980867 where church_path = 'portoalto';
update church set address='Rua Francisco Sanches 17, 1170-140 Lisbon, Portugal', latitude = 38.7306258, longitude = -9.1339151 where church_path = 'lisbon';
update church set address='Rua do Amial 698, 4200-053 Porto, Portugal', latitude = 41.1789973, longitude = -8.6160348 where church_path = 'porto';
update church set address='Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal', latitude = 41.334609, longitude = -8.722397 where church_path = 'mindelo';
update church set address='73 Avenue de Verdun, 94200 Ivry-sur-Seine, Paris, France', latitude = 48.8135227, longitude = 2.3702061 where church_path = 'paris';
update church set address='Franklin Rooseveltplein 12 Bus 10, 2060 Antwerpen, Belgium', latitude = 51.219508, longitude = 4.417894 where church_path = 'antwerpen';
update church set address='Rue du Fossé aux Loups 32, 1000 Brussels, Belgium', latitude = 50.8503111, longitude = 4.3546746 where church_path = 'brussels';
update church set address='Kobe-shi Chuo-ku Motomachi-dori 2-9-1 Shitsu [Room] 703, Japan', latitude = 34.688923, longitude = 135.186962 where church_path = 'kobe';
update church set address='Osaka-shi Abeno-ku Tennoji-machi Kita [North] 1 chome 2-2, Japan', latitude = 34.647590987085295, longitude = 135.52234132273662 where church_path = 'osaka';
--update church set address='Alley 25, Lane 113, Section 3, Mínshēng East Road, Songshan District, Taipei City, Taiwan 105', latitude = 25.0593059, longitude = 121.547255 where church_path = 'taipei';
--update church set address='71 Theal Street, Parow North 7500, South Africa', latitude = -33.883021, longitude = 18.583653where church_path = 'parownorth';
update church set address='94 Campground Road, Rondebosch, Cape Town 7700, South Africa', latitude = -33.965856, longitude = 18.474988 where church_path = 'capetown';

update church set address='Geograaf 13, Centerpoort-Nieuwgraaf, 6921 EW Duiven, The Netherlands', latitude = 51.96284559999999, longitude = 6.00577570 where church_path = 'arnhem';
update church set address='Via Stresa, 3, 20125 Milan, Italy', latitude = 45.49278710, longitude = 9.2040530 where church_path = 'milan';
--update church set address='Piazza San Domenico, 10, 59100 Prato Province of Prato, Italy', latitude = 43.88184649999999, longitude = 11.09375730 where church_path = 'prato';

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
<b>成立日期:</b> 2009年 8月 3日
</p>
<p>
<span class=\"label\">簡史: </span><br />

<img hspace="5" src="/emsi/images/Brooklyn Church sma
ll.JPG" align="left" height="255" width="360" />布路倫生命堂成立于2009年8月3日。生命堂總監督楊摩西牧師看見布路倫地區華人越來越多,因而開拓此間教會。
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
	<td>Sunday 11 am</td>
</tr>
<tr>
	<td>Adult Sunday School</td>
	<td>Sunday 10 am</td>
</tr>
<tr>
	<td>Children Sunday School</td>
	<td>Sunday 11am</td>
</tr>
<tr>
	<td>Choir Practice</td>
	<td>Sunday 1 pm</td>
</tr>
<tr>
	<td>Bible Class</td>
	<td>Tuesday 2 pm</td>
</tr>
<tr>
	<td>Prayer and Bible Study</td>
	<td>Wednesday 7:30 pm</td>
</tr>
<tr>
	<td>Youth Fellowship</td>
	<td>Friday 7:30 pm</td>
</tr>
<tr>
	<td>Adult Bible Study</td>
	<td>Friday 7:30 pm</td>
</tr>
<tr>
	<td>Men’s Fellowship</td>
	<td>Fourth Sunday 7:30 pm</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'en'
	and page_id = 'schedule';



update church_content set body = '<table border="1" cellpadding="5">
<tr>
	<td>主日崇拜</td>
	<td>週日上午 11 am</td>
</tr>
<tr>
	<td>成人主日學</td>
	<td>週日上午 10 am</td>
</tr>
<tr>
	<td>兒童主日學</td>
	<td>週日上午 11am</td>
</tr>
<tr>
	<td>詩歌練習</td>
	<td>週日上午 1 pm</td>
</tr>
<tr>
	<td>日間查經班</td>
	<td>週 二 下 午  2 pm</td>
</tr>
<tr>
	<td>禱告查經班</td>
	<td>週 三晚上 7:30 pm</td>
</tr>
<tr>
	<td>少年團契Youth Fellowship</td>
	<td>週 五晚上  7:30 pm</td>
</tr>
<tr>
	<td>成人查經班</td>
	<td>週 五晚上  7:30 pm</td>
</tr>
<tr>
	<td>弟兄團契 </td>
	<td>每月第四週日下午  7:30 pm</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'schedule';

------------end  brooklyn



---------------------update queens pages
---------------------updated address 2-8-17

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
			<td> 41-42 College Point Boulevard, Unit 2B, Flushing NY 11355, USA</td>
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
<img src="/emsi/images/church_Queenssmall7_26_18.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />
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
			<td> 41-42 College Point Boulevard, Unit 2B, Flushing NY 11355, USA</td>
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
<b>成立日期:</b> 1985年 5月 10日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/church_Queenssmall7_26_18.jpg" align=\"left\" height=\"255\" width=\"360\" />一九八四年秋，紐約市皇后區成立了一個閩南語查經班。當時每星期五晚上有一群弟兄姐妹聚集在一起唱詩、禱告、查經。隨著人數的增加，深深感到需要一位受過神學訓練的傳道人來帶領查經。
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
<b>Address: </b>41-42 College Point Boulevard, Unit 2B, Flushing NY 11355, USA
</p>
<p>
<b>Tel #: </b> (C) 917-361-6866
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.317445531817!2d-73.83570588504826!3d40.75504224291902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2600ce68c3171%3A0xe8d52cfce9506432!2s41-42%20College%20Point%20Blvd%20%232b%2C%20Flushing%2C%20NY%2011355!5e0!3m2!1sen!2sus!4v1638498772877!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'queens')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>41-42 College Point Boulevard, Unit 2B, Flushing NY 11355, USA
</p>
<p>
<b>電話:</b> (手機)917-361-6866
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.317445531817!2d-73.83570588504826!3d40.75504224291902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2600ce68c3171%3A0xe8d52cfce9506432!2s41-42%20College%20Point%20Blvd%20%232b%2C%20Flushing%2C%20NY%2011355!5e0!3m2!1sen!2sus!4v1638498772877!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
<b>成立日期:</b> 1984年
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
<b>成立日期:</b> 1978年
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

update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

	<tbody>
		<tr>
			<td>中文主日崇拜</br> Chinese Sunday Worship Service</td>
			<td>週 日 下 午 </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>英文主日崇拜 </br>English Sunday Worship Service</td>
			<td>週 日 下 午  </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 </br>Children Sunday School</td>
			<td>週 日 下 午  </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>餐館查經班 </br>Restaurant Bible Study</td>
			<td>週 一(每隔一週) </br>Every Other Monday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>禱告會 </br>Prayer Meeting</td>
			<td>週三 </br>Wednesday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>錫安團契 </br>Zion Fellowship</td>
			<td>每月第三週六  </br>Every Third Saturday</td>
			<td>7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

	<tbody>
		<tr>
			<td>中文主日崇拜 </br>Chinese Sunday Worship Service</td>
			<td>週 日 下 午 </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>英文主日崇拜 </br>English Sunday Worship Service</td>
			<td>週 日 下 午  </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 </br>Children Sunday School</td>
			<td>週 日 下 午  </br>Sunday</td>
			<td>1:30 pm</td>
		</tr>
		<tr>
			<td>餐館查經班 </br>Restaurant Bible Study</td>
			<td>週 一(每隔一週) </br>Every Other Monday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>禱告會 </br>Prayer Meeting</td>
			<td>週三 </br>Wednesday</td>
			<td>8:00 pm</td>
		</tr>
		<tr>
			<td>錫安團契 </br>Zion Fellowship</td>
			<td>每月第三週六     </br> Every Third Saturday</td>
			<td>7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'highlandpark')
	and locale = 'zh'
	and page_id = 'schedule';



------------- end Highland park





-----------update losangeles


update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

	<tbody>
		<tr>
			<td>印尼語 崇拜 Indonesian Worship Service</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語 崇拜 English Worship Service</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>主日學 Sunday School</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語, 印尼語 禱告會 English, Indonesian Prayer Meeting</td>
			<td>星期五 Friday</td>
			<td>07:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'losangeles')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

	<tbody>
		<tr>
			<td>印尼語 崇拜 Indonesian Worship Service</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語 崇拜 English Worship Service</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>主日學 Sunday School</td>
			<td>星期日  Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語, 印尼語 禱告會 English, Indonesian Prayer Meeting</td>
			<td>星期五 Friday</td>
			<td>07:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'losangeles')
	and locale = 'zh'
	and page_id = 'schedule';

------------ end losangeles







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
			<td class="label" rowspan="2" valign="top">Resident Evangelist:</td>
			<td>Ev. Martin Ding</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>73 Avenue de Verdun, 94200 Ivry-sur-Seine, Paris, France</td>
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
			<td>丁業新 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> 73 Avenue de Verdun, 94200 Ivry-sur-Seine, Paris, France</td>
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
<b>成立日期:</b> 2001年 10月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/parissmall_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />1994年，正當生命堂海外宣教福音事工在西班牙萌芽時，楊牧師就告訴同工們，想在法國巴黎建立生命堂。感謝主，這個美夢終於在1999年開始了行動！
</p>
<p>
1999年六月總會組了「西歐短宣」前往法國巴黎、德國、荷蘭、比利時、盧森堡，五個國家；2000年短宣隊，於三月27日至四月6日再度前往法國巴黎及比利時安慰城佈道。牧師、傳道人、教牧同工及弟兄姐妹一行三十七人於法國巴黎及比利時安慰城，各有兩場「音樂福音佈道會」；三月31日（週五）及四月1日（週六）連續兩天，於巴黎十三區中國城圓環邊舉辦福音晚會。此次佈道會奠定了生命堂在巴黎設立教會的根基。

</p>
<p>
2000年七月初，楊摩西牧師差派還在讀神學的陳茂祥夫婦於暑期間至巴黎實習，嘗試開拓建堂事工。七月9日週日，他們於華人最集中的巴黎十三區舉行了第一次主日崇拜，並成立「巴黎基督教（美國）生命堂」。暑假後，陳茂祥夫婦於九月初回美繼續神學課程的裝備，之後總會陸續差派吳錫安牧師、楊張秀蘭傳道、戚厚生牧師分別去牧養；其間，荷蘭陳啟猷牧師夫婦與一些生命堂的弟兄姐妹也經常前往協助。

</p>
<p>
吳錫安牧師於巴黎期間租用十三區一棟大樓的二十三層為聚會場所，人數漸漸增多，聚會已顯擁擠。此時有位在巴黎居住多年的敏芳姐妹幫忙找到一棟公寓的一樓，很適合當禮拜堂之用。原計畫購下此地，但當時的大樓住戶不同意，只好暫緩；後來有房屋仲介向吳牧師介紹了另一地方(即為後來的會堂)，價錢不但合宜，地點又方便，經總會楊牧師同意後，楊牧師親自前來巴黎辦理購堂手續。

</p>
<p>
2001年六月，楊摩西牧師差派陳茂祥夫婦傳道及葉永春傳道三位畢業生開始牧養；同年十月美國總會憑信心在巴黎購得的會所裝修完畢，正式啟用。總會又再一次組成短宣隊，一行三十多人前往巴黎；2001年十月14日，主日午時「巴黎基督教（美國）生命堂」獻堂。短短兩年的時間，巴黎生命堂從開荒、植堂、購堂、裝修到獻堂，處處經歷主浩大的恩典。

</p>

</div>
')	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Mix Chan
</p>
<p>
<b>Resident Evangelist: </b>Ev. Martin Ding
</p>
<p>
<b>Address: </b>73 Avenue de Verdun, 94200 Ivry-sur-Seine, Paris, France
</p>
<p>
<b>Tel #: </b>33-1-5846-0892
</p>
<p>
<b>Fax #: </b>33-9-5455-0056
</p>
<p>
<b>Email: </b>emsifrance@hotmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2627.343617452853!2d2.3681368156727958!3d48.8135048792831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e673d372a4f2b5%3A0xa61dfeb6f8a74e1e!2s73+Avenue+de+Verdun%2C+94200+Ivry-sur-Seine%2C+France!5e0!3m2!1sen!2sus!4v1522541468365" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師: </b>陳茂祥  牧師
</p>
<p>
<b>駐堂傳道: </b>丁業新  傳道
</p>
<p>
<b>地址: </b>73 Avenue de Verdun, 94200 Ivry-sur-Seine, Paris, France
</p>
<p>
<b>電話: </b>33-1-5846-0892
</p>
<p>
<b>傳真: </b>33-9-5455-0056
</p>
<p>
<b>電郵: </b>emsifrance@hotmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2627.343617452853!2d2.3681368156727958!3d48.8135048792831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e673d372a4f2b5%3A0xa61dfeb6f8a74e1e!2s73+Avenue+de+Verdun%2C+94200+Ivry-sur-Seine%2C+France!5e0!3m2!1sen!2sus!4v1522541468365" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>

')	where church_id = (select church_id from church where church_path = 'paris')
	and locale = 'zh'
	and page_id = 'contactus';



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
			<td class="label">Evangelist:</td>
			<td>Ev. Jonathan Poon, 973-335-7337 ext. 203, (C) 973-979-1950</td>
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
			<td><a href="mailto:cec248@emsionline.org">cec248@emsionline.org</a></td>
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
			<td class="label">傳道:</td>
			<td>潘逸豪 傳道, 973-335-7337 ext. 203, (手機) 973-979-1950</td>
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
			<td><a href="mailto:cec248@emsionline.org">cec248@emsionline.org</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 1968年
</p>

<p><span class="label">簡史: </span><br />
<img align="left" hspace="5" src="/emsi/images/chinatown2012.jpg" />一九六八年，楊牧師在中國城勿街十號（10 Mott St.）租下二樓，成立「生命團契」，這是楊摩西牧師成立的第一間教會，後於一九七○年更名為中國城生命堂。楊摩西牧師常常提起早期大學查經班的八位成員：周靄楣、許娜娜、李珍瑜、曾文鳳、曾文愛、王慕清、林瑞桃及林團鐘長老一家。這八員大將可說是「生命家庭」的開始。後來查經班加入了幾位新人，他們都是研究所的學生：周應彪、吳翩翩、許偉國、郭靄玉、林則寶、陳達堂、潘冀、林國仁、潘重光、向傳仁等。後來林則寶和林珍瑜結為夫婦，其他的弟兄姐妹也分別嫁娶，「生命之家」增加了媳婦和女婿，儼然成為一個大家庭。連續兩次搬遷之後，終於在一九七四年憑信心買下位於中央街的一棟三層樓房（253 Centre St.）。如今，除了林長老回天家，一些弟兄姐妹搬離此地之外，其他的成員和家人都忠心留在東部各生命堂，是楊牧師得力的同工。</p>

<p>長久以來，中國城生命堂的會友絕大多數都是屬於所謂的「ABC」，也就是在美國出生成長的華人。除了少數略懂粵語外，都只能講英語。以往，他們多在美國國慶日時舉辦夏令會，藉此機會傳福音。而那些在夏令會中得救、受洗、加入教會年輕人，也使教會充滿了活力和朝氣。他們對年輕人很有負擔，因此除了主日崇拜、主日學、周五的查經班之外，每周六上午十時至下午四時，教會的設施也開放給附近的年輕人使用，讓他們能夠進來打乒乓、玩電腦遊戲、讀書、做功課，會友們輪流在那兒輔導他們的課業。近幾年，除了傳福音給年輕人，他們也有負擔要傳福音給自己年長的父母，藉著餐會，在溫馨又輕鬆的氣氛中，將福音的好消息帶給只會說家鄉話的父母。</p>

<p>中國城生命堂是楊牧師設立的第一間教會，所以他對這有很特殊的感情，就像是家中的第一個孩子一樣，得到父親許多的關愛。生性幽默、愛開玩笑的楊牧師說：當年挪亞一家八口出方舟，開始了一個新的世界，早期大專生查經班的八位元老也協助推展整個「生命」事工。「八」是個新生的數字，所以他定八月八日為慶祝「生命」事工開展的感恩紀念日。</p>
</div>
'
where church_id = (select church_id from church where church_path = 'chinatown')
and locale = 'zh'
and page_id = 'intro';



update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

Sunday Worship 10:30 PM, 1:30 PM and 6:30 PM<br>
The Chinese Service at 10:30 AM is conducted mainly in Cantonese with Mandarin translation.<br>
The English service at 1:30 PM is solely conducted in English.<br>
The Fuzhou/Mandarin service at 6:30 PM is conducted mainly in Mandarin.<br><br>
	<tbody>
		<tr>
			<td>粵語/國語堂崇拜 Cantonese/Mandarin Worship Service</td>
			<td>週日上午 Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語堂崇拜 English Worship Service</td>
			<td>週日下午 Sunday</td>
			<td>01:30 pm</td>
		</tr>
		<tr>
			<td>福州語/國語堂崇拜 FuZhou/Mandarin Worship Service</td>
			<td>週日晚上 Sunday</td>
			<td>06:30 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 Children Sunday School</td>
			<td>週日下午 Sunday</td>
			<td>01:00 pm</td>
		</tr>
		<tr >
			<td>詩班 Choir</td>
			<td>週日上午 Sunday</td>
			<td>09:30 am</td>
		</tr>
		<tr>
			<td>兒童節目 Children’s Program</td>
			<td>週日上午 Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>兒童詩班 Children’s Choir</td>
			<td>週日上午 Sunday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>青少年團契 Youth Fellowship</td>
			<td>週日上午 Sunday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>粵語/國語查經班 Cantonese/Mandarin Bible Study</td>
			<td>週日上午 Sunday</td>
			<td>11:45 am</td>
		</tr>
		<tr>
			<td>兒童團契 Children Fellowship</td>
			<td>週日中午  Sunday</td>
			<td>12:30 pm</td>
		</tr>
		<tr>
			<td>中英文查經班 Mandarin/English Bible Study　 </td>
			<td>每月第三個週日下午 Every 3rd Sunday</td>
			<td>01:00 pm</td>
		</tr>
		<tr>
			<td>姐妹團契 (英文) Women&#39;s Fellowship (English)</td>
			<td>每月第二個週日下午 Every 2nd Sunday </td>
			<td>02:45 pm</td>
		</tr>
		<tr>
			<td>夫婦團契 (英文) Couple’s Fellowship (English)</td>
			<td>每月第四個週日下午 Every 4th Sunday</td>
			<td>03:00 pm</td>
		</tr>
		<tr>
			<td>粵語生命團契 Cantonese Gospel Fellowship　 </td>
			<td>週三上午 Wednesday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>國語查經禱告會 Mandarin Prayer Meeting & Bible Study</td>
			<td>週五上午 Friday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>紐約市福音團契 New York City Evangelical Fellowship</td>
			<td>週五晚上 Friday</td>
			<td>07:00 pm</td>
		</tr>
		<tr>
			<td>國語查經班 Mandarin Bible Study</td>
			<td>週六晚上 Saturday</td>
			<td>06:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'chinatown')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5" style= "font-size:10pt;">

	<tbody>
		<tr>
			<td>粵語/國語堂崇拜 Cantonese/Mandarin Worship Service</td>
			<td>週日上午 Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>英語堂崇拜 English Worship Service</td>
			<td>週日下午 Sunday</td>
			<td>01:30 pm</td>
		</tr>
		<tr>
			<td>福州語/國語堂崇拜 FuZhou/Mandarin Worship Service</td>
			<td>週日晚上 Sunday</td>
			<td>06:30 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 Children Sunday School</td>
			<td>週日下午 Sunday</td>
			<td>01:00 pm</td>
		</tr>
		<tr >
			<td>詩班 Choir</td>
			<td>週日上午 Sunday</td>
			<td>09:30 am</td>
		</tr>
		<tr>
			<td>兒童節目 Children’s Program</td>
			<td>週日上午 Sunday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>兒童詩班 Children’s Choir</td>
			<td>週日上午 Sunday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>青少年團契 Youth Fellowship</td>
			<td>週日上午 Sunday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>粵語/國語查經班 Cantonese/Mandarin Bible Study</td>
			<td>週日上午 Sunday</td>
			<td>11:45 am</td>
		</tr>
		<tr>
			<td>兒童團契 Children Fellowship</td>
			<td>週日中午  Sunday</td>
			<td>12:30 pm</td>
		</tr>
		<tr>
			<td>中英文查經班 Mandarin/English Bible Study　 </td>
			<td>每月第三個週日下午 Every 3rd Sunday</td>
			<td>01:00 pm</td>
		</tr>
		<tr>
			<td>姐妹團契 (英文) Women&#39;s Fellowship (English)</td>
			<td>每月第二個週日下午 Every 2nd Sunday </td>
			<td>02:45 pm</td>
		</tr>
		<tr>
			<td>夫婦團契 (英文) Couple’s Fellowship (English)</td>
			<td>每月第四個週日下午 Every 4th Sunday</td>
			<td>03:00 pm</td>
		</tr>
		<tr>
			<td>粵語生命團契 Cantonese Gospel Fellowship　 </td>
			<td>週三上午 Wednesday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>國語查經禱告會 Mandarin Prayer Meeting & Bible Study</td>
			<td>週五上午 Friday</td>
			<td>11:00 am</td>
		</tr>
		<tr>
			<td>紐約市福音團契 New York City Evangelical Fellowship</td>
			<td>週五晚上 Friday</td>
			<td>07:00 pm</td>
		</tr>
		<tr>
			<td>國語查經班 Mandarin Bible Study</td>
			<td>週六晚上 Saturday</td>
			<td>06:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'chinatown')
	and locale = 'zh'
	and page_id = 'schedule';


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
<td>Calle Matarrosa 30, 28947 Fuenlabrada Madrid, Spain</td>
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
<td><a href="mailto:emsifuencheng@gmail.com">emsifuencheng@gmail.com</a></td>
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
<td> Calle Matarrosa 30, 28947 Fuenlabrada Madrid, Spain </td>
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
<td><a href="mailto:emsifuencheng@gmail.com">emsifuencheng@gmail.com</a></td>
</tr>
</tbody>
</table>
</div>
</div>
<p><hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<b>成立日期:</b> 2008年 1月 6日
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
<b>Address: </b>Calle Matarrosa 30, 28947 Fuenlabrada Madrid, Spain
</p>
<p>
<b>Tel #: </b>34-910-160-197
</p>
<p>
<b>Fax #: </b>34-91-459-5844
</p>
<p>
<b>Email: </b>emsifuencheng@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3044.5016362406564!2d-3.7553224846087114!3d40.264605679383074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd418aa348f66465%3A0xea8186b3640cf22a!2sCalle+Matarrosa%2C+30%2C+28947+Fuenlabrada%2C+Madrid%2C+Spain!5e0!3m2!1sen!2sus!4v1454817807190" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe></p>
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
<b>地址: </b>Calle Matarrosa 30, 28947 Fuenlabrada Madrid, Spain
</p>
<p>
<b>電話: </b>34-910-160-197
</p>
<p>
<b>傳真: </b>34-91-459-5844
</p>
<p>
<b>電郵: </b>emsifuencheng@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3044.5016362406564!2d-3.7553224846087114!3d40.264605679383074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd418aa348f66465%3A0xea8186b3640cf22a!2sCalle+Matarrosa%2C+30%2C+28947+Fuenlabrada%2C+Madrid%2C+Spain!5e0!3m2!1sen!2sus!4v1454817807190" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'fuenlabrada')
	and locale = 'zh'
	and page_id = 'contactus';

insert into church_content (church_id, locale, page_id, title, body) values (34, 'en', 'schedule', 'CEC in Fuenlabrada - Church Services Schedule',
'<table border="1" cellpadding="5">
<tr>
	<td>Worship Service</td>
	<td>Sunday 7:15 - 8:30 pm</td>
</tr>
<tr>
	<td>Bible Study</td>
	<td>Tuesday 6:00 - 7:00 pm</td>
</tr>
</table>');


insert into church_content (church_id, locale, page_id, title, body) values (34, 'zh', 'schedule','福恩城基督教生命堂 - 聚會日程',
'<table border="1" cellpadding="5">
<tr>
	<td>主日崇拜</td>
	<td>週日晚上 7:15 - 8:30 pm</td>
</tr>
<tr>
	<td>查經</td>
	<td>週二晚上 6:00 - 7:00 pm</td>
</tr>
</table>');



--------------  ends Fuenlabrada -------------

update church_detail
set value = '三籓市基督教生命堂'
where church_id = 11
and locale = 'zh'
and key = 'menu_name';


------------ starts madrid
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
			<td>Rev. Yueh-Yun Li, 34-629-035-717</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1" cellspacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>C/Las Carolinas 10, 28039 Madrid, Spain</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-91-4595775, 34-91-4507306</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:iglesiamadrid@telefonica.net">iglesiamadrid@telefonica.net</a></td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>yueh2004</td>
		</tr>
	</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>April 7, 1996</p>

<div style="float: left">&nbsp;</div>

<p><img align="left" alt="CEC South Madrid" height="258" hspace="5" src="/emsiweb/images/files/madrid/madrid.jpg" title="Madrid" width="344" />
Yueh Yun Li was sent to Spain to start the CEC Church by the end of 1995. On April 7, 1996, the CEC in Madrid was established. The first meeting was at the Mission headquarter, after a few weeks, we rented a Spanish church. Half a year later the place for worship was not big enough so we have moved to a new site that November. The church started with 8 people and has now grown to 200 people today. There were 243 congregants who were baptized.
</p>

<p>The average Sunday Service attendance is between 130-140 people. Aside from the Sunday Service, we have 4 Bible Study groups, prayer meeting, and youth group. The evangelists and staff members are: Yueh Yun Li, Jian Wei Ye (Assistant) and Yueh Kuei Lin Lee (Administration).
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'madrid')
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
<p>
<b>成立日期:</b> 1996年 4月 7日
</p>

<p><span class="label">簡史: </span><br />
<img align="left" height="255" hspace="5" src="/emsiweb/images/files/madrid/madrid.jpg" width="360" />一九九五年十一月一日李月雲傳道再度奉派抵西，正式展開本會在歐洲的事工。進駐空蕩無物的佈道會後，即動手裝修、添購傢俱和設備，並分別海陸空運 聖經、聖詩、歌本和圖書。一個月後「福音佈道會」對外開放，藉著查經班、神學課、音樂班的學習、個別關懷輔導和探訪，帶領慕道友、造就信徒、培訓同工，使 建立教會的基礎逐漸成熟。一九九六年四月七日本會西班牙第一間教會「馬德里基督教生命堂」成立，開始主日崇拜。&nbsp;</p>
二00一年五月九日購堂，成為西班牙佈道會辦公和宣教中心。新堂地址: C/CAROLINAS,10(在地鐵1線Alvarado站)佔地733㎡

<p>十二月二日在新堂首次崇拜, 當天有成人182人、兒童18人出席, 25人受洗。</p>

<p>二00<span style="font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體;">二</span>年三月十日舉行馬德里生命堂六週年慶暨獻堂感恩崇拜, 共有350多人參加, 33人受洗</p>
</div>
'	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'zh'
	and page_id = 'intro';




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



update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Yueh-Yun Li, 34-629-035-717
</p>
<p>
<b>Address: </b>C/Las Carolinas 10, 28039 Madrid, Spain
</p>
<p>
<b>Tel #: </b>34-91-4595775, 34-91-4507306
</p>
<p>
<b>Email: </b>iglesiamadrid@telefonica.net
</p>
<p>
<b>Skype: </b>yueh2004
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3036.081297316464!2d-3.7071105846030368!3d40.451337579361116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd422855055d5179%3A0xc2ed99e53f130fb7!2sCalle+Carolinas%2C+10%2C+28039+Madrid%2C+Spain!5e0!3m2!1sen!2sus!4v1521661158644" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師: </b>李月雲  牧師, 34-629-035-717
</p>
<p>
<b>地址: </b>C/Las Carolinas 10, 28039 Madrid, Spain
</p>
<p>
<b>電話: </b>34-91-4595775, 34-91-4507306
</p>
<p>
<b>電郵: </b>iglesiamadrid@telefonica.net
</p>
<p>
<b>Skype: </b>yueh2004
</p>
<p>
路線: 地鐵1線 Alvarado站, Impares出口, 第二條街 (La Caixa銀行)左轉即達 </br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3036.081297316464!2d-3.7071105846030368!3d40.451337579361116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd422855055d5179%3A0xc2ed99e53f130fb7!2sCalle+Carolinas%2C+10%2C+28039+Madrid%2C+Spain!5e0!3m2!1sen!2sus!4v1521661158644" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>

')	where church_id = (select church_id from church where church_path = 'madrid')
	and locale = 'zh'
	and page_id = 'contactus';


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
<p>
<b>成立日期:</b> 2004年 2月 28日
</p>

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
			<td class="label">傳道:</td>
			<td>王艷華 傳道, +34-69-827-2704</td>
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
			<td>+34-93-141-8700</td>
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
<p>
<b>成立日期:</b> 2005年 2月 20日
</p>

<p><span class="label">簡史: </span><br />
<img align="left" height="255" hspace="5" src="/emsiweb/images/files/barcelona.jpg" width="360" />2005年初北美總會監督楊摩西牧師差派王豔華傳道前往西班牙巴賽隆納開拓教會。同年2月19日、20日，美國短宣隊抵達巴賽隆納舉辦音樂佈道會，楊摩西牧師主講&ldquo;人生的福&rdquo;，並宣佈，2月20日為教會正式成立日期。最初佈道會設在巴賽隆納C/Mallorca,20-22.1&ordm;4&ordf;&nbsp; Barcelona，即每週查經班、禱告會之地，而每週主日崇拜則租用西班牙之教會。由於佈道會房東欠款，銀行準備拍賣其房，合同期滿一年後，佈道會被迫搬出。為此查經班、禱告會曾經過一段流浪時期。在這期間，先後在陳文芳姐妹的洗衣店以及遠東辦公室堅持每週的查經班和禱告會。由於教會人員不斷增長，2006年8月6日租用 C/Rosselló 427 Bis, Local 2；2011年10月購堂，遷至C/ d,Olzinelles 91, 08014, Barcelona（地铁L5、L1plaza sants站）。
目前除了每週主日崇拜聚會外，還有查經班、禱告會、弟兄姐妹團契等。聚會時間如下：<br/>
主日崇拜： 星期日下午5:30—6:45 P.M.<br/>
查經禱告會: 星期四下午5:30—7:00 P.M.<br/>
團契活动： 星期六下午 5:30—7:00P.M.
</p>
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
			<td>Ev. Esther Wang, +34-69-827-2704</td>
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
			<td>+34-93-141-8700</td>
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

<p>Our weekly meetings include the Sunday Worship service, Bible classes and prayer meetings, and Fellowship. Our schedule is as follows:</p>

<p>Worship Service: Sunday 5:30&mdash;6:45 P.M.<br />
Bible Study: Thursday 5:30&mdash;7:00 P.M.<br />
Fellowship: Saturday 5:30&mdash;7:00 P.M.</p>

<p>Direction --<br />
Subway: #2 line, # 5 line getting off at Sagrada Familia station, #2 line: exit at Proven&ccedil;a, make the first left on the Calle de la Marina Street; #5 lines :exit at Sardenya, make the first right on Calle de Sardenya Street.</p>
</div>
'	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'en'
	and page_id = 'intro';

update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>5:30 pm</td>
		</tr>
		<tr>
			<td>Fellowship </td>
			<td>Sunday</td>
			<td>After Sunday Service</td>
		</tr>
		<tr>
			<td>Bible Study 1</td>
			<td>Tuesday</td>
			<td>10:00 - 10:30 pm</td>
		</tr>
		<tr>
			<td>Bible Study 1</td>
			<td>Thursday</td>
			<td>3:30 - 4:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日下午</td>
			<td>5:30 pm</td>
		</tr>
		<tr>
			<td>信息回應 </td>
			<td>星期日下午</td>
			<td>崇拜後</td>
		</tr>
		<tr>
			<td>查經1</td>
			<td>星期二晚上</td>
			<td>10:00  - 10:30 pm</td>
		</tr>
		<tr>
			<td>查經1</td>
			<td>星期四下午</td>
			<td>3:30 - 4:00 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'barcelona')
	and locale = 'zh'
	and page_id = 'schedule';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Esther Wang, (C)+34-69-827-2704
</p>
<p>
<b>Address: </b>Calle D&rsquo;Olzinelles 91 ,08014 ,Barcelona, Spain
</p>
<p>
<b>Tel #: </b>+34-93-141-8700
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
<b>傳道: </b>王艷華傳道, (手機)+34-69-827-2704
</p>
<p>
<b>地址: </b>Calle D&rsquo;Olzinelles 91 ,08014 ,Barcelona, Spain<br>
地鐵: 5 線、1 線 Plaza de Sants 站</br>
公車: 91 路、V5
</p>
<p>
<b>電話: </b>+34-93-141-8700
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

-----------starts San Diego

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
			<td>Rev. Stephen Hosea</td>
		</tr>
		<tr>
			<td class="label">Assistant Pastor:</td>
			<td>Rev. Kalvin Budiman</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> 6910b Miramar Road, San Diego, CA 92121, USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>(626) 272-5353</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><br />
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
<span class="label">Established Date: </span>August 2, 2009
</p>
<p>
IEC San Diego was started with a prayer meeting and Bible study on April 27, 2008 at one of member house. In the beginning we held this fellowship with a few people once a month. Until September 2008, we increased our fellowship to twice a month. Due to a need of spiritual growth and a need of a regular place for holding our regular fellowship, in March 22, 2009, we rented the chapel of First United Methodist Church in San Diego. Since then we have continued our fellowship weekly.

</p>
<p>
While we were having our fellowship, we continued to seek the guidance of God through our prayers for our future ministry in San Diego. From our observation and research, we found that there were many Indonesians residing in San Diego and around it. They need the gospel of Christ and spiritual guidance. Our vision and burden increased after we had seen the great need in this city. Therefore by the grace of God and the support of Christian Evangelical Mission in America, we had established the Indonesian Evangelical Church on 2 August 2009 with an opening service led by our Bishop, Rev. Moses Yang.
</p>
<p>
We thank God for his guidance and blessing upon this church that our church can continually grow in quantity and quality. In these past three years, God had added some new souls in this church and had raised up more people to serve Him.
</p>
<p>
Our vision and mission of our church is to “Reach out our community to reach the world”. We pray that God will continue to use our church as channel of blessing to reach out the Indonesian community as well as other community in the future in San Diego area.
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'sandiego')
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
			<td>何兆威 牧師</td>
		</tr>
		<tr>
			<td class=\"label\">牧師 :</td>
			<td>陳善謙 牧師  </td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>6910b Miramar Road, San Diego, CA 92121, USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>(626) 272-5353</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2009年 8月2日
</p>
<p>
<span class=\"label\">簡史: </span><br />
</p>
<p>
感謝上帝的恩典與帶領，何兆威牧師與九位弟兄姐妹能於2008年四月27日在聖地牙哥開始查經班。起初是每一個月一次在信徒的家輪流舉行，直到2008年十一月，因信徒覺得靈性的需要，查經班就增加到每一個月兩次舉行；之後看見信徒們渴慕的心，同時為了團契的發展，2009年三月22日，我們租用聖地牙哥衛理工會的副堂開始每週一次的團契。
</p>
<p>
在保持每周團契的這一段期間，我們繼續尋求上帝的引導。主給我們看見和領悟到有許多印尼僑胞定居在聖地亞哥需要福音和靈性的培育。因此得到國際福音佈道會神學院的協助和支持，聖地亞哥生命堂於2009年八月2日正式成立，皆時承蒙總監督楊摩西牧師親臨證道開始第一次崇拜。
</p>
<p>
如今本堂除了每周日崇拜，還有兒童主日學，並且週四晚上查經禱告會；此外每月還有一個周六輪流在信徒家舉行家庭團契和郊外活動，藉此可以接觸到新來的朋友，使他們可以認識主。
</p>
<p>
本堂前面事奉的道路甚是漫長和遙遠，需要同工們多方靠主，努力策劃和發展，讓更多的靈魂信主得救，信徒的靈性可以成長，來完成主的託負和使命，榮耀歸主名。

</p>
</div>
')	where church_id = (select church_id from church where church_path = 'sandiego')
	and locale = 'zh'
	and page_id = 'intro';




INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(9, 'schedule', 'en', 'IEC in San Diego  - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship Service (Indonesian)</td>
			<td>Sunday</td>
			<td>9:30 am</td>
		</tr>
		<tr>
			<td>Sunday School (English)</td>
			<td>Sunday</td>
			<td>9:30 am</td>
		</tr>
		<tr>
			<td>Prayer Meeting (Indonesian) </td>
			<td>1st and 3rd Thursday of the month  </td>
			<td>7:00 pm</td>
		</tr>
		<tr>
			<td>Couples Fellowship (Indonesian) </td>
			<td>2nd Friday of the month </td>
			<td>6:30 pm</td>
		</tr>
		<tr>
			<td>Youth Fellowship (English) </td>
			<td>4th Friday of the month </td>
			<td>6:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(9, 'schedule', 'zh', '聖地亞哥基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">

	<tbody>
		<tr>
			<td>主日崇拜(印尼語、英語)</td>
			<td>星期日上午</td>
			<td>9:30 am</td>
		</tr>
		<tr>
			<td>主日學 (英語)</td>
			<td>星期日上午</td>
			<td>9:30 am</td>
		</tr>
		<tr>
			<td>禱 告 會 (印尼語) </td>
			<td>每月第一、三周周 四 晚上 </td>
			<td>7:00 pm</td>
		</tr>
		<tr>
			<td>夫妻團契(印尼語) </td>
			<td>每月第二周周 五 晚上  </td>
			<td>6:30 pm</td>
		</tr>
		<tr>
			<td>青少年團契(英語) </td>
			<td>每月第四周周 五 晚上 </td>
			<td>6:30 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
');


update church_content set body = STRINGDECODE('<p>
<p>
<b>Senior Pastor: </b>Rev. Stephen Hosea
</p>
<p>
<b>Assistant Pastor: </b>Rev. Kalvin Budiman
</p>
<p>
<b>Address: </b>6910b Miramar Rd., San Diego, CA 92121 USA
</p>
<p>
<b>Tel #: </b>(626) 272-5353
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26806.023104992564!2d-117.16730300000002!3d32.878257!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dbff536b06a7bb%3A0x4623ff7342bbd6e4!2s6910b%20Miramar%20Rd%2C%20San%20Diego%2C%20CA%2092121!5e0!3m2!1sen!2sus!4v1592272156883!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</p>
</p>
')	where church_id = (select church_id from church where church_path = 'sandiego')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 何兆威 牧師
</p>
<p>
<b>牧師:</b> 陳善謙 牧師
</p>
<p>
<b>地址: </b>6910b Miramar Rd., San Diego, CA 92121 USA
</p>
<p>
<b>電話:</b> (626) 272-5353
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26806.023104992564!2d-117.16730300000002!3d32.878257!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dbff536b06a7bb%3A0x4623ff7342bbd6e4!2s6910b%20Miramar%20Rd%2C%20San%20Diego%2C%20CA%2092121!5e0!3m2!1sen!2sus!4v1592272156883!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>
</p>
')	where church_id = (select church_id from church where church_path = 'sandiego')
	and locale = 'zh'
	and page_id = 'contactus';



-----------end San Diego

-----------starts Sacramento
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(13, 'schedule', 'en', 'IEC in Sacramento  - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship Service (Indonesian)</td>
			<td>Sunday</td>
			<td>4:00 pm</td>
		</tr>
		<tr>
			<td>Sunday School (English)</td>
			<td>Sunday</td>
			<td>4:00 pm</td>
		</tr>
		<tr>
			<td>Youth Fellowship (English) </td>
			<td>Sunday</td>
			<td>4:00 pm</d>
		</tr>
		<tr>
			<td>Prayer Meeting & Bible Study(Indonesian) </td>
			<td>Saturday</td>
			<td>7:00 pm</td>
		</tr>
		<tr>
			<td>Men & Women Fellowship (Indonesian) </td>
			<td>4th Friday of the month </td>
			<td>7:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(13, 'schedule', 'zh', '沙加緬度基督教生命堂 - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">

	<tbody>
		<tr>
			<td>主日崇拜(印尼語)</td>
			<td>周 日下午</td>
			<td>4:00 pm</td>
		</tr>
		<tr>
			<td>主日學 (英語)</td>
			<td>周 日下午</td>
			<td>4:00 pm</td>
		</tr>
		<tr>
			<td>青少年團契(英語) </td>
			<td>周 日下午 </td>
			<td>4:00 pm</td>
		</tr>
		<tr>
			<td>查經 禱 告 會 (印尼語)  </td>
			<td>周 六 晚上  </td>
			<td>7:00 pm</td>
		</tr>
		<tr>
			<td>成人團契(印尼語)  </td>
			<td>每月第四周 周五 晚上   </td>
			<td>7:00 pm</td>
		</tr>


	</tbody>
</table>

<p>&nbsp;</p>
');



-----------end Sacramento




------------starts san francisco
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
			<td>Rev. Stephen Hosea, (415)309-5661</td>
		</tr>
		<tr>
			<td class="label">Assistant Pastor:</td>
			<td>Rev. Tony Ong Teck Meng, (415)935-9877</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>400 Brussels St., San Francisco, CA 94134 USA</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>(415)656-0886</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:iec.sfo@gmail.com">iec.sfo@gmail.com</a><br />
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
<span class="label">Established Date: April 21, 1985</span>
</p>
<p>
<img src="/emsi/images/church_sanfrancisco.jpg\" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />
Rev. Stephen Hosea came from Los Angeles to establish a church in San Francisco, California on January 15, 1985. After a few months of praying and hard work, the first Sunday Worship was held on April 21, 1985, and I.E.C. was officially established. After that, the church continued to grow. Even though in the past years, many members were lost due to relocation or returning home after graduation, yet God continued to add newly saved believers to our church. The attendance has grown from a few to over a hundred. The current ministries consist of Bible Study, prayer meeting, Sunday Worship, Children Sunday School, Junior Group, Youth Groups and Adult Fellowship.
</p>
<p>
When the church was first established in San Francisco, we rented the meeting place from Chinese Christian Mission. In November, we moved and began to rent from a Presbyterian Church that had the Ancillary Worship Hall and meeting rooms for use. Since we didn’t have our own place, we were limited in expanding God’s ministry. When the brothers and sisters saw the need of a church building, we prayed, waited upon God’s grace and fervently planned. Our hope was that our plans would be quickly fulfilled so that we could own a church building to expand God’s ministry. Thanks be to God, that in His timing, He heard our plea and provided a church building for us during Good Friday, April 1, 1994. Due to the conditions of the church, much renovation work needed to be done. Eventually, by September, the renovation work was completed and our building dedication was held in November 1996.
</p>
<p>
Ever since we had our own church building, we have been expanding the church’s ministries. In the beginning of 1997, we started a Chinese Language School, with the purpose of spreading the Gospel to the neighborhood children. In June, we held Chinese Worship Service, so that we could spread the Gospel and build up the believers spiritually. And we changed the church’s name to Christian Evangelical Church in San Francisco.
</p>
<p>
We have expanded our church ministries to mission, discipleship, evangelism, caring, and Laymen’s Institute. The church not only has Indonesian Service, but also Chinese Service and English Service have started. There are so many ministries that we need to expand; the harvest is waiting for us to gather. May God grant us wisdom and strength to do these ministries.
</p>
<p>
Thank God that He began His good work in this church and we believe He will finish what He has started until the coming of the Lord.
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'sanfrancisco')
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
			<td>何兆威 牧師, (415)309-5661</td>
		</tr>
		<tr>
			<td class=\"label\">助理牧師:</td>
			<td>王德明 牧師, (415)935-9877</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>400 Brussels St., San Francisco, CA 94134 USA</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> (415)656-0886 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: iec.sfo@gmail.com"> iec.sfo@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1985年 4月 21日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/church_sanfrancisco.jpg\" align=\"left\" height=\"255\" width=\"360\" /></p>
一九八五年正月十五日，何兆威牧師從洛杉磯前往舊金山開荒植堂。經過幾個月的禱告和努力，於四月廿一日舉行首次主日崇拜，正式成立「舊金山基督教生命堂」。後來，教會事工得以漸漸擴展。雖然近幾年來會友或因遷居，或因畢業返鄉等等，多有流失，但是上帝卻不斷地加添得救人數，教會人數也因而從幾位增長到上百名。現有的聖工除了查經禱告會、主日崇拜之外，又有兒童主日學和成年團契。一九九三年又在加州首府沙加緬度建立新堂。
</p>
<p>舊金山基督教生命堂成立之初，是租用「中信」的房子作為聚會之用。同年十一月，又改至美國長老會的副堂崇拜，租用其客廳作查經禱告會。由於沒有自己的禮堂，因而聖工發展時常受到限制。弟兄姐妹看見建堂的需要，就同心禱告，等候神施恩，又積極籌劃建堂，期許建堂計劃能夠早日實現，使大家有一個擴展聖工的基地。感謝神，祂也按著祂的時間垂聽了我們的呼求，於一九九四年的受難日（四月一日），為我們預備了一座禮拜堂。但因這座禮拜堂非常破舊，需要重新翻修，最後，我們終於在一九九六年九月，完成建堂工程，並於同年十一月舉行獻堂典禮。
</p>
<p>自從我們有了自己的禮拜堂，本教會的聖工就逐漸拓展，一九九七年初我們開辦中文學校，目的是要將福音傳給周圍鄰居的小孩。同年六月，我們也開始中文崇拜，目的也是為了傳福音、造就信徒，使他們靈性成長。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'sanfrancisco')
	and locale = 'zh'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<p>
<p>
<b>Senior Pastor: </b>Rev. Stephen Hosea, (415)309-5661
</p>
<p>
<b>Assistant Pastor: </b>Rev. Tony Ong Teck Meng, (415)935-9877
</p>
<p>
<b>Address: </b>400 Brussels St. San Francisco, CA 94134 USA
</p>
<p>
<b>Tel #: </b>(415)656-0886
</p>
<p>
<b>Email: </b>iec.sfo@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.692398019072!2d-122.40790028468372!3d37.72689747976825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808f7ee372abe987%3A0x8b928727c03148bc!2s400+Brussels+St%2C+San+Francisco%2C+CA+94134!5e0!3m2!1sen!2sus!4v1518381105312" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
</p>
')	where church_id = (select church_id from church where church_path = 'sanfrancisco')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>主任牧師:</b> 何兆威 牧師,  (415)309-5661
</p>
<p>
<b>助理牧師:</b> 王德明 牧師,  (415)935-9877
</p>
<p>
<b>地址: </b>400 Brussels St., San Francisco, CA 94134 USA
</p>
<p>
<b>電話:</b> (415)656-0886
</p>
<p>
<b>電郵: </b>iec.sfo@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.692398019072!2d-122.40790028468372!3d37.72689747976825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808f7ee372abe987%3A0x8b928727c03148bc!2s400+Brussels+St%2C+San+Francisco%2C+CA+94134!5e0!3m2!1sen!2sus!4v1518381105312" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
</p>
')	where church_id = (select church_id from church where church_path = 'sanfrancisco')
	and locale = 'zh'
	and page_id = 'contactus';


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(11, 'schedule', 'en', 'IEC in San Francisco - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜(中文)</br>Worship Service (Mandarin)</td>
			<td>周 日 上 午 9 時 </br>Sunday 9:00 am</td>
		</tr>
		<tr>
			<td>主日學(中文)</br>Sunday School (Mandarin)</td>
			<td>周 日 上 午 9 時  </br>Sunday 9:00 am</td>
		</tr>
		<tr>
			<td>禱告會(中文)</br>Prayer Meeting (Mandarin) </td>
			<td>周 三 晚上 7:30</br>Wednesday 7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(11, 'schedule', 'zh', '三籓市基督教生命堂 - 聚會日程',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜(中文)</br>Worship Service (Mandarin)</td>
			<td>周 日 上 午 9 時 </br>Sunday 9:00 am</td>
		</tr>
		<tr>
			<td>主日學(中文)</br>Sunday School (Mandarin)</td>
			<td>周 日 上 午 9 時  </br>Sunday 9:00 am</td>
		</tr>
		<tr>
			<td>禱告會(中文)</br>Prayer Meeting (Mandarin) </td>
			<td>周 三 晚上 7:30</br>Wednesday 7:30 pm</td>
		</tr>
	</tbody>
</table>
</br>


<p>&nbsp;</p>
');


--------------------ends san francisco

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
<b>成立日期:</b> 1985年 9月 22日
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
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Yong Yong Guo, (Cell) 965-333-777</td>
		</tr>
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
		<tr>
			<td class=\"label\">傳道:</td>
			<td>郭永勇 傳道, (手機) 965-333-777</td>
		</tr>
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
			<td> 351-263-658-466/(手機) 351-965-077-777 </td>
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
<b>成立日期:</b> 2010年 1月 30日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/portoaltosmall_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />
2009年12月30日陳岳平牧師與一位社團的負責人去PORTO ALTO辦事，席間一位未信主的朋友告知PORTO ALTO已有1000左右的華人，這位朋友建議我們在PORTO ALTO建立教會。神竟然讓一個未信主的人發出馬其頓的呼聲！
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
<p>
一月31日，全球生命堂總監楊摩西牧師從美國來主持播道歐多生命堂成立典禮， 在陳岳平牧師宣告下，「播道歐多基督教生命堂」正式成立。
</p>
<p>
「播道歐多」是葡文的 PORTO ALTO，中文「播道歐多」有特別的意義：基督教生命堂宣教、傳「播」上帝的「道」，在「歐」洲華人中，信主的人會越來越「多」。感謝主，多美的名字！
</p>
<p>
播道歐多生命堂成立不到兩年，上帝又為我們預備了一個華人聚居最密集，停車很方便的新會址，我們與房主多次商議，在荷蘭的陳啟猷牧師夫婦也親自來葡萄牙幫助我們與房主商議後，對方終於以我們可接受的價格賣給我們，而且還根據我們的要求把房子裝修好後才交給我們。屋內幾乎所有應備有的傢俱一應俱全，一樓到二樓的樓梯和一樓進屋內的走道鋪設都是大理石地，相當美觀實用。我們非常感恩！播道歐多生命堂雖然不是很「壯大」（崇拜人數穩定在35-45人之間），但弟兄姐妹很同心、很相愛，很溫馨。
</p>
         2015年4月郭永勇傳道夫婦開始在播道歐多生命堂牧會。如今教會除了主日崇拜、查經禱告會、團契以外，我們還舉辦了不同類型的福音活動，其間我們還成立了工友福音團契（特為在倉庫上班的工人成立的團契），效果顯著。播道歐多生命堂就這樣慢慢的發展起來。祈求上帝帶領這個可愛的教會走向更成熟、更健全的復興之路。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'portoalto')
	and locale = 'zh'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b> Ev. Yong Yong Guo, (Cell) 965-333-777
</p>
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
<b>傳道: </b>郭永勇 傳道, (手機) 965-333-777
</p>
<p>
<b>地址: </b>Rua Papoila 6A Porto Alto, 2135 Samora Correia, Portugal
</p>
<p>
<b>電話: </b>3351-263-658-466/(手機) 351-965-077-777
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
<img hspace="5" src="/emsi/images/Church-Lisbon-pic-2-8-18.jpg" align="left" height="255" width="360" />The Portuguese church, CEC in Lisbon, was founded on October 21, 1999 by Rev. Moses Yang.
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
<b>成立日期:</b> 1999年 10月 21日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church-Lisbon-pic-2-8-18.jpg" align="left" height="255" width="360" />
</p>
<p>
1999年七月正在西班牙瓦倫西亞生命堂牧會的陳岳平傳道接到他的妹夫阮高華的電話，得悉在葡萄牙里斯本（Lisbon, Portugal）的福音迫切需要，經禱告和與北美總會磋商後，隨即帶同在西班牙短宣的莊思明弟兄前往里斯本探望信徒。經過多方面瞭解和考察，知道該市實在有成立生命堂的必要，我們必須按真理的原則去幫助信徒瞭解純正的基督真道。回到瓦倫西亞後，陳傳道向總會提出報告，並在九月得總會調派葡萄牙，負責葡萄牙福音佈道會開拓的工作。
</p>
<p>
1999年十月初，陳小萍姐妹願意借出她的餐館「宏發酒家」作崇拜之用；1999年十月3日即開始了第一次的崇拜；十月21日楊摩西牧師親臨主持「里斯本基督教生命堂」成立典禮；十一月14日陳啟猷牧師夫婦前來探望，並按立第一屆的同工；十二月5日主日崇拜遷到租用的葡萄牙當地教堂舉行。
</p>
<p>
2006年十一月，楊摩西牧師在葡萄牙授課，陳岳平牧師趁便邀請楊牧師及陳啟猷牧師夫婦一起去看他已看過的一棟房子。楊牧師看完滿意，催促陳岳平牧師盡快進行購堂事工；2006年十二月，陳岳平牧師展開購買堂會的一切工作。
</p>
<p>
里斯本生命堂位於市中心的繁華地段，不但離地鐵站和公車站僅兩分鐘步行路程，且離中國人的「貨行」僅只三個地鐵站。感謝主奇蹟般地在四十三天內為里斯本生命堂豐富地預備了購買新教堂的六十多萬歐元。雖購堂過程遇些攔阻，但上帝在短短的五十三天內為里斯本生命堂預備一切所需。2008年一月20日下午四時正，葡萄牙里斯本生命堂獻堂。
</p>
<p>
里斯本生命堂是葡萄牙第一間成立的堂會，在這十八年來蒙上帝特別保守，不單本堂健康穩步地成長，同時還極力開拓支持葡萄牙全國的事工，十八年來在葡萄牙建立七個堂會，相信在未來的歲月裏，里斯本生命堂會繼續忠心努力完成耶穌基督的大使命，傳揚福音，建立教會。
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
		<tr>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td> Rua do Amial 698, 4200-053 Porto, Portugal</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> 351-252-612-642  </td>
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
<img hspace="5" src="/emsi/images/Church-Porto-pic-2-8-18.jpg" align="left" height="255" width="360" />
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
		<tr>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Rua do Amial 698, 4200-053 Porto, Portugal</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td>  351-252-612-642  </td>
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
<b>成立日期:</b> 2002年 1月 22日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church-Porto-pic-2-8-18.jpg" align="left" height="255" width="360" />波爾圖（Porto）是葡萄牙（Portugal）的第二大城市，位於葡萄牙的北部，在此地的中國人主要是從事各種商品批發、零售業和餐飲業的工作。隨著多年來的幾次大赦，中國人由寥寥無幾到現在幾乎是隨處可見，這真的是葡萄牙北部的一大改變；所以，葡萄牙北部的波爾圖即成為一片待開發的福音禾場。
</p>
<p>2001年聖誕節，陳岳平傳道帶領了一些同工往波爾圖探訪信徒及未信的華人，並邀請他們參加十二月27日所舉行的第一次聚會。當天聚會有三十多人參加，迴響十分熱烈，會後五人接受洗禮。由於這次的聖誕節聚會反應熱烈，陳傳道帶領同工們開始計劃新的福音事工，北美總會也組隊前往協助。2002年一月在該地舉行佈道，並於一月21日成立「波爾圖基督教生命堂」。
</p>
<p>波爾圖生命堂成立之後三年，因為很多弟兄姐妹從波爾圖市往郊區的明德路（Mindelo）工業區轉移，為了照顧從這些弟兄姐妹之靈命需要，我們決定在明德路植堂。
</p>
<p>然而，隨著時間變遷，明德路自然地成了葡萄牙北部的批發中心，所以許多時候，我們服事的重心也在明德路。2006年六月11日即成立了「明德路基督教生命堂」，原來在波爾圖批發街的中國人幾乎都搬到了明德路，波爾圖只剩下一些三百店，而這些店不集中又很遠；後來我們只得先將波爾圖的崇拜暫停，只留下查經班和禱告會。
</p>
<p>經過牧者們的研究，我們於2012年四月10日恢復了波爾圖生命堂的崇拜。感謝主，教會的人數也在逐漸地增長。
</p>
<p>2013年葡萄牙生命堂有幾位傳道人辭職，因缺傳道人的緣故，波爾圖的生命堂崇拜再次停止，只保留查經班和禱告會。波爾圖生命堂是我們葡萄牙幾個堂會中起伏波折最多的堂會。
</p>
<p>2016年四月波爾圖生命堂又開始恢復崇拜，同年八月我們波爾圖生命堂購堂，可惜的是，2017年原本在波爾圖事奉的傳道人，被調派至其他國家的生命堂服事，波爾圖生命堂被迫停止所有的聚會；但是感謝主，上帝祂絕對不會撇下波爾圖生命堂不管，因為我們的購堂是通過禱告，上帝允許我們購買的，所以祂一定會負完全的責任。感謝主，2017年三月11日波爾圖生命堂重啟，舉行感恩崇拜暨新堂落成典禮，把一個嶄新的教堂獻給上帝。
</p>
<p>波爾圖生命堂在這十多年當中，的確有風有雨，但是我們不懼怕，因為《聖經》詩篇二十三篇4-5節告訴我們：「我雖然行過死蔭的幽谷，也不怕遭害，因為你與我同在；你的杖，你的竿，都安慰我。在我敵人面前，你為我擺設筵席；你用油膏了我的頭，使我的福杯滿溢。」相信波爾圖生命堂的明天會更好……。

</p>

</div>
')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'zh'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>Rua do Amial 698, 4200-053 Porto, Portugal
</p>
<p>
<b>Tel #: </b> (cell) 351-252-612-642
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3002.9619421941993!2d-8.616034784580663!3d41.17899727928379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2464357d7708af%3A0x3f1595d11819de60!2sRua+do+Amial+698%2C+4200-062+Porto%2C+Portugal!5e0!3m2!1sen!2sus!4v1476580063460" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe></p>
')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>地址: </b>Rua do Amial 698, 4200-053 Porto, Portugal
</p>
<p>
<b>電話:</b> 351-252-612-642
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3002.9619421941993!2d-8.616034784580663!3d41.17899727928379!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2464357d7708af%3A0x3f1595d11819de60!2sRua+do+Amial+698%2C+4200-062+Porto%2C+Portugal!5e0!3m2!1sen!2sus!4v1476580063460" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>')	where church_id = (select church_id from church where church_path = 'porto')
	and locale = 'zh'
	and page_id = 'contactus';

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(37, 'schedule', 'en', 'CEC in Porto - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship Service</td>
			<td>Tuesday 8:30 pm – 10:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(37, 'schedule', 'zh', '波爾圖基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>崇拜 </td>
			<td>星期二 晚上 8:30 pm – 10:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


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
			<td> 351-252-612-642/(cell) 351-963-333-777</td>
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
<p><img hspace="5" src="/emsi/images/Church-Mindelo-pic-2-8-18.jpg" align="left" height="255" width="360" />
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
			<td> 351-252-612-642/(手機) 351-963-333-777 </td>
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
<b>成立日期:</b> 2006年  6月 11日
</p>
<p>
<span class=\"label\">簡史: </span>
<p>
<img hspace="5" src="/emsi/images/Church-Mindelo-pic-2-8-18.jpg" align="left" height="255" width="360" />葡萄牙波爾圖（Porto, Portugal）的明德路（Mindelo）倉庫批發區發展得相當迅速，是中國人在葡萄牙北部最集中之地，大約有几百家華人的批發店，經營各式各樣的中國商品。人口近千人，是一個很大的福音禾場。當陳岳平牧師知道此地的需要後，積極開始發展福音事工。2006年開始每週五晚上在此有查經禱告會，人數最多的時候約有三十人。很感恩的是，在查經班中弟兄姐妹由不會禱告到可以開口禱告，由怕禱告到喜愛禱告，最後大家都能禱告，連小孩子都能開口感恩。
</p>
<p>
感謝主，2006年六月11日於波爾圖郊外的倉庫批發區成立了「明德路基督教生命堂」。這一天，葡萄牙各生命堂的弟兄姐妹們都非常開心地一同慶祝明德路生命堂的誕生！堂會的成立有很多感人的見證 ──聚會場所的全部租金是由一家非常愛主的家庭長期奉獻，他們為上帝的家，甘心樂意、出錢出力；教會的講臺和講桌是幾位弟兄付出了很多心血和辛勞，放下自己的生意不做，為了教會的服事關了幾天的店，一點也沒抱怨；教會的音響也是由一個家庭通宵加班，花了兩天完成；教會的清潔整理是幾位弟兄姐妹熱心義務的參與；小朋友主日學所需的電視機和放影機是由一個姐妹奉獻的；還有一些弟兄姐妹奉獻金錢。感謝主，有太多的感恩見證數算不盡！
</p>
<p>
2006年原來在波爾圖生命堂崇拜的弟兄姐妹，因著生意的緣故陸續來到明德路工業區發展。感謝上帝，在這些年教會發展的聖工上，有很多熱心愛主的家庭，因著他們的擺上和支持，我們的教會也在不斷地成長。2013年在上帝的特別眷顧下我們又購得了新堂，三百多平方公尺的場地。因樓層高，我們改建成兩層，第一層作崇拜大廳、副堂、衛生間、廚房等設施；第二層有四個主日學教室、辦公室及傳道人宿舍等設施，教堂周圍有八十多個免費的停車位，真的感謝讚美主。
</p>
<p>
真的盼望明德路生命堂的弟兄姐妹以及同工們，懂得珍惜、懂得感恩、同心協力，興旺主的福音，彼此相愛一起努力吸引更多的人來到主的面前。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'mindelo')
	and locale = 'zh'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<p>
<p>
<b>Address: </b>Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal
</p>
<p>
<b>Tel #: </b> 351-252-612-642/(cell) 351-963-333-777
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
<b>地址: </b>Rua B 60 Zona Industrial DE Arvore Vila Do Conde 4480-622, Portugal
</p>
<p>
<b>電話:</b> 351-252-612-642/(手機) 351-963-333-777
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

---------- Portugal - Azores  New church Sept 2015 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(57, 'azores', 1, 5, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(57, 'en', 'menu_name', 'CEC in Azores');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(57, 'zh', 'menu_name', '亞速爾基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(9, NULL, 57);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'intro', 'en', 'CEC in Azores  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label"> </td>
			<td></td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Av Alberto I Príncipe Do Mónaco Nº5 9500-234 Ponta Delgada Açores, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td>  (cell) 351-963-333-777 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td><a href=\"mailto: emsiazores@hotmail.com"> emsiazores@hotmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: </span>August 22, 2015</p>
	<p><img hspace="5" src="/emsi/images/Church-Azores-pic-2-23-18.jpg" align="left" height="255" width="360" />In May 2015, I received a phone call from Brother Jianfeng Ji. After Mr. Ji had witnessed to one of his customer for a long time, he was ready to accept Jesus Christ as his Savior. We made an appointment at 12 am Thursday evening during our restaurant Bible Study hour to speak to him on the phone and lead him to Christ.
	</p>
	<p>On Thursday night at 12 am, we called him. I thank God that our friend answered the phone and accepted Jesus Christ as his Savior. When I put down the phone, I told Jianfeng that: we thank the Lord that his friend believes in Jesus. It is too bad he lives so far away from us, a solid three hours by plane. A new believer will be very lonely without church life. Let us pray for him and ask the Holy Spirit to help him. Later I heard from Jianfeng that the brother who just believed in the Lord called him to share with him that since he believed in Jesus, he does not know why he was so joyful, and this joy he never had.  I was very grateful for him!
	</p>
	<p>Soon it was Thursday Bible Study again. Jianfeng shared with us the testimony of that brother. It occurred to me to visit this brother. I told brothers and sisters in the Bible Study class that I was struck with the beauty of this island a few years back when I went with the Brother Fellowship to this island. We may plan a missionary trip to the island this year. It will serve as a vacation; a missionary trip; and visitation to this brother as well. May be through this short-term missionary trip God will establish a church in this island.  I thank the Lord that people agreed with me totally when I shared my thought with them. We then began to pray and plan our "Missionary trip to the island" in July.
	</p>
	<p>From the beginning of June we prayed, planned and started preparation for our trip. We decided to hold a four days three nights musical evangelical trip in the island from July 14 to 17. We prepared gospel leaflets, posters; we rented a site. Through the power of the Holy Spirit, a group of thirty-two of us went to the Islands of Azores on July 14th.
	</p>
	<p>We arrived at the island the same day. After we checked in the hotel, some of us went for visitation in seven groups; the rest of the brothers and sisters set up the site, installed audio and video equipment etc.
	</p>
	<p>At nine o&#39;clock that evening, our musical evangelistic meeting started. We were very grateful for the number of people that came. We expected twenty-plus people to show up. Instead we had more than sixty local Chinese turning out. Among them twenty-plus were Christians. A few accepted Jesus Christ as their Lord that evening. All of us were exhilarated at the fruit of our labor. People were reluctant to leave afterwards. I asked them: “Will you come if we are going to hold meetings here again?” They replied that they will.  We invited a few actively involved brothers and sisters to stay and exchanged ideas. We thank our Lord that the thought to start a church at Azores was born that evening. We thank
the Lord that under the leading of our Almighty God the Azores Musical Evangelistic mission trip came to a satisfying end!
	</p>
	<p>I immediately reported the result of our mission trip to our bishop at CEM headquarter, Rev. Moses Yang that evening. I also reported to him our desire to start a CEC church in Azores. God’s timing is the best. It happened that Rev. Moses Yang was coming to speak in our CEM Portugal Summer Conference in Aug. 24 -28, 2015. So we decided to establish the CEC in Azores on August 22.
	</p>
	<p>On August 22, a group of eighteen of us went with Rev. Yang to the island. Five brothers and sisters were baptized that day, including brother Chuanjian Chen who accepted Jesus Christ as Savior that Thursday midnight. The Christian Evangelical Church in Azores was established that evening.
	</p>
	<p>I thank God, the CEC in Azores was established on August 22, 2015 under the guiding and blessing of the Holy Spirit and the witness of brothers and sisters. Through this church, may God lead many other Chinese in Azores to come to know Jesus Christ, and to enter into His kingdom.
	</p>

</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'intro', 'zh', '亞速爾基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label"></td>
			<td></td>
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
				<td>Av Alberto I Príncipe Do Mónaco Nº5 9500-234 Ponta Delgada Açores, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> (手機) 351-963-333-777</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td><a href=\"mailto: emsiazores@hotmail.com"> emsiazores@hotmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2015年 8月 22日
</p>
<p>
<span class=\"label\">簡史: </span>
<p>
<img hspace="5" src="/emsi/images/Church-Azores-pic-2-23-18.jpg" align="left" height="255" width="360" />2015年五月，我接到教會裡季建峰弟兄的電話，他告訴我，他跟一位客戶傳了很長時間的福音，對方終於答應要信耶穌了，所以約好在那個週四晚上12點我們餐館查經班時，請我在電話中帶他做決志禱告。
</p>
<p>
週四晚12點時，我們準時打電話給對方。感謝主，這位朋友接了電話，也跟我做了決志禱告。放下電話，我跟建峰說：「感謝主，你的這位朋友真的信耶穌了，可惜他住的地方離我們很遠，坐飛機也要二個小時，剛信主沒有教會的生活很孤單的，我們為他禱告吧，求聖靈幫助他。」後來聽建峰說，隔天那位信主的弟兄打電話跟他分享：「自從信了耶穌後，不知道為什麼一直很喜樂，而且這種喜樂是他從來沒有過的。」我心中很替他感恩！
</p>
<p>
很快週四查經又到了，建峰把那位弟兄信主的見證跟我們分享。當時我突然覺得有要去探望這位弟兄的念頭。感謝主，當我把這個想法跟查經班的弟兄姐妹分享時，大家都非常贊同，於是我們開始禱告並策劃七月「海島宣教之旅」。
</p>
<p>
我們從六月開始一直禱告、準備及策劃，決定於七月14至17日在海島有四天三夜的音樂佈道旅行。我們準備了福音單張、海報也租了場地，七月14日我們一行三十二人靠著聖靈的能力浩浩蕩盪飛往亞速爾海島，我們的宣教之旅正式登場。
</p>
<p>
當天我們抵達海島入住酒店後，立即分成七組出去探訪，其餘的弟兄姐妹負責佈置場地，安裝音響設備，電腦投影等等工作。
</p>
<p>
當晚九點，我們的音樂佈道會準時開始。真的太感謝上帝了，我們原來想有二十多位華人來就很高興了，誰知道當晚有六十多位當地華人來參加，其中十多位是基督徒，也有幾位華人信了主。我們去的三十二位弟兄姐妹都好高興，我們所付出的看見成果！音樂佈道會結束後，大家仍依依不捨，久久不願離去。我問大家：「如果下次我們還有機會來，你們願不願意來參加？」他們異口同聲地說：「願意」。會後我們請了幾個積極參與的弟兄姐妹留下討論，感謝主，成立「亞速爾生命堂」的想法就在當天晚上大致敲定，感謝主，亞速爾短宣音樂佈道會在全能上帝之帶領下圓滿落幕！
</p>
<p>
當晚我立刻向總會楊摩西牧師報告了我們短宣的情況，同時把我們將要在亞速爾成立生命堂的呼聲告訴了他。上帝的時間總是最好的，剛好八月24至28日，楊牧師來帶領我們葡萄牙2015年的夏令營，於是我們決定八月22日為「亞速爾生命堂」成立的日子。
</p>
<p>
八月22日，我們一行十八人跟楊牧師一起再度來到海島。當天有五位弟兄姐妹受洗，其中當然有那位在周四晚上12點決志禱告的陳川健弟兄。
</p>
<p>
感謝上帝，亞速爾基督教生命堂在聖靈帶領賜福，及弟兄姐妹的見證下，於2015年八月22日正式成立。同時更感恩的是在成立不到一年的時間裏就買下屬於自己的堂會，並於2016年8月6日舉行教會成立一周年暨落成典禮，願上帝藉著此堂會的建立，讓更多亞速爾海島的華人有機會認識基督耶穌偉大的救恩，並使多人歸入祂的國度。
</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'contactus', 'en', 'CEC in Azores - Contact Us', 'Christian Evangelical Church in Azores<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'contactus', 'zh', '亞速爾基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'schedule', 'en', 'CEC in Azores - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(57, 'schedule', 'zh', '亞速爾基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜 </td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


update church set address='Av Alberto I Príncipe Do Mónaco Nº5 9500-234 Ponta Delgada Açores, Portugal', latitude = 37.7419884, longitude = -25.6883702 where church_path = 'azores';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Address: </b>Av Alberto I Príncipe Do Mónaco Nº5 9500-234 Ponta Delgada Açores, Portugal</p>
<p>
<b>Tel #: </b> (cell) 351-963-333-777</p>
<p>
<b>Email: </b> emsiazores@hotmail.com</p>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.0492678658356!2d-25.6905588867643!3d37.741988379765374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzfCsDQ0JzMxLjIiTiAyNcKwNDEnMTguMSJX!5e0!3m2!1sen!2sus!4v1476749807515" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'azores')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p><b>地 址: </b>Av Alberto I Príncipe Do Mónaco Nº5 9500-234 Ponta Delgada Açores, Portugal</p>
<p>
<b>電 話: </b>(手機) 351-963-333-777</p>
<p>
<b>電 郵: </b>emsiazores@hotmail.com</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.0492678658356!2d-25.6905588867643!3d37.741988379765374!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzfCsDQ0JzMxLjIiTiAyNcKwNDEnMTguMSJX!5e0!3m2!1sen!2sus!4v1476749807515" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'azores')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Portugal - Azores


---------- Portugal - Setubal  New church Aug 2016 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(58, 'setubal', 1, 5, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(58, 'en', 'menu_name', 'CEC in Setubal');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(58, 'zh', 'menu_name', '思督堡基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(9, NULL, 58);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'intro', 'en', 'CEC in Setubal  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Ev. Yong Yong Guo, (Cell) 965-333-777</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Rua Camilo Castelo Branco 163 Loja G 2910-450 Setúbal, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td> (cell) 351-965-333-777/ (cell)351-963-333-777 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td><a href=\"mailto: emsisetubal@hotmail.com"> emsisetubal@hotmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: </span>August 5, 2016</p>
<img hspace="5" src="/emsi/images/Church-Setubal-pic-2-23-18.jpg" align="left" height="255" width="360" />
</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'intro', 'zh', '思督堡基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
.contact-content td {font-size: 14px; padding: 2px; 3px;}
td.label {font-weight: bold; width: 1%; white-space: nowrap;}
p span.label {font-weight: bold;}
.main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
.borderless-table {border-width: 0px;}
</style>
<div class="contact-content">
<div style="color: #000000; font-size: small">

<table cellpadding=\"0\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\">傳道: </td>
			<td>郭永勇 傳道, (手機) 965-333-777</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1" cellspacing="0">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">地址:</td>
				<td>Rua Camilo Castelo Branco 163 Loja G 2910-450 Setúbal, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> (手機) 351-965-333-777/ (手機)351-963-333-777</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td><a href=\"mailto: emsisetubal@hotmail.com"> emsisetubal@hotmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2016年 8月 5日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church-Setubal-pic-2-23-18.jpg" align="left" height="255" width="360" />
2016年二月10日週三晚上，陳岳平牧師從里斯本教會查經結束回家已是夜間十一點了，洗洗漱漱後就準備休息；但是，那天夜裡陳牧師輾轉反側，怎麼也睡不著，於是乾脆起來跪下禱告。禱告結束後，心中聽到一個聲音：「你們連馬德拉，亞速爾只有三、五百華人的地方都建立了教會，但里斯本周圍還有幾個城市超過一千多個華人的地方，為什麼不去建立教會？」當陳牧師心裡聽到這個聲音後，立刻閉上眼睛把里斯本周圍的城市過濾了一遍，這時有兩個城市浮現在他的眼前：一是卡斯卡伊斯（CASCAIS）、二是思督堡（SETUBAL）。
</p>
<p>
卡斯卡伊斯是里斯本郊區最富有的城市（我们也在这个城市开始了每周一次的查经了），她距里斯本三十公里左右，近年來有很多從中國來的新移民都在這裡落戶；思督堡是里斯本以南五十公里處的城市，在此城及其四周有不少中國人開的店。感謝主，藉著聖靈的提醒讓陳牧師看到卡斯卡伊斯和思督堡的福音需要，於是陳牧師立刻回應上帝的感動。向主禱告說：「主啊！如果你要我們去這兩個城市開拓福音工作，我們願意。」禱告後，就安然地入睡了。
</p>
<p>
過了些日子，我們前往思督堡探訪；探訪之後，上帝給陳牧師的感動更加強烈，更加清晰，有必要在這個城市建立教會了，因為這個城市周圍還有一些小城，都有中國人開的商店，如果要他們去里斯本聚會，要過大橋，還要付過橋費，如果我們在這個地方建立教會，那麼他們到這裏來聚會就很方便。於是我們決定先找場地，結果上帝非常奇妙地為我們預備一個場地，而且以租約的方式購買了這個場地，每月只付800歐元，15年後產權就歸教會，上帝太奇妙了。於是我們在2016年八月5日舉行「思督堡基督教生命堂」獻堂暨「思督堡基督教生命堂」成立典禮。
</p>
<p>
感謝主，思督堡基督教生命堂是一間從無到有的教會，從沒有一個會友先買下堂會的教會，這實在是奇蹟。迄今思督堡生命堂成立已經一年了，雖然還不是很壯大，聚會人數穩定在10人左右，但我們對主有信心，主能在曠野開道路，能在沙漠開江河，祂也必會在我們前頭開路引領。
</p>
<p>
思督堡的葡語是Setubal，中文翻譯是「塞圖巴爾」，但我們稱為「思督堡」是有特殊含義的，就是思想基督的城堡。但願這間教會能成為周圍華人的祝福，藉著福音的廣傳，能吸引更多的人來到基督的城堡，思想耶穌基督的大愛。
</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'contactus', 'en', 'CEC in Setubal - Contact Us', 'Christian Evangelical Church in Setubal<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'contactus', 'zh', '思督堡基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'schedule', 'en', 'CEC in Setubal - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(58, 'schedule', 'zh', '思督堡基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜 </td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


update church set address='Rua Camilo Castelo Branco 163 Loja G 2910-450 Setúbal, Portugal', latitude = 38.5270432, longitude = -8.8843252 where church_path = 'setubal';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Evangelist: </b> Ev. Yong Yong Guo, (Cell) 965-333-777
</p>
<p>
<b>Address: </b>Rua Camilo Castelo Branco 163 Loja G 2910-450 Setúbal, Portugal</p>
<p>
<b>Tel #: </b> (cell) 351-965-333-777/ (cell)351-963-333-777</p>
<p>
<b>Email: </b>emsisetubal@hotmail.com </p>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3121.291716680683!2d-8.884325184660526!3d38.527043179629395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd1943aae93372c1%3A0x96997d85c0181d50!2sR.+Camilo+Castelo+Branco+163%2C+2910-448+Set%C3%BAbal%2C+Portugal!5e0!3m2!1sen!2sus!4v1476592748025" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'setubal')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道: </b>郭永勇 傳道, (手機) 965-333-777
</p>
<p><b>地 址: </b>Rua Camilo Castelo Branco 163 Loja G 2910-450 Setúbal, Portugal</p>
<p>
<b>電 話: </b>(手機) 351-965-333-777/ (手機)351-963-333-777</p>
<p>
<b>電 郵: </b>emsisetubal@hotmail.com</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3121.291716680683!2d-8.884325184660526!3d38.527043179629395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd1943aae93372c1%3A0x96997d85c0181d50!2sR.+Camilo+Castelo+Branco+163%2C+2910-448+Set%C3%BAbal%2C+Portugal!5e0!3m2!1sen!2sus!4v1476592748025" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'setubal')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Portugal - Setubal

---------- Queens - performingArtists  New church Jan 2017 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(59, 'performingArtists', 1, 10, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(59, 'en', 'menu_name', 'Performing Artists Gospel Fellowship in New York');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(59, 'zh', 'menu_name', '紐約藝人基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(3, NULL, 59);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'intro', 'en', 'Performing Artists Gospel Fellowship in New York  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Professor Jing Huang, 973-335-7177 ext.211</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>138-10 35th Ave, Flushing, NY 11354, USA</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td> 917-488-8610 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td><a href=\"mailto: jhuang277@gmail.com"> jhuang277@gmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: </span>January 13, 2017</p>
<p>
<img src="/emsi/images/Church_Performing_Artists_2_2022.JPG" alt="view church photo gallery" height="255" align="left" hspace="5" width="360" />
On January 13, 2017, the former “The New York Performing Artists Fellowship” became the "Performing Artists Gospel Fellowship” after joining EMSI.
</p>
<p>
The New York Performing Artists Fellowship was founded by Ev. Shilian(Deborah) Li in 1987. The first meeting was held on Oct. 25, 1987 in a Chinese restaurant where she invited more than a dozen of her show business friends with Rev. Moses Yang as the speaker. She held a Christmas party in the House of New Bridge in Flushing with more than 30 show business friends from both Taiwan and China mainland at the end of December in 1987. In the meeting Prof. Xiong Yi shared his testimony, and Rev. Moses Yang delivered a message. After the service, someone offered his house to be used for meeting. A Friday night Bible class was then started followed by a fellowship two months later.
</p>
<p>
At the end of July 1988, Taiwan’s Sun Yue, a very famous movie star and the Love Mission Team came to the United States for an evangelistic tour. They visited our fellowship. We rented the Newman Methodist Assembly Hall as the venue. Brother Sun Yue gave a testimony, and Rev. Yang delivered a short sermon. More than 80 people attended. A Christian couple, Huang Zhonglian and his wife offered to let us lease a unit in their new building at a discounted price. A thanksgiving service was held on Thanksgiving Day, November 26, 1988. The New York Performing Artists Fellowship was officially established.
</p>

</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'intro', 'zh', '紐約藝人基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td>黃靜 教授, 973-335-7177 ext.211</td>
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
				<td>138-10 35th Ave, Flushing, NY 11354, USA</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> 917-488-8610</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td><a href=\"mailto: jhuang277@gmail.com"> jhuang277@gmail.com</a></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2017年 1月13日
</p>
<p>
<span class=\"label\">簡史: </span><br />
</p>
<p> <img src="/emsi/images/Church_Performing_Artists_2_2022.JPG" alt="view church photo gallery" height="255" align="left" hspace="5" width="360" />
紐約藝人生命堂前身為紐約藝人團契，2017年ㄧ月紐約藝人福音團契加盟國際神學福音佈道會，更名為紐約藝人基督教生命堂。
</p>
<p>紐約藝人團契第一次聚會是在1987年十月的最後一個主日。李水蓮牧師（藝名：康嘉欣）邀請了十多位演藝界的朋友們在一家中國餐館聚會，由楊摩西牧師短講信息；同年十二月底，又在法拉盛的新橋之家舉辦聖誕節晚會，特別邀請了熊玠教授分享見證，楊摩西牧師證道。共有三十多位兩岸的演藝界朋友前來參加。那次聚會後，有人願意開放家庭為聚會所用，於是開始了週五晚上的查經班，兩個月後開始了團契崇拜。
</p>
<p>1988年七月底，台灣金馬影帝孫越和愛心佈道團來美佈道，順道來訪本團契。當時藉用新生衛理公會的禮堂，為他們舉辦了一次特別聚會。由孫越弟兄做見證，楊牧師短講，參加人數八十多人。當場有基督徒黃仲連夫婦，樂意把他們新建大廈的一個單位以特別優惠的價格租給教會。於是在1988年十一月26日感恩節舉行了感恩禮拜，正式成立了紐約藝人福音團契。
</p>
<p>2014年九月，李水蓮牧師離開紐約，定居德州，將本教會的事工傳與神學院的黃靜教授。弟兄姐妹群策群力，熱心事主，四年多來，得救人數頻頻加增。目前教會正在籌備建堂。
</p>
<p>盼望弟兄姐妹繼續肩負福音使命，同心擴展福音事工。
</p>
<p>……你們往普天下去，傳福音給萬民聽。馬可福音十六章15節
</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'contactus', 'en', 'Performing Artists Gospel Fellowship in New York - Contact Us', 'Performing Artists Gospel Fellowship in New York<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'contactus', 'zh', '紐約藝人基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'schedule', 'en', 'Performing Artists Gospel Fellowship in New York - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>7:00pm</td>
		</tr>
		<tr>
			<td>Prayer Meeting</td>
			<td>Sunday</td>
			<td>6:00pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Tuesday</td>
			<td>7:30pm</td>
		</tr>
		<tr>
			<td>Fellowship</td>
			<td>Thursday</td>
			<td>7:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(59, 'schedule', 'zh', '紐約藝人基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日 晚</td>
			<td>7:00pm</td>
		</tr>
		<tr>
			<td>禱告會</td>
			<td>星期日 晚</td>
			<td>6:00pm</td>
		</tr>
		<tr>
			<td>查經班</td>
			<td>星期二 晚</td>
			<td>7:30pm</td>
		</tr>
		<tr>
			<td>團契</td>
			<td>星期四 晚</td>
			<td>7:30pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


update church set address='138-10 35th Ave, Flushing, NY 11354, USA', latitude = 40.76509, longitude = -73.82859 where church_path = 'performingArtists';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Pastor: </b>Professor Jing Huang, 973-335-7177 ext.211
</p>
<p>
<b>Address: </b>138-10 35th Ave, Flushing, NY 11354, USA</p>
<p>
<b>Tel #: </b> 917-488-8610</p>
<p>
<b>Email: </b>jhuang277@gmail.com </p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.8680388404923!2d-73.8308006850479!3d40.764927042313595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2601ae0bc4447%3A0xf80373c635c346db!2s138-10%2035th%20Ave%2C%20Flushing%2C%20NY%2011354!5e0!3m2!1sen!2sus!4v1638496895201!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'performingArtists')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p>
<b>牧者: </b>黃靜 教授, 973-335-7177 ext.211
</p>
<p>
<b>地 址: </b>138-10 35th Ave, Flushing, NY 11354, USA
</p>
<p>
<b>電 話: </b>917-488-8610
</p>
<p>
<b>電 郵: </b>jhuang277@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.8680388404923!2d-73.8308006850479!3d40.764927042313595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2601ae0bc4447%3A0xf80373c635c346db!2s138-10%2035th%20Ave%2C%20Flushing%2C%20NY%2011354!5e0!3m2!1sen!2sus!4v1638496895201!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'performingArtists')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Queens - performingArtists

---------- Portugal - Madeira  New church Aug 2017 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(60, 'madeira', 1, 7, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(60, 'en', 'menu_name', 'CEC in Madeira');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(60, 'zh', 'menu_name', '馬德拉基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(9, NULL, 60);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'intro', 'en', 'CEC in Madeira  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label"></td>
			<td></td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Rua de São Francisco n&#39 3, 2E 9000-050 Funchal, Madeira, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td> 351-963-333-777 </td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Fax#:</td>
				<td> 351-218-868-370 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: May 29, 2016</span></p>
<p>
<img hspace="5" src="/emsi/images/church_madeira2017.jpg" align="left" height="255"/></p>
</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'intro', 'zh', '馬德拉基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td class="label"></td>
			<td></td>
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
				<td>Rua de São Francisco n&#39 3, 2E 9000-050 Funchal, Madeira, Portugal</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> 351-963-333-777</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">傳真:</td>
				<td> 351-218-868-370</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2016年 5月 29日
</p>
<p>
<span class=\"label\">簡史: </span>
</p>
<p>
<img hspace="5" src="/emsi/images/church_madeira2017.jpg" align="left" height="255"  />2015年十二月26日，我們結束了亞速爾基督教生命堂聖誕晚會後，56位弟兄姐妹在亞速爾候機廳等候乘機回里斯本，當時ㄧ位弟兄和我說：「陳牧師啊，你每月要多去幾次亞速爾海島，一次還不夠；還有，趕快開始馬德拉的聖工，越快越好。」聽了他的話，心中也很感動，我就回應他的話說：「是啊，他們真的很渴慕，2016年開始我們計劃每月多去幾次亞速爾。至於馬德拉的聖工，本來亞速爾成立後就準備立刻去馬德拉的，後因我去美國進修三個月，所以這事就往後延了，既然神藉著你的口再次提醒此事，那麼我們年初馬上開始馬德拉的事工。」這位弟兄馬上就說，他願意從明年開始每月奉獻金錢來支持葡萄牙海島的聖工。感謝主，馬德拉基督教生命堂的聖工從此正式拉開序幕。
</p>
<p>2016年一月，我帶著八位同工第一次踏上馬德拉海島，地毯式地探訪馬德拉的當地華人。那次我們就帶了八個人信耶穌。我們把找會址的這事委託給當地的奚姐妹，請她幫忙尋找。那段時間她為我們忙裏忙外，還有她的兒子以及當地知名熱心的酈女士一起幫忙尋找，為了找到合適的場地，他們看了很多地方，最後找到現在的堂會，實在是感謝讚美主。
</p>
<p>地點確定後，我們開始進行簡單的裝修，配置了崇拜所需的椅子、講臺、音響、投影機，還有我們主日學教室的課桌及白板等等設施。在這次裝修的過程中，那些剛剛信主的弟兄姐妹都參與協助，如：奚姐妹的弟弟及弟妹、ㄧ位周弟兄、我們的鄰居郭先生，還有一些是我叫不出名字的弟兄姐妹。感謝主，我們看到上帝的手在馬德拉動工。
</p>
<p>里斯本的弟兄姐妹也抽空協助馬德拉生命堂的成立，大家分頭進行籌備工作，當一切都準備妥當時，我們邀請荷蘭的陳啟猷牧師和陳李湘萍師母，還有李欣姐妹(原臺灣著名的影視明星，現為主四處見證)，以及里斯本弟兄姐妹共12位前往馬德拉海島。馬德拉基督教生命堂於2016年五月29日在上帝特別的眷顧下成立了，感謝主，這是上帝的大愛，為我們成就了一切所需，相信祂要在這個海島做拯救的工作，做和睦的工作，做賜福的工作。
</p>
<p>馬德拉生命堂成立才不到一年多的時間，已經有10多位弟兄姐妹受洗。目前我們每個主日都有崇拜，成人穩定在15-20人，孩童15-25人，真的是感謝讚美主。我們願意一起努力，同心合一共同完成上帝所託付給我們的大使命，把耶穌基督的福音向這個海島的每位華人以及當地葡萄牙人廣傳，讓上帝的名得榮耀，讓祂的心得滿足，也願上帝賜福你我都能得祂滿滿的賜福。
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'contactus', 'en', 'CEC in Madeira - Contact Us', 'Performing Artists Gospel Fellowship in New York<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'contactus', 'zh', '馬德拉基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'schedule', 'en', 'CEC in Madeira - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(60, 'schedule', 'zh', '馬德拉基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');


update church set address='Rua de São Francisco n&#39 3, 2E 9000-050 Funchal, Madeira, Portugal', latitude = 32.6195995, longitude = -17.0640852 where church_path = 'madeira';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Address: </b>Rua de São Francisco n&#39 3, 2E 9000-050 Funchal, Madeira, Portugal
</p>
<p>
<b>Tel #: </b> 351-963-333-777
</p>
<p>
<b>Fax #: </b> 351-218-868-370
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3359.411638675415!2d-16.913363684821267!3d32.64848838101103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc6060083bf893e1%3A0x985f19b39740cbe0!2sR.+de+S%C3%A3o+Francisco+3%2C+9000-050+Funchal%2C+Portugal!5e0!3m2!1sen!2sus!4v1502682205190" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe></p>
')	where church_id = (select church_id from church where church_path = 'madeira')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p>
<b>地 址: </b>Rua de São Francisco n&#39 3, 2E 9000-050 Funchal, Madeira, Portugal
</p>
<p>
<b>電 話: </b>351-963-333-777
</p>
<p>
<b>傳真: </b>351-218-868-370
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3359.411638675415!2d-16.913363684821267!3d32.64848838101103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc6060083bf893e1%3A0x985f19b39740cbe0!2sR.+de+S%C3%A3o+Francisco+3%2C+9000-050+Funchal%2C+Portugal!5e0!3m2!1sen!2sus!4v1502682205190" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe></p>
')	where church_id = (select church_id from church where church_path = 'madeira')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Portugal - Madeira




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
			<td>Ev. Minhui Xie</td>
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
			<td> 0036-30-728-8888</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:hqxxmh@gmail.com">hqxxmh@gmail.com</a><br />
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
<span class="label">Established Date: </span>April 11, 2011
</p>
<p>
<img src="/emsi/files/Budapest_small_2019.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />On October 18, 2010, Christian Evangelical Mission International sent Ev. Angela Chen to Budapest, Hungary as a missionary. After six months of labor, CEMC in Budapest is established. This is the 47th CEM church established by the Evangelical Mission and Seminary International under the leadership of Rev. Moses Yang. It is also the 28th CEM church established by the CEMI in Europe.
</p>

<p>
In November, 2015, Ev. Guanqi Zhai replaced Ev. Angela Chen. In May, 2017, sister Minhui Xie became assistant to Ev. Zhai after returning from the States. May CEC Budapest grow steadily in Lord.
I will send you the word document.
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
			<td>謝敏惠 傳道</td>
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
			<td> 0036-30-728-8888</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: hqxxmh@gmail.com"> hqxxmh@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2011年 4月11日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/Budapest_small_2019.jpg\" align=\"left\" height=\"255\" width=\"360\" />2010年10月18日陳寶珩傳道受美國國際神學福音佈道會差派，來到匈牙利布達佩斯開始新工場的開拓。經過六個多月耕耘撒種的前期工作，總會決定正式成立布達佩斯基督教生命堂。這是由楊摩西牧師領導下的美國國際神學福音佈道會屬下的第47間生命堂，也是歐洲分會的第28間生命堂。
</p>
<p>
2015年十一月，翟廣奇傳道接下陳寶珩傳道在此的事奉。2017年五月，謝敏惠姐妹從美國返回教會實習。願主帶領，讓布達佩斯生命堂在穩定中不斷地成長。

</p>


</div>
')	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'zh'
	and page_id = 'intro';



update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Minhui Xie
</p>
<p>
<b>Address: </b>1107 Budapest, Monori u.2-4. E12-12 Hungary
</p>
<p>
<b>Tel #: </b>0036-30-728-8888
</p>
<p>
<b>Email: </b>hqxxmh@gmail.com
</p>
<p>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2696.412628536171!2d19.119877115626196!3d47.48187447917655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4741dccbf81cc13f%3A0x79f7511f19ea8f34!2sBudapest%2C+Monori+u.+2-4%2C+1101+Hungary!5e0!3m2!1sen!2sus!4v1523126793802" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body =
'
Weekly Regular Meetings
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日祷告</br>Sunday Prayer Meeting</td>
			<td>礼拜天</br>Sunday </td>
			<td>晚4:00 - 5:30 </br>4:00 - 5:30pm</td>
		</tr>

		<tr>
			<td>主日崇拜</br>Sunday Worship</td>
			<td>礼拜天</br>Sunday </td>
			<td>晚6:40 - 8:00 </br>6:40 - 8:00pm</td>
		</tr>
		<tr>
			<td>祷告会</br>Prayer Meeting</td>
			<td>礼拜四</br>Thursday </td>
			<td>晚4:00-5:30  </br>4:00 - 5:30 pm</td>
		</tr>
		<tr>
			<td>查经班</br>Bible Study</td>
			<td>礼拜四</br>Thursday </td>
			<td>晚6:30-8:00  </br>6:30 - 8:00 pm</td>
		</tr>

	</tbody>
</table>
<p>&nbsp;</p>

对外开放时间：(礼拜二--礼拜五）</br> 
Weekdays day time program (Tuesday - Friday)
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>清晨祈福</br>Prayer Time</td>
			<td>早9:00-11:00 </br>9:00-11:00am</td>
			<td>人不能给予的帮助，上帝能给予；人不能点破的迷津，上帝能引领；因为惟有他是创世救世的全能大主宰！欢迎您到圣殿中向上帝祈求！对于诚心探索和祈求的人，上帝必定垂听他的祷告，成全他的所想所求！ </br>Come to His temple and pray. God listens to the prayers of those who seek Him! God leads and God provides  because God is the creator of the earth, the almighty God. </td>
		</tr>

		<tr>
			<td>午间饮茶 </br>Tea Time</td>
			<td>午12:30-2:30</br>12:30-2:30pm</td>
			<td>欢迎您在午间来到生命堂饮茶！我们将向您介绍天下第一奇书——圣经。愿您也成为得上帝拣选的有福子民！ </br>Come to church and have a cup of tea with us! We will introduce you to this most wonderful book in this world – Bible. May you become a blessed chosen people of God. </td>
		</tr>
		<tr>
			<td>黄昏小聚</br>Afternoon Gathering</td>
			<td>晚4:00-5:00</br>4:00-5:00pm</td>
			<td>当您确实得到上帝祝福的时候，欢迎您到圣殿中向上帝感恩、还愿！(不收取任何费用，也无任何硬性捐助。) 愿上帝使您力上加力、恩上加恩、福上加福！ </br>We welcome you to give thanks to God in God’s sanctuary. (No fee required.) </td>
		</tr>

	</tbody>
</table>
<p>&nbsp;</p>



'	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body =
'
Weekly Regular Meetings
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日祷告</br>Sunday Prayer Meeting</td>
			<td>礼拜天</br>Sunday </td>
			<td>晚4:00 - 5:30 </br>4:00 - 5:30pm</td>
		</tr>

		<tr>
			<td>主日崇拜</br>Sunday Worship</td>
			<td>礼拜天</br>Sunday </td>
			<td>晚6:40 - 8:00 </br>6:40 - 8:00pm</td>
		</tr>
		<tr>
			<td>祷告会</br>Prayer Meeting</td>
			<td>礼拜四</br>Thursday </td>
			<td>晚4:00-5:30  </br>4:00 - 5:30 pm</td>
		</tr>
		<tr>
			<td>查经班</br>Bible Study</td>
			<td>礼拜四</br>Thursday </td>
			<td>晚6:30-8:00  </br>6:30 - 8:00 pm</td>
		</tr>

	</tbody>
</table>
<p>&nbsp;</p>

对外开放时间：(礼拜二--礼拜五）</br> 
Weekdays day time program (Tuesday - Friday)
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>清晨祈福</br>Prayer Time</td>
			<td>早9:00-11:00 </br>9:00-11:00am</td>
			<td>人不能给予的帮助，上帝能给予；人不能点破的迷津，上帝能引领；因为惟有他是创世救世的全能大主宰！欢迎您到圣殿中向上帝祈求！对于诚心探索和祈求的人，上帝必定垂听他的祷告，成全他的所想所求！ </br>Come to His temple and pray. God listens to the prayers of those who seek Him! God leads and God provides  because God is the creator of the earth, the almighty God. </td>
		</tr>

		<tr>
			<td>午间饮茶 </br>Tea Time</td>
			<td>午12:30-2:30</br>12:30-2:30pm</td>
			<td>欢迎您在午间来到生命堂饮茶！我们将向您介绍天下第一奇书——圣经。愿您也成为得上帝拣选的有福子民！ </br>Come to church and have a cup of tea with us! We will introduce you to this most wonderful book in this world – Bible. May you become a blessed chosen people of God. </td>
		</tr>
		<tr>
			<td>黄昏小聚</br>Afternoon Gathering</td>
			<td>晚4:00-5:00</br>4:00-5:00pm</td>
			<td>当您确实得到上帝祝福的时候，欢迎您到圣殿中向上帝感恩、还愿！(不收取任何费用，也无任何硬性捐助。) 愿上帝使您力上加力、恩上加恩、福上加福！ </br>We welcome you to give thanks to God in God’s sanctuary. (No fee required.) </td>
		</tr>

	</tbody>
</table>
<p>&nbsp;</p>



'	where church_id = (select church_id from church where church_path = 'budapest')
	and locale = 'zh'
	and page_id = 'schedule';




update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道: </b>謝敏惠 傳道
</p>
<p>
<b>地址: </b>1107 Budapest, Monori u.2-4. E12-12 Hungary
</p>
<p>
<b>電話:</b> 0036-30-728-8888
</p>
<p>
<b>電郵: </b>hqxxmh@gmail.com
</p>
<p>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2696.412628536171!2d19.119877115626196!3d47.48187447917655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4741dccbf81cc13f%3A0x79f7511f19ea8f34!2sBudapest%2C+Monori+u.+2-4%2C+1101+Hungary!5e0!3m2!1sen!2sus!4v1523126793802" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</iframe>
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
			<td><a href="mailto:emsikobe@hotmail.com">emsikobe@hotmail.com</a><br />
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
			<td><a href=\"mailto: emsikobe@hotmail.com"> emsikobe@hotmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2008年 2月 17日
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


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>每星期日</br>
				上午 </br>
				晚上</td>
			<td><br>
				10:30 - 11:30</br>
			    21:30 - 22:30</td>
		</tr>
		<tr>
			<td>主日學</td>
			<td>每星期日上午</td>
			<td>10:30 - 11:30</td>
		</tr>
		<tr>
			<td>查經</td>
			<td>每星期日</br>
			每星期三</br>
			每星期五
				</td>
			<td>12:30 - 13:30<br>
			21:00 - 22:00<br>
			17:30 - 18:30<br>
			</td>
		</tr>
		<tr>
			<td>禱告會</td>
			<td>每星期三 </td>
			<td>20:30 - 21:00</td>
		</tr>
		<tr>
			<td>青年團契</td>
			<td>每星期三</td>
			<td>19:00 - 20:30</td>
		</tr>
		<tr>
			<td>姐妹團契</td>
			<td>每月第四週六</td>
			<td>15:30 - 16:30</td>
		</tr>

		<tr>
			<td>弟兄團契</td>
			<td>每月第四週六</td>
			<td>21:00 - 22:00</td>
		</tr>

	</tbody>
</table>

'	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'zh'
	and page_id = 'schedule';

update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Zhang Qiong
</p>
<p>
<b>Address: </b>神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F, Japan
</p>
<p>
<b>Tel #: </b>81-78-381-9837, (C) 81-80-3868-5377
</p>
<p>
<b>Email: </b>emsikobe@hotmail.com
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
<b>地址: </b>日本神戶市中央區元町通 3-2-15ｾﾝﾄﾗﾙﾋﾞﾙ元町3F
</p>
<p>
<b>電話:</b> 81-78-381-9837, (C) 81-80-3868-5377
</p>
<p>
<b>電郵: </b>emsikobe@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=%E7%A5%9E%E6%88%B6%E5%B8%82%E4%B8%AD%E5%A4%AE%E5%8D%80%E5%85%83%E7%94%BA%E9%80%9A+2-9-1+%E5%85%83%E7%94%BA+703%E5%AE%A4&amp;ie=UTF8&amp;hq=&amp;hnear=Japan,+Hy%C5%8Dgo-ken,+K%C5%8Dbe-shi,+Ch%C5%AB%C5%8D-ku,+Motomachid%C5%8Dri,+%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%99%E2%88%92%EF%BC%91+%E5%85%83%E7%94%BA%E3%83%97%E3%83%A9%E3%82%B6&amp;gl=us&amp;ll=34.688923,135.186962&amp;spn=0.006616,0.011351&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'zh'
	and page_id = 'contactus';


update church_content set title = STRINGDECODE('
神戶基督教生命堂 - 聚會日程
')	where church_id = (select church_id from church where church_path = 'kobe')
	and locale = 'zh'
	and page_id = 'schedule';

update church_content set title = STRINGDECODE('
神戶基督教生命堂 - 連絡我們
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
			<td class="label"> Assistant Evangelist </td>
			<td>Ivy Lai, 0081-070-4216-6554</td>
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
<span class="label">Established Date: </span>October 10, 2010
</p>
<p>
<img src="/emsi/files/osaka_small[1].jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />Pastor Yang was burdened with Gospel outreach in Osaka in October 2009. We prayed earnestly for a church building. A rental property became our purchase target in in February 2010.
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
			<td class=\"label\">助理傳道 </td>
			<td>黎淑芬, 0081-070-4216-6554</td>
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
<b>成立日期:</b> 2010年 10月 10日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/osaka_small[1].jpg\" align=\"left\" height=\"255\" width=\"360\" />2009年10月楊牧師有感動要在大阪發展聖工，成立教會。然而租借聚會地方的道路卻屢屢受阻。經過迫切地禱告，2010年2月一間肯租給我們當教會的地方成為我們購堂的對象。
購堂過程並不順利，第一間預定購買的禮拜堂沒有成交。神的旨意卻超乎所求所想，將一間更好的禮拜堂賜給我們，2010年 9月3日總監督楊摩西牧師來日本親自簽約; 簽約後開始為期約3個月的準備及裝修， 2010年10月10日我們在三樓不用裝修的房間首次禮拜; 2010年12月5日總監督楊摩西牧師親臨主持日本亞洲宣教大樓落成暨大阪基督教生命堂啟用剪彩與獻堂感恩禮拜。
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
<b>Assistant Evangelist: </b>Ivy Lai, 0081-070-4216-6554
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
<b>助理傳道:</b>黎淑芬, 0081-070-4216-6554
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

update church_content set title = STRINGDECODE('
大阪(美國)基督教生命堂 - 教會簡介
')	where church_id = (select church_id from church where church_path = 'osaka')
	and locale = 'zh'
	and page_id = 'intro';

update church_content set title = STRINGDECODE('
大阪(美國)基督教生命堂 - 連絡我們
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

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(47, 'schedule', 'zh', '大阪(美國)基督教生命堂 - 聚會日程', STRINGDECODE('
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


---** update church_content set body = '<style>
---** .contact-content {font-family: Arial,helvetica,sans-serif;}
---** .contact-content td {font-size: small; padding: 2px; 3px;}
---** td.label {font-weight: bold; width: 1%; white-space: nowrap;}
---** p span.label {font-weight: bold;}
---** .main-content {font-family: Arial, MingLiU, Helvetica, san-serif; font-size: 13px; color: #333;}
---** .borderless-table {border-width: 0px;}
---** </style>
---** <div class="contact-content">
---** <div style="color: #000000; font-size: small">
---** <table cellpadding="0px" cellspacing="0px">
---** 	<tbody class="borderless-table">
---** 		<tr>
---** 			<td class="label">Pastor: </td>
---** 			<td>Rev. Lennie Chen (C)0919962589</td>
---** 		</tr>
---** 	</tbody>
---** </table>
---** <div style="margin-left: 20px">
---** <table cellpadding="1px" cellspacing="0px">
---** 	<tbody class="borderless-table">
---** 		<tr>
---** 			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
---** 			<td class="label">Address:</td>
---** 			<td> 1st Fl, #29, Alley 25, Lane 113, Sec. 3 Mingsheng E. Rd., Taipei, Taiwan</td>
---** 		</tr>
---** 		<tr>
---** 			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
---** 			<td class="label">Tel#:</td>
---** 			<td>+886-2-2713-3769</td>
---** 		</tr>
---** 		<tr>
---** 			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
---** 			<td class="label">Fax#:</td>
---** 			<td>+886-2-2713-3769</td>
---** 		</tr>
---** 		<tr>
---** 			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
---** 			<td class="label">Email:</td>
---** 			<td><a href="mailto:emsitaipei@hotmail.com">emsitaipei@hotmail.com</a><br />
---** 			</td>
---** 		</tr>
---** 	</tbody>
---** </table>
---** </div>
---** </div>
---** <hr align="center" size="1" width="100%" />
---** </div>
---** <div class="main-content">
---** <p>
---** <span class="label">Established Date: </span>Sept 23, 2007
---** </p>
---** <p>
---** <img src="/emsi/images/church_taipei.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />The C.E.C. in Taipei was officially established on September 23, 2007. C.E.M. then commissioned Rev. and Mrs. Chan from Holland to pastor the church on a short-term basis. In August 2008, Pastor and Mrs. Zion Wu were sent to Taipei to shepherd CEC Taipei. He was replaced by Pastor Hosea Chi in February 2010. In April 2013, Pastor Teddy Chen replaced Pastor Chi as the pastor of CEC Taipei. In January 2017, Pastor Lennie Chen became the pastor of CEC in Taipei.
---** </p>

---** </div>
---** '	where church_id = (select church_id from church where church_path = 'taipei')
---** 	and locale = 'en'
---** 	and page_id = 'intro';


---** update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
---** font-family: Arial,helvetica,sans-serif,新細明體;}
---** .contact-content td {font-size: 14px; padding: 2px; 3px;}
---** td.label {font-weight: bold; width: 1%; white-space: nowrap;}
---** p span.label {font-weight: bold;}
---** .main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
---** .borderless-table {border-width: 0px;}
---** </style>\r\n<div class=\"contact-content\">
---** <div style=\"color: #000000; font-size: small\">
---** <table cellpadding=\"0\" cellspacing=\"0\">
---** 	<tbody class=\"borderless-table\">
---** 		<tr>
---** 			<td class="label">牧師: </td>
---** 			<td>陳聆理 牧師 (手機)0919962589</td>
---** 		</tr>
---** 	</tbody>
---** </table>
---** <br /><div style=\"margin-left: 20px\">
---** <table cellpadding=\"1\" cellspacing=\"0\">
---** 	<tbody class=\"borderless-table\">
---** 		<tr>
---** 			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
---** 			<td class=\"label\">地址:</td>
---** 			<td> 台北市民生東路三段113巷25弄29號1樓</td>
---** 		</tr>
---** 		<tr>
---** 			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
---** 			<td class=\"label\">電話:</td>
---** 			<td> +886-2-2713-3769 </td>
---** 		</tr>
---** 		<tr>
---** 			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
---** 			<td class=\"label\">傳真:</td>
---** 			<td> +886-2-2713-3769 </td>
---** 		</tr>
---** 		<tr>
---** 			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
---** 			<td class=\"label\">電郵:</td>
---** 			<td><a href=\"mailto: emsitaipei@hotmail.com"> emsitaipei@hotmail.com</a></td>
---** 		</tr>
---** 	</tbody>
---** </table>
---** </div>
---** </div>
---** <hr align=\"center\" size=\"1\" width=\"100%\" />
---** </div>
---** <div class=\"main-content\">
---** <p>
---** <b>成立日期:</b> 2007年 9月 23日
---** </p>
---** <p>
---** <span class=\"label\">簡史: </span><br />
---** <img hspace=\"5\" src=\"/emsi/images/church_taipei.jpg\" align=\"left\" height=\"255\" width=\"360\" />2007年，在楊摩西牧師的感動下開始了台灣拓荒宣教事工，同年九月廿三日成立教會，總部特由歐洲調派陳啟猷牧師夫婦前往短期協助牧會。2007年11月遷入台北市松山區敦化環球名廈的大樓裡。2008年4月教會人數倍增，故遷入新址，即台北市松山區民生東路3段113巷25弄29號一樓現址，開展教會事工。2008年9月差派吳錫安牧師夫婦牧會；2010年2月由戚厚生牧師繼續牧養羊群；2013年4月由陳俊年傳道夫婦接任；2017年1月起，由陳聆理牧師夫婦負責牧養。
---** </p>


---** </div>
---** ')	where church_id = (select church_id from church where church_path = 'taipei')
---** 	and locale = 'zh'
---** 	and page_id = 'intro';


---** INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(48, 'schedule', 'en', 'CEC in Taipei - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
---** 	<tbody>
---** 		<tr>
---** 			<td>Worship Service</td>
---** 			<td>Sunday</td>
---** 			<td>10:30 am</td>
---** 		</tr>
---** 		<tr>
---** 			<td>Children’s Sunday School</td>
---** 			<td>Sunday</td>
---** 			<td>10:30 am</td>
---** 		</tr>
---** 		<tr>
---** 			<td>Choir Practice</td>
---** 			<td>Sunday</td>
---** 			<td>12:30 pm</td>
---** 		</tr>
---** 		<tr>
---** 			<td>Bible Study & Prayer Meeting</td>
---** 			<td>Wednesday</td>
---** 			<td>10:00 am</td>
---** 		</tr>
---** 		<tr>
---** 			<td>Youth Fellowship</td>
---** 			<td>Saturday</td>
---** 			<td>7:00 pm</td>
---** 		</tr>
---** 		<tr>
---** 			<td>Outdoor Fellowship</td>
---** 			<td>3rd Sunday of the Month</td>
---** 			<td>1:00 pm</td>
---** 		</tr>
---** 	</tbody>
---** </table>

---** <p>&nbsp;</p>
---** ');


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
<span class="label">Established Date: </span>August 3, 2008
</p>
<p>
\u201cServe the Lord with fear, and rejoice with trembling\u201d (Psalm 2:11)
</p>
<img src="/emsi/files/milan2011.jpg" alt="CEC Milan" title="CEC Milan" height="240" align="left" hspace="5" width="360" />
<p>
In late March, 2007, Rev. Moses Yang brought Rev. Hosea Chi and Rev. Jian Wei Ye to Italy for a five-day exploration trip. Afterward, they decided to send Ev. Grace Zheng to start the pioneering work in Milan.
</p>
<p>
In June, 2008, Rev. Moses Yang, Rev. Zion Wu, Rev. Hosea Chi and Ev. Grace Zheng met up in Milan. They rented a car from the airport to look for a place where they could gather for worship and a place for Ev. Grace Zheng to live. The three pastors spent three days in Milan. The night before their departure, God provided us with a convenient place for worship, which was more than what we could ask or expect. On August 3, 2008, the first Sunday Worship Service was held.
</p>
<p>
In April, 2010, Rev. Yang decided to look for a larger place in order to expand the ministry. We thanked the Lord that Ev. Zheng found a Roman Catholic Church. In November, 2011, the Milanese government approved our use of the lower floor of the Roman Catholic church as our meeting place for free. This place has a seating capacity of 200 people; and is merely a five-minute walk from our mission house. Again God has prepared for us a place beyond what we can ask or expect.
</p>
<p>
When EMSI reaches its 50th anniversary, our church would have had a ten- year journey! Italy has the most number of Chinese churches in Europe. May the Lord strengthen us as we stand fast in the truth. May the Lord add to the number of people who get saved in our church.
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
<b>成立日期:</b> 2008年 八月3日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/milan2011.jpg\" align=\"left\" height=\"255\" width=\"360\" />
2007年3月25日，楊摩西牧師，與戚厚生牧師、葉建偉牧師前往意大利考察福音工場。在短短的五天內決定在意大利開展米蘭福音事工，並差派在美國總院畢業已回中國服事的鄭恩惠傳道，到米蘭開展拓荒工作。
</p>
<p>2008年6月，楊摩西牧師與吳錫安牧師、戚厚生牧師、鄭恩惠傳道在米蘭機場會合。租輛車子到處找聚會場所和住處，僅僅三天的時間，就在三位牧師要離開米蘭的前一晚，上帝給米蘭生命堂預備了超過我們所求所想的聚會場地。離米蘭中央火車站步行十幾分鐘，交通十分方便。2008年 8月3日我們開始第一次主日禮拜。
為了更好的開展福音事工，楊牧師決定要有大一些的場地聚會，上帝垂聽了我們的禱告，2011年11月，米蘭政府批准我們借用天主教堂下面的一個場地聚會，能容納200多人，離佈道會步行5分鐘的路程，上帝預備的總是超過我們所求所想。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'milan')
	and locale = 'zh'
	and page_id = 'intro';


----------ends Italy - milan


---------  starts Holland rotterdam

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
			<td>Rev. Hugo K.Y. Chan</td>
		</tr>
		<tr>
			<td class="label">Pastor:</td>
			<td>Rev. W.H. Tang</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Donarpad 9, 3072 EB Rotterdam, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>31-(0)10-411-4990</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>31-(0)84-223-9576</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsi-rotterdam@zonnet.nl">emsirotterdam@gmail.com</a><br />
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
<span class="label">Established Date: </span>July 1975
</p>
<p>
<img src="/emsi/files/rotterdamsmall.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />
We are the first of twelve Netherlands churches established under C.E.M. in Europe (formerly Chinese Evangelical Mission in Europe).
</p>

<p>1968-1971
</br>The church started with youth activities and gatherings and gradually developed to spread the Gospel of Jesus Christ.</span>
</p>

<p>1972-1974
</br>We started adult Sunday worship, Sunday school and Youth Fellowship in Putse Poort neighborhood in southern Rotterdam. In two years, believers in Christ increased and the Chinese Evangelical Mission in Europe (abbreviated as the Mission below) was established in October 1974.</span>
</p>

<p>1975-1986
</br>In early 1975 the Mission bought a property in the old Chinatown (Katendrecht) in Rotterdam as a base to spread the gospel. Our church was also formally established in July of that year. Since then the Church not only spread Gospel to the Chinese in the city of Rotterdam, but also take the responsibility in assisting the Mission to spread the gospel to all Netherland (such as publication of bimonthly periodical, the establishment of social services, Chinese schools and Dutch conversation classes, recreational and sports activities etc.), and expansion of the gospel ministry (such as pioneering youth evangelical outreach programs in den Hague, Utrecht and Amsterdam, etc.)</span>
</p>

<p>1986-1996
</br>In September 1986 we moved to the center of Rotterdam at Boomgaardsstraat 232-248. There were three four-story buildings. They could be used for various meetings and activities of the Church on the one hand, and could be leased to Chinese communities for public gatherings and community activities. In ten years, the center was developing Gospel ministries and deeper life ministries in the church fellowships (such as Evergreen, brothers, sisters and young people, and children); it also encouraged the church members to actively participate in the local Chinese organizations and services (such as the Chinese Welfare Association, Chinese schools, the senior citizens\u2019 club and women\u2019s club, etc.) in order to practice the teachings of Christ to love the world.</span>
</p>

<p>1997-present
</br>In May 1997 the Mission joined the Evangelical Mission and Seminary International in North America (referred to as EMSI), the Church has changed its name to &quot;EMSI in Europe CEME Rotterdam&quot; (referred to as CEME Rotterdam). The Church has been established over three decades. The gospel needs among the &quot;second generation&quot; Netherlands Chinese is significantly increased. In early 1997, we started additional worship service in Dutch, (twice a month), so that we may reach out to Dutch speaking friends. In1999, EMSI headquarter in North America sent out a mission team to the Netherlands, to start gospel work in Breda and Bergen op Zoom; the Church took up the responsibility to build up CEMC churches there, sending preachers and brothers and sisters responsible for organizing, presiding meetings, and Sunday school, etc.. Now the two churches have grown steadily. There are over three hundred members in our church and the number of friends attending various fellowship are over a hundred. We thank God, who provided a new church building in the old Chinatown (Katendrecht) in September 2009. It can accommodate more people to listen to the Gospel. It also allows different gospel groups to have ample space for gatherings and continue to work for the Lord until His return.</span>
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'rotterdam')
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
			<td>陳啟猷 牧師</td>
		</tr>
		<tr>
			<td class=\"label\">牧師:</td>
			<td>鄧偉康  牧師</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Donarpad 9, 3072 EB Rotterdam, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 31-(0)10-411-4990</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td>31-(0)84-223-9576</td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsi-rotterdam@zonnet.nl">emsirotterdam@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1975年 7月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<p>
<img src="/emsi/files/rotterdamsmall.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />
我們是國際福音佈道會-歐洲區-荷蘭分會 (前身是旅歐華僑福音佈道會) 屬下在荷蘭十二間堂會的第一間。
</p>

<p>1968-1971</br>
本堂從青少年活動及聚會逐步開拓傳揚基督真理的工作。
</p>

<p>1972-1974</br>
借用鹿特丹南部Putse Poort街坊會作成人主日崇拜、主日學及青少年團契聚會之用。兩年間，信奉耶穌基督的僑胞日增，因而旅歐華僑福音佈道會 (下稱佈道會) 於1974年10月正式成立。
</p>

<p>1975-1986</br>
1975年初佈道會在鹿特丹舊唐人街 (Katendrecht) 區內購得一棟樓宇作為福音拓展基址。本堂亦於該年七月正式成立。自此本堂不但積極向鹿特丹市的華人傳福音，同時亦挑起協助佈道會舉辦全國的福音預工的重任 (如出版雙月刊、設立社工服務、開辦中文學校及荷語會話班、康樂及體育活動等等)，和拓展福音事工 (如開拓海牙、烏特勒及荷京青年福音事工及夏令會等)。
</p>

<p>1986-1996</br>
1986年9月遷往鹿特丹市中心 Boomgaardsstraat 232-248，是三棟四層自購的樓宇，地方不僅可供本堂各項聚會及活動之用，同時又可租借給一些華人公益社團舉辦大型聚會及活動。在此十年期間，本堂一方面發展教會群體事工 (如長青、弟兄、姊妹及青少年、兒童等群體福音及培訓聚會及活動)；另又鼓勵會友們積極參與僑社的組織及服務 (如華人福利促進會、中文學校、老人及婦女會、志願工作團體等等)，以實踐基督愛世人之教誨。
</p>

<p>1997-至今</br>
1997年5月佈道會加盟北美國際福音佈道會神學院，本堂亦易名為「歐洲福音佈道會鹿特丹基督教生命堂」(簡稱鹿特丹生命堂)。本堂因創堂已逾三十載，在「第二代」中的福音工作需要明顯增加，為應他們的需要，本堂於1997年初增設荷語崇拜 (每月兩次)，讓我們能有接觸操荷語朋友的機會。1999年中，經北美總會派出短宣隊來荷，開展百合山 (Bergen op Zoom) 和百利達 (Breda) 的福音工作；本堂願意負起在該兩地建立生命堂的責任，派出義務傳道及弟兄姊妹負責組織、領會及主日學等工作，至今該兩堂已穩定成長</br>
</br>
目前本堂的大小會友已超過300名，經常參加不同聚會的朋友也有百多人，感謝神，祂為我們於2009年9月在舊唐人街 (Katendrecht) 預備了全新的會址，能容納更多人聽信福音，又能讓不同的福音群體有充裕空間舉行聚會，繼續為主作工，直到主再來的日子！
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'rotterdam')
	and locale = 'zh'
	and page_id = 'intro';



---------  ends Holland rotterdam

----------  starts Holland Den Haag



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
			<td>Rev. Hugo K. Y. Chan (+31-(0)64-009-4225)</td>
		</tr>
		<tr>
			<td class=\"label\">Evangelists:</td>
			<td>Ev. Chun Yu Lau (+31-(0)61-357-4829)</td>
		</tr>
		<tr>
			<td class=\"label\"></td>
			<td>Ev. Chandice Lau-Lee (+31-(0)62-884-7813)</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Isingstraat 165 A, 2522 JS Den Haag, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>+31-(0)70-388-1785</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" size="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>September 3, 1977
</p>
<p>
<img src="/emsi/files/church_denhaag.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />
With the growth of Rotterdam families and youths, Elder Tung Lee proposed to start Youth Fellowship and Chinese School on Saturdays in Den Haag. With Ev. Erna Chan (Shi-Mu) leading the youths to spearhead these ministries, and missionary Sister Annemarie Reichel from Germany visiting the Chinses families, contacts were made with the locals in Den Haag, paving the way for establishing a church in Den Haag. In 1977, Elder Lee found a 2 story building in Paulus Petterstraat. With the help of the youth group in renovation, the church dedicated the building on September 3rd, 1977, beginning its Worship Service and Sunday School, thus begin the second church in The Netherlands.

</p>



</div>
'	where church_id = (select church_id from church where church_path = 'denhaag')
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
			<td>陳啟猷 牧師 (+31-(0)64-009-4225)</td>
		</tr>
		<tr>
			<td class=\"label\">傳道:</td>
			<td>劉震宇 傳道 (+31-(0)61-357-4829)</td>
		</tr>
		<tr>
			<td class=\"label\"></td>
			<td>劉李嘉欣 傳道 (+31-(0)62-884-7813)</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Isingstraat 165 A, 2522 JS Den Haag, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> +31-(0)70-388-1785</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1977年 9月3日


</p>
<p>
<span class=\"label\">簡史: </span><br />
<p>
<img src="/emsi/files/church_denhaag.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />
從海牙前往鹿特丹聚會的家庭及青年人日漸加增，李棟長老則建議先在海牙週六開始青年團契及中文學校，由陳師母帶領一批青年弟兄姐妹負責推展這些工作，而從德國來的賴思迪姑娘則負起探訪該市的華人家庭。如此便逐漸擴大接觸該市未信僑胞，為開拓海牙教會鋪路。在一九七七年中，李長老覓得Paulus Potterstraat一棟兩層的樓宇，與當時的一群年青的弟兄姐妹合力裝修，在同年的九月三日舉行獻堂禮，開始每主日的崇拜及主日學，荷蘭第二間生命堂便告誕生了！
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'denhaag')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Senior Pastor: </b>Rev. Hugo K. Y. Chan (+31-(0)64-009-4225)
</p>
<p>
<b>Evangelists: </b>
<p style="padding-left: 55px;">
Ev. Chun Yu Lau (+31-(0)61-357-4829)</p>
<p style="padding-left: 55px;">
Ev. Chandice Lau-Lee (+31-(0)62-884-7813)</p>
<p>
<b>Address: </b>Isingstraat 165 A, 2522 JS Den Haag, The Netherlands
</p>
<p>
<b>Tel #: </b>+31-(0)70-388-1785
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2453.005193968731!2d4.321356179334377!3d52.06142907796436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5b6e6633f2af7%3A0x3e004e8674e999f2!2sIsingstraat%20165A%2C%202522%20JS%20Den%20Haag%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1631932192900!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'denhaag')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>主任牧師:</b> 陳啟猷 牧師 (+31-(0)64-009-4225)
</p>
<p>
<b>傳道: </b>
<p style="padding-left: 40px;">
劉震宇 傳道 (+31-(0)61-357-4829)</p>
<p style="padding-left: 40px;">
劉李嘉欣 傳道 (+31-(0)62-884-7813)</p>
<p>
<b>地址: </b>Isingstraat 165 A, 2522 JS Den Haag, The Netherlands
</p>
<p>
<b>電話:</b>+31-(0)70-388-1785
</p>


<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2453.005193968731!2d4.321356179334377!3d52.06142907796436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5b6e6633f2af7%3A0x3e004e8674e999f2!2sIsingstraat%20165A%2C%202522%20JS%20Den%20Haag%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1631932192900!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'denhaag')
	and locale = 'zh'
	and page_id = 'contactus';









----------  ends Holland Den Haag


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
<b>成立日期:</b> 2012年 2月 12日
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



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(17, 'schedule', 'en', 'CEC in Arnhem - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>每月第二、第四個星期日 上 午 十一 時</br>Every 2nd and 4th Sundays 11:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>每月第二、第四個星期日 上 午 十 一時 </br>Every 2nd and 4th Sundays 11:00 am</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(17, 'schedule', 'zh', '安恆基督教生命堂 - 聚會日程',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>每月第二、第四個星期日 上 午 十一 時</br>Every 2nd and 4th Sundays 11:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>每月第二、第四個星期日 上 午 十 一時 </br>Every 2nd and 4th Sundays 11:00 am</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');



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
			<td>+31(0)318-76-9144 / +31(0)650-65-2284</td>
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
			<td class=\"label\">牧師:</td>
			<td>鍾志勳牧師</td>
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
			<td> +31(0)318-76-9144 / +31(0)650-65-2284 </td>
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
<b>成立日期:</b> 2012年 10月 20日
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
<b>Pastor: </b>Rev. Louis Chung
</p>
<p>
<b>Worship Address: </b>Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands
</p>
<p>
<b>Office Address: </b>Zandstraat 103, 3905 EB, Veenendaal , The Netherlands
</p>
<p>
<b>Tel #: </b>+31(0)318-76-9144 / +31(0)650-65-2284
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
<b>牧師:</b> 鍾志勳牧師
</p>
<p>
<b>教會崇拜地址: </b>Zandstraat 36-38, 3901 CM, Veenendaal, The Netherlands
</p>
<p>
<b>辦公室地址: </b>Zandstraat 103, 3905 EB, Veenendaal , The Netherlands
</p>
<p>
<b>電話:</b> +31(0)318-76-9144 / +31(0)650-65-2284
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



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(18, 'schedule', 'en', 'CEC in Veenendaal - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十 時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十 時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>姊妹團契</br>Sisters Fellowship</td>
			<td>每月第二個  周六上 午 十 時</br>2nd Saturday of the month 10:00 am</td>
		</tr>
		<tr>
			<td>中文 查經</br>Chinese Bible Study</td>
			<td>每月第二、第四個周一上 午 十 時</br>2nd and 4th Monday of the month 10:00 am</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(18, 'schedule', 'zh', '福臨道基督教生命堂 - 聚會日程',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十 時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十 時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>姊妹團契</br>Sisters Fellowship</td>
			<td>每月第二個  周六上 午 十 時</br>2nd Saturday of the month 10:00 am</td>
		</tr>
		<tr>
			<td>中文 查經</br>Chinese Bible Study</td>
			<td>每月第二、第四個周一上 午 十 時</br>2nd and 4th Monday of the month 10:00 am</td>
		</tr>
	</tbody>
</table>
</br>


<p>&nbsp;</p>
');


----------  ends Holland - veenendaal

----------  starts Holland - Leeuwarden
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(19, 'schedule', 'en', 'CEC in Leeuwarden - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 600px;">
	<tbody>
		<tr>
			<td>崇拜</br>Worship Service</td>
			<td>星期二  </br>Tuesday</td>
			<td>上 午 十 時至十二時</br>10:00 am - 12:00 pm</td>
			<td>Wijkcentrum Bilgaard</br>社區中心</br>De Hooidollen 8 8918 HV Leeuwarden</td>
		</tr>
		<tr>
			<td>荷蘭東北三省弟兄姊妹聯合聚會</br>The Three Northeastern Provinces of Netherlands Fellowship</td>
			<td>每月第四個星期一</br>4th Mondays</td>
			<td>上 午 十 一時 </br>11:00 am</td>
			<td>Wereldgeluk 餐廳</br>Atoomweg 3 Groningen</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(19, 'schedule', 'zh', '樂華城基督教生命堂 - 聚會日程',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 600px;">
	<tbody>
		<tr>
			<td>崇拜</br>Worship Service</td>
			<td>星期二  </br>Tuesday</td>
			<td>上 午 十 時至十二時</br>10:00 am - 12:00 pm</td>
			<td>Wijkcentrum Bilgaard</br>社區中心</br>De Hooidollen 8 8918 HV Leeuwarden</td>
		</tr>
		<tr>
			<td>荷蘭東北三省弟兄姊妹聯合聚會</br>The Three Northeastern Provinces of Netherlands Fellowship</td>
			<td>每月第四個星期一</br>4th Mondays</td>
			<td>上 午 十 一時 </br>11:00 am</td>
			<td>Wereldgeluk 餐廳</br>Atoomweg 3 Groningen</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');



----------  ends Holland - Leeuwarden



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
<b>成立日期:</b> 2009年 8月 29日
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
<b>成立日期:</b> 1981年 10月 24日
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


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(22, 'schedule', 'en', 'CEC in Utrecht - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>青年團契</br>Yound Adult Fellowship </td>
			<td>每月隔週五 晚上 八時</br>Every Other Friday 8:00 pm</td>
		</tr>
		<tr>
			<td>青年菏蘭語團契</br>Yound Adult Dutch Fellowship </td>
			<td>每月隔週三  晚上 八時</br>Every Other Wednesday 8:00 pm</td>
		</tr>
		<tr>
			<td>少年團契</br>Youth Fellowship</td>
			<td>每月第一個星期日 下午一時  </br>1st Sundays 1:00 pm</td>
		</tr>
		<tr>
			<td>姊妹團契</br>Sister Fellowship</td>
			<td>每月第一個星期六 上 午 十時  </br>1st Saturdays 10:00 am</td>
		</tr>
		<tr>
			<td>弟兄團契</br>Brother Fellowship</td>
			<td>每月第一個星期一 晚上 七時  </br>1st Mondays 7:00 pm</td>
		</tr>
		<tr>
			<td>長青團契</br>Ever Green Fellowship</td>
			<td>每月第三個星期一 下午三時  </br>3rd Mondays 3:00 pm</td>
		</tr>
		<tr>
			<td>國語查經班</br>Mandarin Bible Study</td>
			<td>每月第一,第三個星期日 下午一時  </br>1st and 3rd Sundays 1:00 pm</td>
		</tr>
		<tr>
			<td>周一 查經班</br>Monday Bible Study</td>
			<td>每月第二個星期一上 午十時  </br>2nd Mondays 10:00 am</td>
		</tr>
		<tr>
			<td>周 六查經班</br>Saturday Bible Study</td>
			<td>每月第三,第四個星期六 上午十時  </br>3rd and 4th Saturdays 10:00 am</td>
		</tr>
		<tr>
			<td>伉儷團契</br>Family Fellowship</td>
			<td>每季一次  </br>Once Every Season</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');

update church_content set body =
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>青年團契</br>Yound Adult Fellowship </td>
			<td>每月隔週五 晚上 八時</br>Every Other Friday 8:00 pm</td>
		</tr>
		<tr>
			<td>青年菏蘭語團契</br>Yound Adult Dutch Fellowship </td>
			<td>每月隔週三  晚上 八時</br>Every Other Wednesday 8:00 pm</td>
		</tr>
		<tr>
			<td>少年團契</br>Youth Fellowship</td>
			<td>每月第一個星期日 下午一時  </br>1st Sundays 1:00 pm</td>
		</tr>
		<tr>
			<td>姊妹團契</br>Sister Fellowship</td>
			<td>每月第一個星期六 上 午 十時  </br>1st Saturdays 10:00 am</td>
		</tr>
		<tr>
			<td>弟兄團契</br>Brother Fellowship</td>
			<td>每月第一個星期一 晚上 七時  </br>1st Mondays 7:00 pm</td>
		</tr>
		<tr>
			<td>長青團契</br>Ever Green Fellowship</td>
			<td>每月第三個星期一 下午三時  </br>3rd Mondays 3:00 pm</td>
		</tr>
		<tr>
			<td>國語查經班</br>Mandarin Bible Study</td>
			<td>每月第一,第三個星期日 下午一時  </br>1st and 3rd Sundays 1:00 pm</td>
		</tr>
		<tr>
			<td>周一 查經班</br>Monday Bible Study</td>
			<td>每月第二個星期一上 午十時  </br>2nd Mondays 10:00 am</td>
		</tr>
		<tr>
			<td>周 六查經班</br>Saturday Bible Study</td>
			<td>每月第三,第四個星期六 上午十時  </br>3rd and 4th Saturdays 10:00 am</td>
		</tr>
		<tr>
			<td>伉儷團契</br>Family Fellowship</td>
			<td>每季一次  </br>Once Every Season</td>
		</tr>
	</tbody>
</table>
</br>

'	where church_id = (select church_id from church where church_path = 'utrecht')
	and locale = 'zh'
	and page_id = 'schedule';


-------------- ends Holland - Utrecht
----------  starts Holland - zwolle

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(24, 'schedule', 'en', 'CEC in Zwolle - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>星期一 中午 十 二時  </br>Monday 12:00 noon</td>
		</tr>

		<tr>
			<td>家庭團契</br>Family Fellowship</td>
			<td>每月第一個星期一 晚上 七時 </br>1st Mondays 7:00 pm</td>
		</tr>
		<tr>
			<td>查經班</br>Bible Study</td>
			<td>每月第一個星期一 下午二時  </br>1st Mondays 2:00 pm</td>
		</tr>

		<tr>
			<td>祈禱會</br>Prayer Meeting</td>
			<td>每月兩次週一 下 午 二時 </br>Twice a month on Mondays 2:00 pm</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');

update church_content set body =
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>星期一 中午 十 二時  </br>Monday 12:00 noon</td>
		</tr>

		<tr>
			<td>家庭團契</br>Family Fellowship</td>
			<td>每月第一個星期一 晚上 七時 </br>1st Mondays 7:00 pm</td>
		</tr>
		<tr>
			<td>查經班</br>Bible Study</td>
			<td>每月第一個星期一 下午二時  </br>1st Mondays 2:00 pm</td>
		</tr>

		<tr>
			<td>祈禱會</br>Prayer Meeting</td>
			<td>每月兩次週一 下 午 二時 </br>Twice a month on Mondays 2:00 pm</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'zwolle')
	and locale = 'zh'
	and page_id = 'schedule';



----------  ends Holland zwolle




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
			<td>Goeseelsstraat 30, 4817 MV Breda, The Netherlands</td>
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
<img src="/emsi/images/Church_Breda_11_6_18.jpg" align="left" width="360" height="255" hspace="5"/>
</p>
<p>
1997-2001<br>
On July 1999 Reverend Moses Yang led the co-workers and bible institute students from the North American headquarters to the Netherlands for a short missionary trip. This mission included three days of door to door visits in Breda and one evangelical meeting in the evening. The Holy Spirit worked greatly. From the people who were visited and the people who attended the meeting more than twenty believed in the Lord and were refreshed in the spirit. With the encouragement of reverend Yang, the church of Rotterdam was willing to send brother Kan Yun Tat and his wife and sister Tang Kam Fung to help reverend Chan to start the missionary work in Breda. The Lord also moved a brother and his wife to allow the use of their restaurant for gatherings. Some brothers and sisters from Breda who attended church meetings in Rotterdam also immediately participated in the ministry at Breda. In the same year in September the church of Breda began its Sunday worship and Sunday School.
</p>

<p>2002-2006<br>
Brother Kan Yun Tat and his wife and sister Tang Kam Fung were transferred back to the church of Rotterdam to minister. That is why reverend Lam Kok On took responsibility of the ministry in Breda in addition to his own ministry in Bergen op Zoom. Different places were rented to serve as places of worship.
</p>
<p>2007-2010<br>
During this period the church of Rotterdam sent voluntary evangelist Linda Chiu to help with the ministry of sisters and youth. The auditorium of elementary school Basisschool De Rietvink was rented every Sunday for Sunday Worship and Sunday school.
</p>

<p>2011-until now<br>
From 2011 onwards Linda Chiu became a full time evangelist and took responsibility for the missionary work of the Breda church. This allowed reverend Lam Kok On to focus on his ministry in Bergen op Zoom. In the same year a fixed meeting place was rented at Teteringsedijk 89 C in Breda，until October 2018 buy the current new Church building. In addition to Sunday Worship and Sunday school different gatherings were organized, including fellowships for exchange students, sister fellowships, brother fellowships, youth fellowships and several activities for evangelism, such as: Golden Years fellowship and Praise Dance.
</p>

</div>
'	where church_id = (select church_id from church where church_path = 'breda')
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
			<td>趙麗娟 傳道</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> Goeseelsstraat 30, 4817 MV Breda, The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 31-76-532-3351 / 31-62-454-2277 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto:emsibreda@gmail.com">emsibreda@gmail.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1999年 9月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church_Breda_11_6_18.jpg\" alt=\"CEC in Amsterdam\" align=\"left\" height=\"255\" width=\"360\" />
</p>
<p>1997-2001<br>
一九九七年七月北美總會監督楊摩西牧師率領總院神學生及同工來荷短宣，其中包括三天在百利達逐户探訪及一晚的佈道會。聖靈大大動工，被訪和赴會的僑胞決志信主和得復興的有廿多位。在楊牧師的鼓勵下，鹿特丹堂願意派出簡潤達弟兄夫婦及鄧金鳳姐妹協助陳牧師開拓該市的福音工作。主又感動一對弟兄夫婦借出他們的餐館作為聚會之用。一些参加鹿特丹堂聚會的百利達地區的弟兄姐妹也隨即参與事奉。同年九月百利達生命堂便開始主日崇拜和主日學。
</p>

<p>2002-2006<br>
之後簡潤達弟兄夫婦及鄧金鳳姐妹被調回鹿特丹堂服事，所以由當時在百合山教會牧會的林國安牧師兼任百利達教會的事工，而且也租了不同的地點作為崇拜之用。
</p>

<p>2007-2010  <br>
在這段時間鹿特丹教會又派出當時的趙麗娟義務傳道來幫忙姐妹及青少年的工作，當時是每星期日租用一個學校Basisschool De Rietvink的禮堂(Kraanvogel 92, Breda)來做崇拜及主日學的事工。
</p>

<p>2011-至今    <br>
從2011年開始，趙麗娟轉為全職的傳道，直接接管了百利達教會的傳道工作，讓林國安牧師可以專心發展百合山的事工。也在同年租了一個固定的會址在Teteringsedijk 89C，直至2018年10買下目前的新會址繼續 發展不單只崇拜及主日學，也開始了不同的團契，包括了留學生團契、姐妹團契、弟兄團契、青少年團契及一些對外的活動，例如：金色年華、讃美操等。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'breda')
	and locale = 'zh'
	and page_id = 'intro';

	update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Linda Chiu
</p>
<p>
<b>Address: </b>Goeseelsstraat 30, 4817 MV Breda, The Netherlands
</p>
<p>
<b>Tel #: </b>31-76-532-3351 / 31-62-454-2277
</p>
<p>
<b>Email: </b>emsibreda@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2478.509885509949!2d4.793812450672952!3d51.59554541197667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c69f7a87da0f09%3A0x15d08bdcb8b07160!2sGoeseelsstraat+30%2C+4817+MV+Breda%2C+Netherlands!5e0!3m2!1sen!2sus!4v1543090156690" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'breda')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 趙麗娟 傳道
</p>
<p>
<b>地址: </b>Goeseelsstraat 30, 4817 MV Breda, The Netherlands
</p>
<p>
<b>電話:</b> 31-76-532-3351 / 31-62-454-2277
</p>
<p>
<b>電郵: </b>emsibreda@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2478.509885509949!2d4.793812450672952!3d51.59554541197667!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c69f7a87da0f09%3A0x15d08bdcb8b07160!2sGoeseelsstraat+30%2C+4817+MV+Breda%2C+Netherlands!5e0!3m2!1sen!2sus!4v1543090156690" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>

')	where church_id = (select church_id from church where church_path = 'breda')
	and locale = 'zh'
	and page_id = 'contactus';


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
			<td>Poeldijkstraat 8, 1059 VM Amsterdam. The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-(0)-612965512</td>
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
<img src="/emsi/images/Church_Amsterdam10_2018.png" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" />CEC in Amsterdam (The Holland Capital church) was founded in 1990 by CEC in Europe. It is located in the capital of Holland, Amsterdam. Previously, it was a fellowship of young men, which was set up on October 27, 1984 in Amsterdam
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
			<td> Poeldijkstraat 8, 1059 VM Amsterdam. The Netherlands</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 0031-(0)-612965512 </td>
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
<b>成立日期:</b> 1985年 4月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church_Amsterdam10_2018.png\" alt=\"CEC in Amsterdam\" align=\"left\" height=\"255\" width=\"360\" />一九八四年前的幾屆青年福音營都有來自荷京地區的青年人参加，後因不易跟進而多有流失。八四年夏令營後，當時在烏特勒教會牧會的黄良明傳道願意負起開拓荷京青年福音工作，每周六早前往該市帶領青年團契。他們在Stadhouderskade租了一個聾啞中心的地方作聚會之用，又有來自其他三個生命堂的青年弟兄姐妹前來協助，很快聚會的人數有顯著的加增。
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
<b>Address: </b>Poeldijkstraat 8, 1059 VM Amsterdam. The Netherlands
</p>
<p>
<b>Tel #: </b>0031-(0)-612965512
</p>
<p>
<b>Email: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2437.094964514819!2d4.841578015292828!3d52.35056287978251!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5e21e8d5d443d%3A0x165105569e511028!2sPoeldijkstraat+8%2C+1059+VM+Amsterdam%2C+Netherlands!5e0!3m2!1sen!2sus!4v1537488308502" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 黃良明 牧師
</p>
<p>
<b>地址: </b>Poeldijkstraat 8, 1059 VM Amsterdam. The Netherlands
</p>
<p>
<b>電話:</b> 0031-(0)-612965512
</p>
<p>
<b>電郵: </b>emsiamsterdam@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2437.094964514819!2d4.841578015292828!3d52.35056287978251!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5e21e8d5d443d%3A0x165105569e511028!2sPoeldijkstraat+8%2C+1059+VM+Amsterdam%2C+Netherlands!5e0!3m2!1sen!2sus!4v1537488308502" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>

')	where church_id = (select church_id from church where church_path = 'amsterdam')
	and locale = 'zh'
	and page_id = 'contactus';

	INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(23, 'schedule', 'en', 'CEC in Amsterdam - Church Services Schedule',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>但以理少年團契  </br>Daniel (Youth) Fellowship </td>
			<td>星期日   每月兩次 主日崇拜後</br>Twice a Month on Sunday after service</td>
		</tr>
		<tr>
			<td>提多青年團契</br>Titus (Young Adult) Fellowship </td>
			<td>星期五晚上 七時半</br>Friday 7:30 pm</td>
		</tr>
		<tr>
			<td>A+P 成人團契</br>A+P (Adult) Fellowship</td>
			<td>星期三晚上 七時半  </br>Wednesday 7:30 pm</td>
		</tr>
		<tr>
			<td>長青恩典團契</br>Evergreen Grace Fellowship</td>
			<td>每月第四個星期六 中午 十二時  </br>4th Saturdays 12:00 noon</td>
		</tr>
		<tr>
			<td>教會查經聚會</br>Bible Study</td>
			<td>每月第二、第四個星期一晚上 七時半  </br>2nd and 4th Mondays 7:30 pm</td>
		</tr>
		<tr>
			<td>約書亞弟兄團契</br>Joshua (Brothers’) Fellowship</td>
			<td>每月一次   </br>Once a Month</td>
		</tr>
		<tr>
			<td>以斯帖姐妹團契</br>Esther (Sisters’) Fellowship</td>
			<td>每月一次</br>Once a Month</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(23, 'schedule', 'zh', '荷京基督教生命堂 - 聚會日程',
'

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>主日學</br>Sunday School</td>
			<td>周 日 上 午 十時  </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>但以理少年團契  </br>Daniel (Youth) Fellowship </td>
			<td>星期日   每月兩次 主日崇拜後</br>Twice a Month on Sunday after service</td>
		</tr>
		<tr>
			<td>提多青年團契</br>Titus (Young Adult) Fellowship </td>
			<td>星期五晚上 七時半</br>Friday 7:30 pm</td>
		</tr>
		<tr>
			<td>A+P 成人團契</br>A+P (Adult) Fellowship</td>
			<td>星期三晚上 七時半  </br>Wednesday 7:30 pm</td>
		</tr>
		<tr>
			<td>長青恩典團契</br>Evergreen Grace Fellowship</td>
			<td>每月第四個星期六 中午 十二時  </br>4th Saturdays 12:00 noon</td>
		</tr>
		<tr>
			<td>教會查經聚會</br>Bible Study</td>
			<td>每月第二、第四個星期一晚上 七時半  </br>2nd and 4th Mondays 7:30 pm</td>
		</tr>
		<tr>
			<td>約書亞弟兄團契</br>Joshua (Brothers’) Fellowship</td>
			<td>每月一次   </br>Once a Month</td>
		</tr>
		<tr>
			<td>以斯帖姐妹團契</br>Esther (Sisters’) Fellowship</td>
			<td>每月一次</br>Once a Month</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
');



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
<b>成立日期:</b> 1999年 9月
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



----------  starts spain - benidorm
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
			<td>Ev. David Zhou, +34-64-029-2666</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellPadding="1" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Avda. Europa 25, Local-9,03503 Benidorm Alicante , Spain</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-965-868-911</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:cecbenidorm@gmail.com">cecbenidorm@gmail.com</a></td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>34-965-868-911</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" SIZE="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>December 25, 1997
</p>
<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">
<p>
<img hspace="5" src="/emsi/images/Church_Benidorm12_26_18.jpg\" alt="CEC Benidorm" align="left" title="CEC Benidorm" height="270" width="360" />In April 1997, some new believers from Valencia went to Alicante to find jobs, because of their fervency for the Lord. They had influenced other people to have the desire for the gospel. On May 14, 1997, Ev. Joan Dan from the CEC in Valencia went to Atea to visit them. On that day, they established the Atea Bible Study group at the International Restaurant. The owner of the restaurant, Mr. & Mrs. Hu and another 4 people were baptized. Since May 21, Ev. Li and Ev. Ye continually went to Benidorm and the surrounding areas for visitation. In October, Rev. Hosea Chi served there for 2 months. On December 10, they had an evangelistic meeting led by Rev. Moses Yang and 5 members were baptized. On Christmas Day, they had a Christmas Service with 120 people. The CEC in Benidorm was formally established and pastured by Ev. Jian Wei Ye. From May, 1997 to April 2000, there are 49 people who are baptized. The average church attendance is 50-60 people. Aside from the Sunday Worship Service, there is one Bible Study group and a prayer meeting.
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'benidorm')
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
			<td>周長宇 傳道, +34-64-029-2666</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>Avda. Europa 25, Local-9, 03503 Benidorm Alicante , Spain</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 34-965-868-911 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href="mailto:cecbenidorm@gmail.com">cecbenidorm@gmail.com</a></td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 34-965-868-911 </td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1997年 12月 25日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/Church_Benidorm12_26_18.jpg\" alt="CEC Benidorm" align="left" title="CEC Benidorm" height="270" width="360" />一九九七年四月間，瓦倫西亞生命堂初信受洗的劉永月弟兄及阮肖芬姐妹換工作，搬至愛麗甘地省(Alicante)，此地距瓦倫西亞車程約兩個小時，距馬德里則需六個多小時，他們非常熱心的帶起當地華人對福音的渴慕。佈道會派在瓦倫西亞生命堂短宣的但功濤傳道前往Atea城關懷，五月十四日在國際酒樓成立『愛得雅查經班』。當天有餐館老板胡永恒夫婦等六人受洗。隔週李傳道、葉傳道繼續探訪Alicante省Benidorm城、省會Alicante市和地中海沿岸諸城市</p>
<p>六月廿六日，但傳道返美，十月戚傳道至瓦倫西亞生命堂，繼續努力的開發及耕耘愛麗甘地這片未得之地。十二月初，趁楊牧師帶師母至西班牙及葡萄牙旅遊；我們借得貝妮東當地教會，在十二月十日午夜舉辦一場佈道會，會中有五人受洗。該教會外籍牧師夫婦首次見到這麼多華人在深夜聚集聽道，很受感動，建議楊牧師切勿停頓如此聖工，所以我們決定在聖誕節晚上要辦一場晚會。在聖靈的催促與感動下，楊牧師授意要成立「貝妮東基督教生命堂」；並委任葉建偉弟兄為西班牙分會傳道。一九九七年十二月25日午夜，「貝妮東基督教生命堂」成立典禮暨聖誕晚會，在一百二十餘人的禱告讚美聲中揭幕。
</p>



</div>
')	where church_id = (select church_id from church where church_path = 'benidorm')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<p>
<b>Evangelist: </b>Ev. David Zhou, +34-64-029-2666
</p>
<p>
<b>Address: </b>Avda. Europa 25, Local-9, 03503 Benidorm Alicante , Spain
</p>
<p>
<b>Tel #: </b>34-965-868-911
</p>
<p>
<b>email: </b>cecbenidorm@gmail.com
</p>
<p>
<b>Fax #: </b>34-965-868-911
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3120.609642990724!2d-0.12251628527185754!3d38.5427655796269!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd6204f21fdd5645%3A0x6123a4b4bd8cb5a5!2sAv.%20de%20Europa%2C%2025%2C%2003503%20Benidorm%2C%20Alicante%2C%20Spain!5e0!3m2!1sen!2sus!4v1607740370379!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'benidorm')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 周長宇 傳道, +34-64-029-2666
</p>
<p>
<b>地址: </b>Avda. Europa 25, Local-9, 03503 Benidorm Alicante , Spain
</p>
<p>
<b>電話:</b> 34-965-868-911
</p>
<p>
<b>電郵: </b>cecbenidorm@gmail.com
</p>
<p>
<b>傳真:</b> 34-965-868-911
</p>

<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3120.609642990724!2d-0.12251628527185754!3d38.5427655796269!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd6204f21fdd5645%3A0x6123a4b4bd8cb5a5!2sAv.%20de%20Europa%2C%2025%2C%2003503%20Benidorm%2C%20Alicante%2C%20Spain!5e0!3m2!1sen!2sus!4v1607740370379!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'benidorm')
	and locale = 'zh'
	and page_id = 'contactus';


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>12:30 am</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Wednesday</td>
			<td>10:00 pm - 11:30 pm</td>
		</tr>
		<tr>
			<td>Music、Painting</td>
			<td>Sunday</td>
			<td>04:00 pm - 06:00 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'benidorm')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日晚上</td>
			<td>12:30 am</td>
		</tr>
		<tr>
			<td>查經</td>
			<td>星期三晚上</td>
			<td>10:00 pm - 11:30 pm</td>
		</tr>
		<tr>
			<td>音樂、繪畫班</td>
			<td>星期日下午</td>
			<td>4 pm - 6 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'benidorm')
	and locale = 'zh'
	and page_id = 'schedule';


----------  ends spain - Benidorm


----------  starts spain - Alicante
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
			<td class="label">Evangelists:</td>
			<td>Ev. Ruo Shu Chen, +34-618-521-400</td>
		</tr>
		<tr>
			<td class="label"></td>
			<td>Ev. Na Li, +34-640-292-666</td>
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
<img hspace="5" src="/emsi/files/alicante-6-2020.jpg" alt="CEC Alicante" align="left" title="CEC Alicante" height="270" width="360" />The Ministries of Benidorm and Alicante began about the same time in May 1997. With God\u2019s leading, Benodorm was the first established. Because the driving time between Benidorm to Alicante is 40 minutes, Alicante Brothers and Sisters came to Benidorm to worship.
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
			<td>陳若抒 傳道, +34-618-521-400</td>
		</tr>
		<tr>
			<td class=\"label\"></td>
			<td>李娜 傳道, +34-640-292-666</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td> C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 34-965-123-563 </td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2002年 12月 25日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/alicante-6-2020.jpg" alt="CEC Alicante" align="left" title="CEC Alicante" height="270" width="360" />一九九七年五月間，貝妮東（Benidorm）和愛麗甘地（Alicante）兩城的拓荒工作同時展開。神引導、帶領我們先於貝妮東成立生命堂。由於貝妮東至愛麗甘地只要四十分鐘的車程，因此貝妮東生命堂成立後，就有許多愛麗甘地的弟兄姐妹前來聚會。時隔五年之後，愛麗甘地基督教生命堂終於在二○○二年的聖誕節成立了。
</p>
<p>2005年２月，教会在市中心的汽车站后面租到了一套房子可以作为住宿和聚会使用，５月初，从巴黎神学院回来西班牙实习的李素欣就被差派前来爱丽甘地生命堂开展这里教会圣工．
</p>
<p>2005年9月，李素欣传道因病回国，期间由潘少萍传道临时代理教会的牧养工作，之后于10月16日起由赖祖全传道接续牧会直到2006年1月底李素欣传道回来。2006年7月初李素欣传道再次回国治病，教会工作由赖祖全传道负责。
</p>



</div>
')	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<p>
<b>Evangelists: </b>
</p>
<p style="padding-left: 55px;">Ruo Shu Chen, +34-618-521-400
</p>
<p style="padding-left: 55px;">Na Li, +34-640-292-666
</p>
<p>
<b>Address: </b>C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain
</p>
<p>
<b>Tel #: </b>34-965-123-563
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d100150.39507217969!2d-0.53903!3d38.332781!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd62364b06f6ecf1%3A0x5d92193cef4f2137!2sCarrer+Pintor+Aparicio%2C+10%2C+03003+Alacant%2C+Alicante%2C+Spain!5e0!3m2!1sen!2sus!4v1493602921810" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 陳若抒 傳道, +34-618-521-400
</p>
<p style="padding-left: 40px;">
李娜 傳道, +34-640-292-666
</p>
<p>
<b>地址: </b>C / Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain
</p>
<p>
<b>電話:</b> 34-965-123-563
</p>

<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d100150.39507217969!2d-0.53903!3d38.332781!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd62364b06f6ecf1%3A0x5d92193cef4f2137!2sCarrer+Pintor+Aparicio%2C+10%2C+03003+Alacant%2C+Alicante%2C+Spain!5e0!3m2!1sen!2sus!4v1493602921810" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'zh'
	and page_id = 'contactus';


	update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>Sunday Worship</td>
			<td>Sunday</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>Children Sunday School</td>
			<td>Sunday</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Wednesday</td>
			<td>10:00 am - 11:00 am</td>
		</tr>
		<tr>
			<td>Youth Fellowship </td>
			<td>Friday</td>
			<td>5:30 pm - 6:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'en'
	and page_id = 'schedule';


update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>星期日晚上</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>兒童主日學</td>
			<td>星期日晚上</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>查經禱告會</td>
			<td>星期三早晨</td>
			<td>10:00 am - 11:00 am</td>
		</tr>
		<tr>
			<td>青少年團契 </td>
			<td>星期五晚上</td>
			<td>5:30 pm - 6:30 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'alicante')
	and locale = 'zh'
	and page_id = 'schedule';

----------  ends spain - Alicante




----------  starts spain - Valencia
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
			<td class="label">Pastor:</td>
			<td>Rev. Yong Chun Ye, (0034)61-861-8993</td>
		</tr>
	</tbody>
</table>
<div style="margin-left: 20px">
<table cellPadding="1" cellSpacing="0">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>Calle Brasil 73, Valencia 46018, Spain</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>34-96-336-5441</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>34-96-336-5441</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsivalencia@hotmail.com">emsivalencia@hotmail.com</a></td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_skype.gif" height="16" width="16" /></td>
			<td class="label">Skype:</td>
			<td>emsivalencia<br />	</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align="center" SIZE="1" width="100%" />
</div>
<div class="main-content">
<p>
<span class="label">Established Date: </span>December 16, 1996
</p>
<p>
<img hspace="5" src="/emsi/images/Church-Valencia-9-2021.jpg" alt="CEC Alicante" align="left" title="CEC Alicante" height="270" width="360" />
 The CEC Church in Valencia started in July 1996 when Jian Wei Ye and his brother Yong Wei Ye and a few Christians requested Ev.Yueh Yun Li to come to Valencia and to care for the flock of Christians and to train them. In October, Yueh Yun Li came and started a series of training courses for them. On December 16, 1997 the CEC Church in Valencia was established. They started by using the Baptist Church in C/Ramiro de Maeztu. When there was not enough space in the church, they moved to the present site in July 1998. There were 91 congregants who were baptized from February 1997 to April 2000. The average church attendance is 40-60 people. The previous pastors and evangelists are: Rev. Hosea Chi, Ev. Joan Dan, Ev. Yue Ping Chen, and Ev. Fanny Fu for the caring ministry. Aside from the Church Worship Service, there are two Bible Study groups, prayer meeting, Youth Group and Women’s group.
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'valencia')
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
			<td>葉永春 牧師, (0034) 61-861-8993</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>Calle Brasil 73, Valencia 46018, Spain</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 34-96-336-5441</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">傳真:</td>
			<td>34-96-336-5441</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:emsivalencia@hotmail.com">emsivalencia@hotmail.com</a></td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_skype.gif" height="16" width="16" /></td>
			<td class="label">Skype:</td>
			<td>emsivalencia<br />	</td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 1996年 12月16日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/Church-Valencia-9-2021.jpg" alt="CEC Alicante" align="left" title="CEC Alicante" height="270" width="360" />1996年7月，居住在瓦伦西亚的几位基督徒因渴慕主的话语，风闻马德里基督教生命堂的成立和良好发展，于是邀请李月云传道来培训造就。李月云传道鉴于信徒迫切的灵性需求，开办一系列的造就课程。后来在圣灵的带领和印证之下，于1996年12月26日成立教会。
</p>
<p> 宗旨：我们积极响应主耶稣的大使命，以福音为目的，以圣经为准则，以基督为生命。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'valencia')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<p>
<b>Pastor: </b>Rev. Yong Chun Ye, (0034)61-861-8993
</p>
<p>
<b>Address: </b>Calle Brasil 73, Valencia 46018, Spain
</p>
<p>
<b>Tel #: </b>34-96-336-5441
</p>
<p>
<b>Fax #:</b> 34-96-336-5441
</p>
<p>
<b>Email:</b> emsivalencia@hotmail.com
</p>
<p>
<b>Skype:</b> emsivalencia
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3079.8618019810206!2d-0.4029692504991963!3d39.472450679385396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd604f6e565c7a4d%3A0xf29cc049270219b9!2sCarrer%20del%20Brasil%2C%2073%2C%2046018%20Val%C3%A8ncia%2C%20Spain!5e0!3m2!1sen!2sus!4v1633228872549!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'valencia')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body = STRINGDECODE('
<p>
<b>牧師:</b> 葉永春 牧師, (0034) 61-861-8993
</p>
<p>
<b>地址: </b>Calle Brasil 73, Valencia 46018, Spain
</p>
<p>
<b>電話:</b> 34-96-336-5441
</p>
<p>
<b>傳真:</b> 34-96-336-5441
</p>
<p>
<b>電郵:</b> emsivalencia@hotmail.com
</p>
<p>
<b>Skype:</b> emsivalencia
</p>

<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3079.8618019810206!2d-0.4029692504991963!3d39.472450679385396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd604f6e565c7a4d%3A0xf29cc049270219b9!2sCarrer%20del%20Brasil%2C%2073%2C%2046018%20Val%C3%A8ncia%2C%20Spain!5e0!3m2!1sen!2sus!4v1633228872549!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'valencia')
	and locale = 'zh'
	and page_id = 'contactus';


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(28, 'schedule', 'en', 'CEC in Valencia - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>


		<tr>
			<td>Chinese School </td>
			<td>Sunday</td>
			<td>3:00 pm - 4:45 pm</td>
		</tr>
		<tr>
			<td>Sunday Worship/Children Sunday School</td>
			<td>Sunday</td>
			<td>5:30 pm - 7:00 pm</td>
		</tr>
		<tr>
			<td>Youth Fellowship （English Bible Study）</td>
			<td>Monday</td>
			<td>6:30 pm - 8:00 pm</td>
		</tr>
		<tr>
			<td>Bible Study</td>
			<td>Tuesday</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>Bible Study/Prayer Meeting</td>
			<td>Thursday</td>
			<td>10:00 pm - 11:30 pm</td>
		</tr>
		<tr>
			<td>Youth Basketball</td>
			<td>Saturday</td>
			<td>3:30 pm - 6:30 pm</td>
		</tr>
		<tr>
			<td>Sister Fellowship </td>
			<td>Montly</td>
			<td>5:30 pm - 7:00 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
');





update church_content set body = '<table border="1" cellpadding="5">
	<tbody>
		<tr>
			<td>中文学校 </td>
			<td>星期日下午</td>
			<td>3:00 pm - 4:45 pm</td>
		</tr>
		<tr>
			<td>主日崇拜 / 兒童主日學</td>
			<td>星期日晚上</td>
			<td>5:30 pm - 7:00 pm</td>
		</tr>
		<tr>
			<td>青少年團契 （西语查经）</td>
			<td>星期一晚上</td>
			<td>6:30 pm - 8:00 pm</td>
		</tr>
		<tr>
			<td>查經班</td>
			<td>星期二晚上</td>
			<td>5:30 pm - 6:45 pm</td>
		</tr>
		<tr>
			<td>查經禱告會</td>
			<td>星期四晚上</td>
			<td>10:00 pm - 11:30 pm</td>
		</tr>
		<tr>
			<td>青年篮球活动</td>
			<td>星期六下午</td>
			<td>3:30 pm - 6:30 pm</td>
		</tr>
		<tr>
			<td>姊妹团契 </td>
			<td>每月一次</td>
			<td>5:30 pm - 7:00 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>
'	where church_id = (select church_id from church where church_path = 'valencia')
	and locale = 'zh'
	and page_id = 'schedule';

----------  ends spain - Valencia







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
			<td class="label">Evangelists:</td>
			<td>Ev. Jin Fang Huan, 628-667-879</td>
		</tr>
		<tr>
			<td class="label"></td>
			<td>Ev. Lin Tao Wu, 654-852-708</td>
		</tr>
	</tbody>

</table>
<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Address:</td>
			<td>(North) Av. Mesa y Lopez 15, Local 11, 35006 Las Palmas, de Gran Canaria, Spain<br/>
			(South) Av. De Galdar, 10, Local 6A, 35100 Maspalomas, de Gran Canaria, Spain</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>628-667-879, 654-852-708</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Fax#:</td>
			<td>34-91-459-5844</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsigrancanaria@yahoo.com">emsigrancanaria@yahoo.com</a><br />
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
<a href="/emsi/gallery/?g2_itemId=1034"><img src="/emsi/images/Church_Gran_Canaria_18_small.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /> </a>We planned our first short missionary trip led by Ev. Yeh, and brother Guo Dan Jiang. to the coastal islands in August, 2000 after some CEC church members’ families/businesses moved there from mainland Spain. We visited Tenerife, Gran Canaria two islands, and organized meetings there.
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
			<td class=\"label\">傳道:</td>
			<td>金歡 傳道, 628-667-879</td>
		</tr>
		<tr>
			<td class=\"label\"></td>
			<td>吳林濤 傳道, 654-852-708</td>
		</tr>
	</tbody>
</table>
<br /><div style=\"margin-left: 20px\">
<table cellpadding=\"1\" cellspacing=\"0\">
	<tbody class=\"borderless-table\">
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">地址:</td>
			<td>(北) Av. Mesa y Lopez 15, Local 11, 35006 Las Palmas, de Gran Canaria, Spain<br/>
			(南) Av. De Galdar, 10, Local 6A, 35100 Maspalomas, de Gran Canaria, Spain</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> 628-667-879, 654-852-708 </td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">傳真:</td>
			<td> 34-91-459-5844 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: emsigrancanaria@yahoo.com"> emsigrancanaria@yahoo.com</a></td>
		</tr>
	</tbody>
</table>
</div>
</div>
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2003年 8月 26日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/images/Church_Gran_Canaria_18_small.jpg\" align=\"left\" height=\"255\" width=\"360\" />因部份會友的事業、家庭從西班牙内陸轉移到海島，二○○○年八月首次籌劃海島短宣，由葉傳道與蔣國淡弟兄至Tenerife、Gran Canaria兩海島探訪、組織聚會。
</p>
<p>二○○三年年初，蔣國淡弟兄因福音負擔，前往Gran canaria開店，恢復該區的探訪聯絡。2003年夏見時機成熟，傳道同工經過禱告、策劃，重開海島宣教工作。馬德里生命堂的幾位同工和本會巴黎神學院兩位神學生張健與張約翰配搭，前往Gran Canaria海島佈道。八月廿六日在Gran canaria首府Las Palmas de Gran canaria成立加納利亞基督教生命堂，於皇城酒家舉行北區聚會，隔日在南區Playa del Inglés舉行南區聚會。
</p>

</div>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Evangelist: </b>Ev. Jin Fang Huan, 628-667-879
</p>
<p>
<b>Evangelist: </b>Ev. Lin Tao Wu, 654-852-708
</p>
<p>
<b>Address: </b>(North) Av. Mesa y Lopez 15, Local 11, 35006 Las Palmas, de Gran Canaria, Spain<br/>
			(South) Av. De Galdar, 10, Local 6A, 35100 Maspalomas, de Gran Canaria, Spain
</p>
<p>
<b>Tel #: </b>628-667-879, 654-852-708
</p>
<p>
<b>Fax #: </b>34-91-459-5844
</p>
<p>
<b>Email: </b>emsigrancanaria@yahoo.com
</p>
<p>
<b>Address: </b>(North)</br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3518.398000984193!2d-15.434532185967733!3d28.134369713205093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc409514918b4ba5%3A0xd515196d2d7b921e!2sAv.+Jos%C3%A9+Mesa+y+L%C3%B3pez%2C+15%2C+11%2C+35006+Las+Palmas+de+Gran+Canaria%2C+Las+Palmas%2C+Spain!5e0!3m2!1sen!2sus!4v1549850435054" width="640" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
<p>
<b>Address: </b>(South)</br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d624.092567471171!2d-15.574886980977986!3d27.76662534271069!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjfCsDQ2JzAxLjQiTiAxNcKwMzQnMzIuMiJX!5e0!3m2!1szh-CN!2ses!4v1541972676978" width="640" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body = STRINGDECODE('<p>
<p>
<b>傳道:</b> 金歡 傳道, 628-667-879
</p>
<p>
<b>傳道:</b> 吳林濤 傳道, 654-852-708
</p>
<p>
<b>地址: </b>(北) Av. Mesa y Lopez 15, Local 11, 35006 Las Palmas, de Gran Canaria, Spain<br/>
			(南) Av. De Galdar, 10, Local 6A, 35100 Maspalomas, de Gran Canaria, Spain
</p>
<p>
<b>電話:</b> 628-667-879, 654-852-708
</p>
<p>
<b>傳真:</b> 34-91-459-5844
</p>
<p>
<b>電郵: </b>emsigrancanaria@yahoo.com
</p>

<p>
<b>地址: </b>(北)</br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3518.398000984193!2d-15.434532185967733!3d28.134369713205093!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc409514918b4ba5%3A0xd515196d2d7b921e!2sAv.+Jos%C3%A9+Mesa+y+L%C3%B3pez%2C+15%2C+11%2C+35006+Las+Palmas+de+Gran+Canaria%2C+Las+Palmas%2C+Spain!5e0!3m2!1sen!2sus!4v1549850435054" width="640" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
<p>
<b>地址: </b>(南)</br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d624.092567471171!2d-15.574886980977986!3d27.76662534271069!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjfCsDQ2JzAxLjQiTiAxNcKwMzQnMzIuMiJX!5e0!3m2!1szh-CN!2ses!4v1541972676978" width="640" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'canaria')
	and locale = 'zh'
	and page_id = 'contactus';
---<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1765.1999677417473!2d-15.575821842293736!3d27.766648673935727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xc3f62bcee9dd59d%3A0x1864f22c69625f0!2sAv.+de+Galdar%2C+10%2C+35100+San+Bartolom%C3%A9+de+Tirajana%2C+Las+Palmas%2C+Spain!5e0!3m2!1sen!2sus!4v1536497887144" width="640" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(31, 'schedule', 'en', 'CEC in Gran Canaria - Church Services Schedule',
'
<h4>南部聚會時間表 Southern Region Meeting Schedule</h4>

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十 時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>查經/練詩</br>Bible Study and Choir Practice </td>
			<td>周 二 上 午 九時十五分 </br>Tuesday 9:15 am</td>
		</tr>
		<tr>
			<td>查經/禱告</br>Bible Study and Prayer Meeting</td>
			<td>周 四 上 午 九時十五分 </br>Thursday 9:15 am</td>
		</tr>
	</tbody>
</table>
</br>

<h4>北部聚會時間表 Northern Region Meeting Schedule</h4>

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 晚上 六時三十分</br> Sunday 6:30 pm</td>
		</tr>
		<tr>
			<td>查經</br>Bible Study</td>
			<td>周 日 晚上 八時 </br>Sunday 8:00 pm</td>
		</tr>
	</tbody>
</table>
</br>

<h4>中部聚會時間表 Middle Region Meeting Schedule</h4>
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
		<tr>
			<td>查經</br>Bible Study</td>
			<td>周 三 上 午 十時十五分 </br>Wednesday 10:15 am</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(31, 'schedule', 'zh', '加納利亞基督教生命堂 - 聚會日程',
'
<h4>南部聚會時間表 Southern Region Meeting Schedule</h4>

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 上 午 十 時 </br>Sunday 10:00 am</td>
		</tr>
		<tr>
			<td>查經/練詩</br>Bible Study and Choir Practice </td>
			<td>周 二 上 午 九時十五分 </br>Tuesday 9:15 am</td>
		</tr>
		<tr>
			<td>查經/禱告</br>Bible Study and Prayer Meeting</td>
			<td>周 四 上 午 九時十五分 </br>Thursday 9:15 am</td>
		</tr>
	</tbody>
</table>
</br>

<h4>北部聚會時間表 Northern Region Meeting Schedule</h4>

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周 日 晚上 六時三十分</br> Sunday 6:30 pm</td>
		</tr>
		<tr>
			<td>查經</br>Bible Study</td>
			<td>周 日 晚上 八時 </br>Sunday 8:00 pm</td>
		</tr>
	</tbody>
</table>
</br>

<h4>中部聚會時間表 Middle Region Meeting Schedule</h4>
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
		<tr>
			<td>查經</br>Bible Study</td>
			<td>周 三 上 午 十時十五分 </br>Wednesday 10:15 am</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');

---------ends Spain - Gran Canaria



---------- Spain - usera  New church June 2018 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(61, 'usera', 1, 9, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(61, 'en', 'menu_name', 'CEC in Usera');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(61, 'zh', 'menu_name', '以斯拉基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(8, NULL, 61);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'intro', 'en', 'CEC in Usera  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Rev. Guo Dan Jiang </td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Santoña 7 28026-usera Madrid, Spain</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td> 0034-62-0-630-901 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: June 23, 2018</span></p>
<p>
The district of Usera has the largest Chinese population in Madrid. It’s even called the “Chinatown”.
</p>
<p>
Pastor Jiang visited Usera sometime in 2017. He felt at home when he heard some people speak his hometown dialect- Fuzhounese. He thought it be best if we can gather all those people and start a church there. He had a burden to start a Bible Study group, so he prayed about it for a while. One day, he received a phone call from a sister. She asked Pastor Jiang to pray for her friend, who is also a sister in Christ but was influenced by the Eastern Lighting Cult and had gone missing. The family of her friend was very anxious. Pastor Jiang visited the family after receiving the news. His desire to save lost souls and start a church grew stronger.
</p>
<p>
January 18, 2018 was the tenth anniversary of the CEC in Fuenlabrada. Pastor Jiang had a chance to report the situation in Usera to Rev. Moses Yang. After prayers, Rev. Yang and the coworkers decided to start a Bible Study group. The Usera Bible Study group officially started
on February 3, 2018 at the office of Brother Guangyong Chen. The attendance was around 20; it has gradually increased in numbers through the end of April.
</p>
<p>
May the Lord grant us wisdom and help us in spreading the Gospel in this place, so that we can effectively use the Chinese school with an area of 1,506.95 square feet that we have rented to further the ministry. Hope we can start the Sunday Worship here soon.
</p>
<p>
We will follow Paul’s teachings in II Timothy 4:2 - “Preach the word; be instant in season, out of season; reprove, rebuke, exhort with all long suffering and doctrine.” Please pray for us. May God open the door for us so that we can speak the mystery of Christ. (Colossians 4:3)
</p>


</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'intro', 'zh', '以斯拉基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
			<td>蔣國淡 牧師</td>
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
				<td>Santoña 7 28026-usera Madrid, Spain</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> 0034-62-0-630-901</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2018 年6 月 23 日
</p>
<p>
<span class=\"label\">簡史: </span>
</p>
<p>
西班牙馬德里烏塞拉區是華人居住最密集之地，有「唐人街」之稱，其中有較多的商店、餐廳及娛樂場所，為華人非常便利的交流地。
</p>
<p>
2017年某日，蔣牧師路經此地，聽見有一些正用福建家鄉話交談的鄉親們，心中倍感親切！當時，他想若這群老鄉們也能去教會有多好啊！這樣的感動，讓他有了在此先開設查經班的負擔，也對此地留下了很深的印象。
</p>
<p>
蔣牧師禱告了一段時間後，有一天接到一位姐妹的電話。她請蔣牧師幫助她的一位同鄉(也是會友)，不久前被東方閃電的人帶走，下落不明，家人很焦急，所以希望蔣牧師為她禱告。蔣牧師得知後，就去探訪這家人。原本對烏塞拉區已有負擔的蔣牧師，經由這件事的發生，想要在此設立教會，尋找失喪靈魂的意願更強烈了。
</p>
<p>
2018年一月14日，正值福恩城十週年慶時，有機會與總監楊摩西牧師匯報了烏塞拉華人區的情況；後來藉著楊牧師和同工們的同心禱告，定下了查經的時間和地點 ─ 2018年二月3日，弟兄姐妹於同工陳廣勇弟兄的辦公室，正式開始了「以斯拉查經班」。
</p>
<p>
雖然，剛開始查經班多數都是住在附近福恩城生命堂的弟兄姐妹們，人數約有20位左右；但四月底後，查經班每次陸續都有新朋友加入。感謝主，目前我們與一所中文學校分租一個140平方的場地做為查經之用。
</p>
<p>
求主賜下祂的聰明智慧，幫助我們努力地在此將基督的福音傳遍，帶領更多的人歸主；使我們在目前所租的地方更有效地發展聖工，盼望我們很快地就能開始以斯拉主日崇拜！
</p>
<p>
我們會遵照使徒保羅於提摩太後書四章2節所教導去行：「務要傳道，無論得時不得時，總要專心；並用百般的忍耐，各樣的教訓，責備人、警戒人、勸勉人。」也請主內的同工及弟兄姐妹：要為我們禱告，求上帝給我們開傳道的門，能以講基督的奧秘(參西四3)。
</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'contactus', 'en', 'CEC in Usera - Contact Us', '');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'contactus', 'zh', '以斯拉基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'schedule', 'en', 'CEC in Usera - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship</td>
			<td>Saturday</td>
			<td>5:00 - 6:30 pm</td>
		</tr>
		<tr>
			<td>Bible Study </td>
			<td>Saturday</td>
			<td>6:45 - 7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(61, 'schedule', 'zh', '以斯拉基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>崇拜</td>
			<td>週六下午</td>
			<td>5:00 - 6:30 pm</td>
		</tr>
		<tr>
			<td>查經</td>
			<td>週六下午</td>
			<td>6:45 - 7:30 pm</td>
		</tr>

	</tbody>
</table>

<p>&nbsp;</p>                     40.381922, -3.714913
');


update church set address='Santoña 7 28026-Usera Madrid, Spain', latitude = 40.381922, longitude = -3.714913 where church_path = 'usera';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Address: </b>Santoña 7 28026-usera Madrid, Spain
</p>
<p>
<b>Tel #: </b> 0034-62-0-630-901
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.2153567068754!2d-3.717106950328421!3d40.3819193792679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4227a52d5b0a79%3A0xf59ca884dd43a35f!2sCalle%20de%20Santo%C3%B1a%2C%207%2C%2028026%20Madrid%2C%20Spain!5e0!3m2!1sen!2sus!4v1592964253444!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>	</p>
') where church_id = (select church_id from church where church_path = 'usera')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<p>
<b>地 址: </b>Santoña 7 28026-usera Madrid, Spain
</p>
<p>
<b>電 話: </b>0034-62-0-630-901
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.2153567068754!2d-3.717106950328421!3d40.3819193792679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4227a52d5b0a79%3A0xf59ca884dd43a35f!2sCalle%20de%20Santo%C3%B1a%2C%207%2C%2028026%20Madrid%2C%20Spain!5e0!3m2!1sen!2sus!4v1592964253444!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>
')	where church_id = (select church_id from church where church_path = 'usera')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Spain - Usera




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
			<td class="label">Address:</td>
			<td>Boddenkampstraat 2, 7514 ZA Enschede, The Netherlands</td>
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
<img hspace="5" src="/emsi/images/Church_Enschede_11_2019.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /> </a>Enschede is in the northernmost part of the Nethelands bordering of Germany. The city is home to many Universities. There are many overseas Chinese Students studying here, and also many restaurants nearby. In 2003, the Mission Board sent Sister Pan xx to Enschede for summer training, and upon her graduation in 2004, she was sent to start a Gospel Ministry among college students. Through the support of a college professor, she started a weekly bible study in the dining hall of a dormitory, and many overseas students came to know Christ through this ministry. In the ensuing five years that we have been in Enschede, we have longed to start Sunday Worship Services. In 2009, we started to diligently search for a place, and to pray. The Lord ultimately provided for us unexpectedly good news. A catholic church in the city center was willing to let us hold services there. Within a very short one week span, they agreed to let us use a part of the church for Sunday services and Sunday school at a rental we could afford. On Sept 6, 2009, we held our first Sunday Worship and Baptism Service. We call our church CEC in Enschede
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
			<td class=\"label\">地址:</td>
			<td> Boddenkampstraat 2, 7514 ZA Enschede, The Netherlands</td>
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
<b>成立日期:</b> 2009年 9月 6日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/Church_Enschede_11_2019.jpg" align=\"left\" height=\"255\" width=\"360\" />恩赫斯基(Enschede)位於荷蘭最東面靠近德國邊境，這個城市有許多大學，很多中國留學生在這個城市上學；附近也有很多餐館，許多中國人在餐館工作。2003年暑假佈道會派神學生潘少萍姊妹往Enschede實習，2004年潘姊妹讀完神學課程後再度被派往Enschede做留學生福音事工； 透過一位大學教授潘姊妹得以在一間學生旅館的餐廳開始了每週一次的留學生查經班，帶領不少留學生信主。2009年我們在Enschede 5年時間，很想開始主日崇拜，我們禱告並積極的尋找場地；上帝為我們預備，給我們意想不到的驚喜，有一間位於市中心的天主教堂在很短的一周內接受我們出的租金租給我們部分場地作崇拜及主日學使用； 2009年9月6曰恩慈地基督教生命堂成立並舉行首次崇拜及洗禮。
2019年本堂成立十週年之際，上帝賜给本堂一件特別的禮物，我們購買到屬於自己的禮拜堂! 讓我們經歷衪是偉大奇妙的神，祂行大事不可測度，行奇事不可勝數，願將一切榮耀、頌讚、感謝歸給天上的父神!</p>


</div>
')	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Louis Chung
</p>
<p>
<b>Address: </b>Boddenkampstraat 2, 7514 ZA Enschede, The Netherlands
</p>
<p>
<b>Tel #: </b>0031-53-231-0798 / 0031-(0)65-065-2284
</p>
<p>
<b>Email: </b>emsienschede@gmail.com
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2444.032574831708!2d6.884138215438238!3d52.22462597975939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47b813f534dbfa75%3A0x98c665254e9c0601!2sBoddenkampstraat%202%2C%207514%20AV%20Enschede%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1574558867064!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

</p>
')	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'en'
	and page_id = 'contactus';


update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師:</b> 鍾志勳 牧師
</p>
<p>
<b>地址: </b>Boddenkampstraat 2, 7514 ZA Enschede, The Netherlands
</p>
<p>
<b>電話:</b> 0031-53-231-0798 / 0031-(0)65-065-2284
</p>
<p>
<b>電郵: </b>emsienschede@gmail.com
</p>

<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2444.032574831708!2d6.884138215438238!3d52.22462597975939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47b813f534dbfa75%3A0x98c665254e9c0601!2sBoddenkampstraat%202%2C%207514%20AV%20Enschede%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1574558867064!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
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
			<td>Rev. Moses Yang, 973-335-7337 ext. 209, (C) 201-650-1923</td>
		</tr>
		<tr>
			<td class="label">Associate Pastor:</td>
			<td>Rev. Zion Wu, 973-335-7337 ext. 202, (C) 973-768-5805</td>
		</tr>
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Patty Chien, 973-335-7337 ext. 200, (C) 201-993-3043</td>
		</tr>
		<tr>
			<td class="label">Youth Minister:</td>
			<td>Ev. Wingkit Chan, 973-335-7337 ext. 250, (C) 973-413-4132</td>
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
			<td>973-335-7337</td>
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
Christian Evangelical Mission Church (CEMC) in Towaco was first established in 1980 by a small group of believers gathering together to pray, worship, and fellowship at Waughaw Road in Towaco. In 1982, CEMC in Towaco along with Evangelical Bible Institute moved to our current location at 36 Alpine Road, Towaco, NJ. This is a 26 acre campus and facility which provides the seminary students and the congregation with many indoor and outdoor activities such as basketball, handball, softball, table tennis, tennis, volleyball and etc. After 30 years since the birth of CEMC in Towaco, today the congregation has grown to approximately 300 people. The congregation is composed of mostly members from Burma, China, Hong Kong, Indonesia, Malaysia, Philippines, Singapore, and Taiwan ancestry. Many live within ten miles of Towaco, including Lincoln Park, Montville, Parsippany, Pine Brook, Pompton Lakes, Wayne and etc. But some even come as far as Trenton, Pennsylvania, upstate New York, and Connecticut.
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
			<td>楊摩西 牧師, 973-335-7337 ext. 209, (手機) 201-650-1923</td>
		</tr>
		<tr>
			<td class=\"label\">牧師:</td>
			<td>吳錫安 牧師, 973-335-7337 ext. 202, (手機) 973-768-5805</td>
		</tr>
		<tr>
			<td class=\"label\">傳道:</td>
			<td>錢舜 傳道, 973-335-7337 ext. 200, (手機) 201-993-3043</td>
		</tr>
		<tr>
			<td class=\"label\">青年事工:</td>
			<td>陳永傑  傳道, 973-335-7337 ext. 250, (手機) 973-413-4132</td>
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
			<td>973-335-7337</td>
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
<b>成立日期:</b> 1980年
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace=\"5\" src=\"/emsi/files/towacochurch_1.jpg\" align=\"left\" height=\"255\" width=\"360\" />多華谷生命堂的[建立]是一個意外。當年國際福音佈道會之下已有三間生命堂。一在紐約市中國城，一在紐約州Nanuet（珍珠河生命堂前身），一在新澤西的西橘園。楊牧師並無意在多華谷設立分堂，他[計劃]創辦神學院。但是向政府申請辦學時才知道，神學院必須附屬在教會之下，於是多華谷生命堂於一九八○年應運而生。</p>
<p>
建堂之初，會友只有二十人左右，都是西橘園生命堂的會友，為支持神學教育而轉來的。經過二十多年的聖工發展，目前已有近三百名會友，[多半]為台灣、越南、香港、新加坡、菲律賓、印尼、馬來西亞、中國大陸等地[華裔]。一九八二年，多華谷生命堂隨著神學院一同遷至亞棚。神學院廣大的校園和各種運動設施，為會友提供了休閒場所。</p>
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
<b>電話:</b>\u00a0 973-335-7337
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
<b>Tel #:</b>\u00a0 973-335-7337
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

--update church_content set body = '<style>
--.contact-content {font-family: Arial,helvetica,sans-serif;}
--.contact-content td {font-size: small; padding: 2px; 3px;}
--td.label {font-weight: bold; width: 1%; white-space: nowrap;}
--p span.label {font-weight: bold;}
--.main-content {font-family: Arial, MingLiU, Helvetica, san-serif; font-size: 13px; color: #333;}
----- .borderless-table {border-width: 0px;}
----- </style>
----- <div class="contact-content">
----- <div style="color: #000000; font-size: small">
----- <table cellpadding="0px" cellspacing="0px">
----- 	<tbody class="borderless-table">
----- 		<tr>
----- 			<td class="label">Evangelist:</td>
----- 			<td>Ev. David Zhou, (C) 39-057-4831203</td>
----- 		</tr>

----- 	</tbody>
----- </table>
----- <div style="margin-left: 20px">
----- <table cellpadding="1px" cellspacing="0px">
----- 	<tbody class="borderless-table">
----- 		<tr>
----- 			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
----- 			<td class="label">Address:</td>
----- 			<td>Piazza San Domenico 10, 59100, Prato (PO), Italy</td>
----- 		</tr>
----- 		<tr>
----- 			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
----- 			<td class="label">Tel#:</td>
----- 			<td>39-057-4831203</td>
----- 		</tr>
----- 		<tr>
----- 			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
----- 			<td class="label">Email:</td>
----- 			<td><a href="mailto:CEMCPrato@gmail.com">CEMCPrato@gmail.com</a></td>
----- 		</tr>
----- 	</tbody>
----- </table>
----- </div>
----- </div>
----- <hr align="center" size="1" width="100%" />
----- </div>
----- <div class="main-content">
----- <p>
----- <span class="label">Established Date: </span>August 8, 2010
----- </p>
----- <p>
----- <a href="/emsi/gallery/?g2_itemId=119"><img src="/emsi/files/prato_small_0.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /></a>
----- </p>
----- <p>
----- Praise the almighty Lord for leading CEC Prato through it’s first year. On the 7th of August 2011 CEC Prato celebrated her first anniversary. Thank God for guidance and blessing of the past year.
----- <p>
----- On the 5th of July of 2010, the EMSI Short Term Mission (STM) team was sent from Holland to Prato. The team was led by Rev. Hugo Chan and Erna shimu and its team members were HongYou Yu and JieLin Feng, a young couple from CEC Groningen, and Yen Chow Chan, an EBI Bible student in Towaco. The goals for STM were to evangelize Chinese people, and to rent a place for Sunday worship services and accommodation for Yen Chow Chan. The STM team prayed for these two locations. If God wants EMSI to start a church in Prato, the team should find the locations within two or three months.
----- </p>
----- <p>
----- Thanks God for leading Rev. Hugo Chan and Erna shimu to a broker who can speak English. The broker had helped to find a accommodation for Yen Chow Chan. Later God led Rev. Chan and Yen Chow to Piazza San Domenico 10. With the help of the broker communication with the owner was possible. It all happened in the first week that the STM team was in Prato; our faith in God was strengthened. The will of God was clear; He wanted a CEC church in Prato. In August 2010, Brother Martin Ding from CEC Utrecht came to assist Yen Chow Chan for one month. On the 8th of August CEC Prato was established, the first Sunday worship service was attended by five persons. At the end of October Yen Chow&#39s wife Shuqi Hu came over from China, the family was reunited and served together in CEC Prato. The number of people being saved increased rapidly. In the second quarter of 2011 the average attending the Sunday worship service had increased to 15 persons. Praise the merciful God for saving more than hundreds of souls through CEC Prato past year.
----- </p>
----- <p>
----- The work in the past first year was not possible if not a team of loyal prayers had moved God&#39s hand. Daily prayers on their knees from EBI Towaco&#39s Bible students and coworkers, CEC Den Haag&#39s youth fellowship and coworkers and those who know the importance of mission. Please keep on praying the harvest in Prato is plenteous.
----- </p>
----- <p>
----- Then saith he unto his disciples, The harvest truly is plenteous, but the labourers are few; pray ye therefore the Lord of the harvest, that he will send forth labourers into his harvest. Matthew 9:37,38
----- </p>
----- </div>
----- ' where church_id = (select church_id from church where church_path = 'prato')
----- 	and locale = 'en'
----- 	and page_id = 'intro';


----- update church_content set body = STRINGDECODE('<style>\r\n.contact-content {
----- font-family: Arial,helvetica,sans-serif,新細明體;}
----- .contact-content td {font-size: 14px; padding: 2px; 3px;}
----- td.label {font-weight: bold; width: 1%; white-space: nowrap;}
----- p span.label {font-weight: bold;}
----- .main-content {font-family: Arial, MingLiU, Helvetica, san-serif, 新細明體; font-size: 13px; color: #333;}
----- .borderless-table {border-width: 0px;}
----- </style>\r\n<div class=\"contact-content\">
----- <div style=\"color: #000000; font-size: small\">
----- <table cellpadding=\"0\" cellspacing=\"0\">
----- 	<tbody class=\"borderless-table\">
----- 		<tr>
----- 			<td class="label">傳道:</td>
----- 			<td>周長宇 傳道 , (手機) 39-057-4831203</td>
----- 		</tr>

----- 	</tbody>
----- </table>
----- <br /><div style=\"margin-left: 20px\">
----- <table cellpadding=\"1\" cellspacing=\"0\">
----- 	<tbody class=\"borderless-table\">
----- 		<tr>
----- 			<td class=\"label\"><img src=\"/emsi/images/icon_googlemap.gif\" height=\"16\" width=\"16\" /></td>
----- 			<td class=\"label\">地址:</td>
----- 			<td> Piazza San Domenico 10, 59100, Prato (PO), Italy</td>
----- 		</tr>
----- 		<tr>
----- 			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
----- 			<td class=\"label\">電話:</td>
----- 			<td> 39-057-4831203 </td>
----- 		</tr>
----- 		<tr>
----- 			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
----- 			<td class=\"label\">電郵:</td>
----- 			<td><a href=\"mailto: CEMCPrato@gmail.com"> CEMCPrato@gmail.com</a></td>
----- 		</tr>
----- 	</tbody>
----- </table>
----- </div>
----- </div>
----- <hr align=\"center\" size=\"1\" width=\"100%\" />
----- </div>
----- <div class=\"main-content\">
----- <p>
----- <b>成立日期:</b> 2010年 8月 8日
----- </p>
----- <p>
----- <span class=\"label\">簡史: </span><br />
----- <img hspace=\"5\" src=\"/emsi/files/prato_small_0.jpg\" align=\"left\" height=\"255\" width=\"360\" />讚美全能的上帝帶領義大利普拉托生命堂走過了兩年。2011年八月7日普拉托生命堂慶祝成立週年，感謝上帝在過去一年的引領及賜福！
----- </p>
----- <p>2010年初，陳啟猷牧師夫婦發現義大利普拉托有很多華人。於是，2010年七月5日，國際福音佈道會差派短宣隊由陳啟猷牧師及師母帶領，從荷蘭到義大利普拉托。隊員包括荷蘭高寧根生命堂的于洪友、馮洁琳一對年輕的夫婦及我。
----- </p>
----- <p>短宣隊主要的目的是向華人傳福音, 同時尋找主日聚會的場地及傳道人的住處。短宣隊的禱告是，如果上帝要國際神學福音佈道會在普拉托成立生命堂，那麼短宣隊就應該會在兩到三個月內找到這兩個場地。
----- </p>
----- <p>感謝上帝帶領，陳牧師夫婦很快地就遇見一位能說英文的房屋仲介，這位仲介很快地就幫我找到了住所，並在Piazza San Domenico找到一間可為教會所用的地方。這些事都是在短宣隊到達普拉托的第一個星期發生。感謝主，事情有了進展，因此我們更有信心向前，也看見上帝的旨意相當清楚了。
----- </p>
----- <p>一個星期後，陳牧師夫婦離開普拉托，繼續他們其他的事工。我、于洪友及馮洁琳夫婦三人繼續在普拉托的工作。2010年八月初，上帝差派烏特勒生命堂的丁業新弟兄來協助我們一個月。而普拉托生命堂就在八月的第一個主日，八月八日正式於Piazza San Domenico成立，有五位會友參加第一次主日崇拜。十月底妻子舒祺來普拉托, 我們全家終於一起事奉；教會的人數很快地增長，平均主日的人數約有十人左右(不包括孩童) 。
----- </p>
----- <p>2010年成立 一年，普拉托生命堂聚會的人數平均已有十五人了。感謝主，藉著普拉托生命堂已帶領超過一百人接受基督的福音了。
----- </p>
----- <p>過去兩年中，許多人忠心地為普拉托宣教事工禱告。不論是國際福音神學院的學生和同工每天早晨的跪地禱告、海牙生命堂青年團契和同工的禱告，以及知道宣教教會重要，而自動地為我們的代禱，都震動了上帝大能的手。謝謝大家的代禱，也請弟兄姐妹們繼續為普拉托生命堂有更豐盛的福音收穫禱告！
----- </p>
----- <p>於是對門徒說：要收的莊稼多，做工的人少。所以，你們當求莊稼的主打發工人出去收他的莊稼。 (馬太福音九章37-38)
----- </p>

----- </div>
----- ')	where church_id = (select church_id from church where church_path = 'prato')
----- 	and locale = 'zh'
----- 	and page_id = 'intro';



----- update church_content set body = STRINGDECODE('<p>
----- <p>
----- <b>Evangelist: </b>Ev. David Zhou
----- </p>
----- <p>
----- <b>Address: </b>Piazza San Domenico 10, 59100, Prato (PO), Italy
----- </p>
----- <p>
----- <b>Tel #: </b>39-057-4831203
----- </p>
----- <p>
----- <b>Email: </b>CEMCPrato@gmail.com
----- </p>
----- <p>
----- <iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
----- </p>
----- ')	where church_id = (select church_id from church where church_path = 'prato')
----- 	and locale = 'en'
----- 	and page_id = 'contactus';



-----  church_content set body = STRINGDECODE('<p>
----- <p>
----- <b>傳道:</b> 周長宇 傳道
----- </p>
----- <p>
----- <b>地址: </b>Piazza San Domenico 10, 59100, Prato (PO), Italy
----- </p>
----- <p>
----- <b>電話:</b> 39-057-4831203
----- </p>
----- <p>
----- <b>電郵: </b>CEMCPrato@gmail.com
----- </p>

----- <p>
----- <iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?q=Piazza+San+Domenico+10,+59100,+Prato+(PO),+Italy&amp;ie=UTF8&amp;hq=&amp;hnear=Piazza+San+Domenico,+10,+59100+Prato,+Toscana,+Italy&amp;gl=us&amp;t=m&amp;z=14&amp;ll=43.881846,11.093757&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
----- </p>
----- ')	where church_id = (select church_id from church where church_path = 'prato')
----- 	and locale = 'zh'
----- 	and page_id = 'contactus';




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
<b>成立日期:</b> 1974年
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
			<td>Men&#39; s Fellowship</td>
			<td>Every 2nd Saturday</td>
			<td>10:30 am</td>
		</tr>
		<tr>
			<td>Women&#39; s Fellowship</td>
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
<b>成立日期:</b> 2011年 3月
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/BelgiumAntwerpen10_31_13.JPG" align="left" height="255" width="360" />感謝主帶領我們在二○○○年的春天，有機會參予國際神學福音佈道會的短宣隊前往法國和比利時短宣；二○○一年自神學院畢業後，我與妻子被差派前往法國巴黎生命堂實習。在法國的兩年裡多次聽聞比利時需要工人，所以我們經常為此事禱告，希望比利時能盡快找到傳道人。然而，經過一段時間，上帝給我們一個感動，因為比利時是荷、法雙語的國家，若懂當地語言相對來說是比較方便；而我們都是在荷蘭長大受教育，又曾在法國居住過兩年，好像這些都是有利的基本條件，最後我們確定是上帝的呼召，便順服祂的旨意。
</p>
<p我們對比利時的環境並不了解，只抱著一顆傳福音的心志，二○○三年的夏天踏進這個陌生的地方。上帝為我們預備了一對愛主的夫婦(程伯君夫婦)與我們一起開始了開荒的工作。雖不容易，但終於在同年的十一月在安特衛普市成立了「安慰城基督教生命堂」。當時是從一些留學生工作開始，也不斷嘗試透過各種的途徑來傳福音，上帝慢慢地帶領不同的家庭、小孩子和青少年人來到我們當中，大家在主的愛裏感到非常溫馨，弟兄姐妹的靈命也在聖經的真理中漸漸成長。當我們踏進第四個年頭時，看見上帝極大的恩典臨到安慰城的弟兄姐妹，因著各國生命堂的支持與關懷，我們能夠有自己的會所，為此向主獻上衷心感謝和讚美；而更叫我們不敢浪費一分一秒的時間，要加倍地努力傳揚福音，回報主恩及大家的愛心。
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



---------------  ends  Belgium - antwerpen


--------------  Belgium - Brussels

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
			<td> 32 Rue du Fossé aux Loups, 1000 Brussels, Belgium</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td> +32-(0)484-148682</td>
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
<span class="label">Established Date: </span>May 16, 2004
</p>
<p>
We thank the Lord for the privilege of participating in a short term mission to France and Belgium in the spring of 2000. After our graduation from the seminary in 2001, we were assigned to have our practicum in the CEC of Paris. When we were in France for two years we heard about the need in Belgium and we have been praying for their needs and that they will be able to find a pastor. After a period of time, God put the burden in our hearts, because Belgium uses French and Dutch as their main languages, and it would be more convenient if one knows the language. We grew up and were educated in the Netherlands and we lived in France for two years. Therefore, we had an advantage. We knew that this was God’s calling and we submitted to His will.</p>
<p>Although we didn’t understand much about the situation in Belgium, we had the desire to spread the Gospel. We stepped into this strange place in the summer of 2003. God prepared a family who loved the Lord and we labored together to start a church. Although it was not an easy task, the CEC in Antwerpen was established in November 2003. At that time, we started with the overseas students and used other means to reach out to the non-believers. Slowly God brought different families, children, and young people in our midst. We felt the warmth of God’s love among us and the spiritual lives of the members grew and were built up in God’s Word. As we start our fourth year here, we can see God’s abundant grace upon the brothers and sisters here because of the support and love of CEC around the world. We are able to have a church building of our own and we are deeply grateful and give thanks to God. At the same time we should not waste time, but we should strive more in spreading the Gospel and in repaying everybody’s love.</p>
<p>The short term mission was not only in Antwerpen, but also in Brussels too. We saw the need for the Gospel there, so we established the CEC in Brussels in May 2004. We have morning service in Antwerpen and afternoon service in Brussels. God raised up godly members who came to serve with us from Antwerpen to Brussels. Their faithfulness really encouraged our hearts.</p>
<p>We thank the Lord that we experienced many wondrous works of God and, through many learning experiences, it increased our faith in serving. Later on, because of the need of the Gospel in other places, by faith, we claimed on God’s promises and established another church in Belgium’s third largest city, Gent, in October 2006. We have different activities, fellowship groups, and worship service. Although sometimes we felt tired, when we thought about the sheep that God had entrusted to us and that they might be God’s soldiers in the future, we were motivated to move forward. We also felt bad that we didn’t have enough time to train the Christians, so our prayers were always about God sending more workers here to develop the ministry. </p>
<p>There should be a vision to a mission; church planting is not easy, but shepherding is even more difficult. We know that it’s impossible to depend on our own strength to serve, but we can do all things through Him who strengthen us. Thank God that He uses us who are lowly and unworthy. Because of His great power, the Chinese in Belgium enjoy God’s blessings. What a wondrous thing! May all the glory and praise be to Him.</p>
<p>We would like to thank God for EMSI as it continues to spread the Gospel and nurtures the visions of the evangelists, it continues to maintain sound doctrine and continues the good fight through these forty years. We are so thankful to od. May God’s grace continue to multiply. May His blessings multiply and preserve and strengthen our big family until we see His face again. Amen!</p>


</div>
'	where church_id = (select church_id from church where church_path = 'brussels')
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
			<td> 32 Rue du Fossé aux Loups, 1000 Brussels</td>
		</tr>
		<tr>
			<td class=\"label\"><img src=\"/emsi/images/icon_phone.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電話:</td>
			<td> +32-(0)484-148682</td>
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
<b>成立日期:</b> 2004年 5月 16日
</p>
<p>
<span class=\"label\">簡史: </span><br />
我們在二○○○年的春天，國際神學福音佈道會的短宣隊前往比利時短宣時不單在安特衛普短宣，也曾到過首都布魯塞爾佈道，當時亦看到福音的需要，所以我們也於二○○四年的五月成立了「布魯塞爾基督教生命堂」。從此開始主日上午在安慰城有崇拜，下午則在布魯塞爾敬拜，感謝主興起幾位愛主的弟兄姐妹，每週從安慰城隨著我們來服事﹐看見他們的忠心擺上，給我們非常大的鼓勵。
</p>


</div>
')	where church_id = (select church_id from church where church_path = 'brussels')
	and locale = 'zh'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<p>
<b>Pastor: </b>Rev. Mix Chan
</p>
<p>
<b>Address: </b>32 Rue du Fossé aux Loups, 1000 Brussels, Belgium
</p>
<p>
<b>Tel #: </b>+32-(0)484-148682
</p>
<p>
<b>Email: </b>emsibelgium@hotmail.com
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2518.963926034163!2d4.352549615745919!3d50.85035227953258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c380e23cb84f%3A0xf9c7061b0ed6608c!2sRue+du+Foss%C3%A9+aux+Loups+32%2C+1000+Bruxelles%2C+Belgium!5e0!3m2!1sen!2sus!4v1462150599723;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2518.963926034163!2d4.352549615745919!3d50.85035227953258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c380e23cb84f%3A0xf9c7061b0ed6608c!2sRue+du+Foss%C3%A9+aux+Loups+32%2C+1000+Bruxelles%2C+Belgium!5e0!3m2!1sen!2sus!4v1462150599723;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brussels')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = STRINGDECODE('<p>
<p>
<b>牧師: </b>陳茂祥 牧師
</p>
<p>
<b>地址: </b>32 Rue du Fossé aux Loups, 1000 Brussels, Belgium
</p>
<p>
<b>電話:</b> +32-(0)484-148682
</p>
<p>
<b>電郵: </b>emsibelgium@hotmail.com
</p>

<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2518.963926034163!2d4.352549615745919!3d50.85035227953258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c380e23cb84f%3A0xf9c7061b0ed6608c!2sRue+du+Foss%C3%A9+aux+Loups+32%2C+1000+Bruxelles%2C+Belgium!5e0!3m2!1sen!2sus!4v1462150599723;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2518.963926034163!2d4.352549615745919!3d50.85035227953258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c3c380e23cb84f%3A0xf9c7061b0ed6608c!2sRue+du+Foss%C3%A9+aux+Loups+32%2C+1000+Bruxelles%2C+Belgium!5e0!3m2!1sen!2sus!4v1462150599723;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>

')	where church_id = (select church_id from church where church_path = 'brussels')
	and locale = 'zh'
	and page_id = 'contactus';


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
			<td>Ev. Xiu Lan Fang, 81-90-9700-4895</td>
		</tr>
	</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
	<tbody class="borderless-table">
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
			<td class="label">Address:</td>
			<td>Tokyo-To, Shinagawa-Ku, Minami-Oi 3-20-5, SS1 Biru, 701</td>
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
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'intro', 'zh', '東京基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {
font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
<hr align=\"center\" size=\"1\" width=\"100%\" />
</div>
<div class=\"main-content\">
<p>
<b>成立日期:</b> 2012年
</p>
<p>
<span class=\"label\">簡史: </span><br />
</br>
<b>2012年三月福音事工開展</b><br />
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
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(52, 'contactus', 'zh', '東京基督教生命堂 - 連絡我們','');



update church_content set body = STRINGDECODE('<p>
<b>Evangelist: </b>Ev. Xiu Lan Fang</p>
<p>
<b>Address: </b>Tokyo-To, Shinagawa-Ku, Minami-Oi 3-20-5, SS1 Biru, 701</p>
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



update church set address='Tokyo-To, Shinagawa-Ku, Minami-Oi 3-20-5, SS1 Biru, 701', latitude = 35.589223, longitude = 139.735285 where church_path = 'tokyo';

------------ CEC TOKYO end ----------

---------- Oradell ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(53, 'oradell', 1, 9, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(53, 'en', 'menu_name', 'CEMC in Oradell');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(53, 'zh', 'menu_name', '俄備得基督教生命堂');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(3, NULL, 53);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'intro', 'en', 'CEMC in Oradell - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'intro', 'zh', '俄備得基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
<b>成立日期:</b> 2014年 6月 1日
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/OradellChurch.JPG" align="left" height="255" width="360" />
<p>一位林姐妹向張傳道提起博根郡許多華人需要福音，問可否在那兒開查經班。張傳道經過多方考慮及多次禱告後，求上帝賜一個印證：如果能找到教堂，就開始成立查經班；如果找不到教堂，那就不是上帝的帶領。於是就和林姐妹開始尋找教堂。
</p>
<p>在Kinderkamack Road上共有三間教堂，結果上帝預備了現在的堂址，就是Annunciation Church；當地教會牧師Rev.Archie說了一句話更讓她們相信這是上帝的帶領。此牧師對張傳道說：「去，把人帶進教會來！」感謝主，帶著上帝的賜福，張傳道於2013年一月開始歐瑞德地區的查經班
</p>

<p>經過一年多的查經，張傳道發現沒有崇拜，事工就很難長久，所以開始向美國教會申請主日崇拜的使用。當時有另一間韓國教會也來申請租用場地，並且提出很高的月租費$1,800.00。當Archie牧師告訴張傳道時，她嚇了一跳，因為教會付不起這麼貴的租金，所以只有禱告求主的憐憫。Archie牧師要張傳道來參加他他們五月份的董事會開會，張傳道應邀參加也說明了俄備得生命堂的組織、異象及福音的負擔；同時，也明白地告訴他們，教會只能付$600.00的租金。
</p>

<p>第二天(週三晚)，教會有查經禱告會，張傳道剛踏進教堂，Archie牧師看見她就說：「恭喜妳！董事會決定讓你們留下來…」，張傳道驚呆了！雖然他們把月租提高到$830.00，但這費用仍比不上韓國教會所給的優厚，可是他們卻決定讓我們使用教堂，拒絕了韓國人的申請。這真的是上帝奇妙的作為！
</p>

<p>真的感謝主，上帝開的路就沒有人能關；俄備得基督教生命堂於2014年六月1日開始了第一個主日崇拜。
他看見許多的人，就憐憫他們；因為他們困苦流離，如同羊沒有牧人一般。於是對門徒說：「要收的莊稼多，做工的人少。所以，你們當求莊稼的主打發工人出去收他的莊稼。」 ( 馬太福音9: 36-38)
</p>

</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'contactus', 'en', 'CEMC in Oradell - Contact Us', 'Christian Evangelical Church in Oradell<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'contactus', 'zh', '俄備得基督教生命堂 - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(53, 'schedule', 'en', 'CEMC in Oradell - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
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
			<td>Rev. Hosea Chi 973-335-7337, ext. 219,  (C) 646-763-3209</td>
		</tr>

</tbody>
</table>

<div style="margin-left: 20px">
<table cellpadding="1px" cellspacing="0px">
<tbody class="borderless-table">
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
<td class="label">Address:</td>
<td>861 51st Street, Brooklyn, NY 11220, USA</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">Tel#:</td>
<td> 718-871-8828 </td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">Email:</td>
<td> ecmsibkl@gmail.com</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p><span class="label">Established Date: </span>December 23, 2014</p>
<p>
<img src="/emsi/images/Brooklyn-1-2022.JPG" alt="view church photo gallery" height="255" align="left" hspace="5" width="360" />
We held our first evangelical meeting at the intersection of 44th St. near 8th Av. on Dec. 23, 2014. Rev. Moses Yang, the Bishop of Christian Evangelical Mission presided over the meeting. The Evangelical Church, Mission & Seminary International in Brooklyn was established that day. Rev. Hosea Chi was appointed the minister of the church and several brothers and sisters from our sister church in Chinatown were assigned to serve in this new church. A few brothers and sisters were moved to volunteer themselves in this evangelical outreach work at the 8th Avenue in Brooklyn.
</p>
<p>In searching for a church location, we saw the leading of our Lord. In God’s miraculous leading, Rev. Moses Yang located the phone number of the Bay Ridge Christian Center from the name cards of the pastor he met in the Israel tour in 2008 and contacted them. We had faith that they would lease their church building to us for Sunday worship, and they did. On Mother’s day, May 10th, 2015, we held our first Sunday worship there.
</p>
<p>There are over seventy thousands Chinese near the 8th Ave. area in Brooklyn. They came from Fuzhou, Taishan and different cities and provinces in China. The field is wide, and is ready to be harvested. Our mission is to preach Gospel to the lost; and to teach and to guard the truth for the believers so to build up the church.
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
			<td>戚厚生牧師 973-335-7337, ext. 219, (手機) 646-763-3209</td>
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
<td>861 51st Street, Brooklyn, NY 11220</td>
</tr>
<tr>
<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
<td class="label">電話:</td>
<td> 718-871-8828</td>
</tr>
<tr>
<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
<td class="label">電郵:</td>
<td> ecmsibkl@gmail.com</td>
</tr>
</tbody>
</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2014年 12月 23日
</p>
<p>
<span class=\"label\">簡史: </span><br />
</p>
<p>
<img src="/emsi/images/Brooklyn-1-2022.JPG" alt="view church photo gallery" height="255" align="left" hspace="5" width="360" />
2014年12月23日我們在八大道44街舉辦第一次福音佈道會，佈道會監督楊摩西牧師主持，當晚希伯崙基督教生命堂教會成立，指派戚厚生牧師夫婦牧養、及幾位中國城生命堂的弟兄姊妹協助教會事工；是日亦有弟兄姊妹被感動願意投入布祿崙八大道的華人福音事工。
</p>
<p>在尋找禮拜堂堂址時，我們也見到神的帶領。楊牧師從2008年參加以色列牧者考察團認識的許多傳道人的名片中，找到Bay Ridge Christian Center (灣脊區基督徒中心) 的電話，和他們連絡，很奇妙地，主帶領我們有信心、相信可以租借到該教會作為主日崇拜使用；感謝聖靈的帶領及應證，我們於五月第二個星期日，也就是母親節主日，開始在這裏的主日崇拜、及福音事工。
</p>
<p>八大道這一帶，有將近七萬的華人，來自福建福州、廣東台山等不同的城市、不同的省份，這些中國同胞都是我們廣大的禾場。雖然這地區已經有許多的華人教會，但仍缺乏聖經真理的教導。傳揚 主的福音是我們首要事工，真理的維護與扎根更是我們搶救靈魂、建立教會的要務。
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'contactus', 'en', 'ECMSI in Brooklyn - Contact Us', 'Christian Evangelical Church in Brooklyn Mandaring Service<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'contactus', 'zh', '希伯崙基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'schedule', 'en', 'ECMSI in Brooklyn - Church Services Schedule', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>Worship Service</td>
			<td>Sunday 10:30 am</td>
		</tr>
		<tr>
			<td>Adult Sunday School</td>
			<td>Sunday 9:30 am</td>
		</tr>
		<tr>
			<td>Children Sunday School</td>
			<td>Sunday 10:30 am</td>
		</tr>
		<tr>
			<td>Choir Practice</td>
			<td>Sunday 1 pm</td>
		</tr>
		<tr>
			<td>Bible Class</td>
			<td>Tuesday 2 pm</td>
		</tr>
		<tr>
			<td>Prayer and Bible Study</td>
			<td>Wednesday 7:30 pm</td>
		</tr>
		<tr>
			<td>Youth Fellowship</td>
			<td>Friday 7:30 pm</td>
		</tr>
		<tr>
			<td>Adult Bible Study</td>
			<td>Friday 7:30 pm</td>
		</tr>
		<tr>
			<td>Men’s Fellowship</td>
			<td>Fourth Sunday 7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(55, 'schedule', 'zh', '希伯崙基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</td>
			<td>週日上午 10:30 am</td>
		</tr>
		<tr>
			<td>成人主日學</td>
			<td>週日上午 9:30 am</td>
		</tr>
		<tr>
			<td>兒童主日學</td>
			<td>週日上午 10:30 am</td>
		</tr>
		<tr>
			<td>詩歌練習</td>
			<td>週日上午 1 pm</td>
		</tr>
		<tr>
			<td>日間查經班</td>
			<td>週二下午  2 pm</td>
		</tr>
		<tr>
			<td>禱告查經班</td>
			<td>週三晚上 7:30 pm</td>
		</tr>
		<tr>
			<td>少年團契</td>
			<td>週五晚上  7:30 pm</td>
		</tr>
		<tr>
			<td>成人查經班</td>
			<td>週五晚上  7:30 pm</td>
		</tr>
		<tr>
			<td>弟兄團契 </td>
			<td>每月第四週日下午  7:30 pm</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
');


update church set address='861 51st Street, Brooklyn, NY 11220, USA', latitude =  40.639791, longitude = -74.0047537  where church_path = 'brooklynmandarin';
update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Pastors </b>Rev. Hosea Chi 973-335-7337, ext. 219, (C) 646-763-3209</br>
</p>
<p style="padding-left: 55px;">
Mrs. Chialin Chi, (C) 973-932-3534</p>
<p>
<b>Address: </b>861 51st Street, Brooklyn, NY 11220, USA</p>
<p>
<b>Tel #: </b>718-871-8828</p>
<p>
<b>Email: </b>ecmsibkl@gmail.com</p>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3027.5506352609455!2d-74.0047536847096!3d40.63979097933986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25acb309f4c8f%3A0xc0a6c546de404469!2s861+51st+St%2C+Brooklyn%2C+NY+11220!5e0!3m2!1sen!2sus!4v1550699399572" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklynmandarin')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<b>牧師: </b> 戚厚生 牧師 973-335-7337, ext. 219, (手機) 646-763-3209<br />
</p>
<p style="padding-left: 40px;">
戚陳佳琳 師母, (手機) 973-932-3534</p>
<p>
<b>地 址: </b>861 51st Street, Brooklyn, NY 11220, USA</p>
<p>
<b>電 話: </b>718-871-8828</p>
<p>
<b>電 郵: </b>ecmsibkl@gmail.com</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3027.5506352609455!2d-74.0047536847096!3d40.63979097933986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25acb309f4c8f%3A0xc0a6c546de404469!2s861+51st+St%2C+Brooklyn%2C+NY+11220!5e0!3m2!1sen!2sus!4v1550699399572" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklynmandarin')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Brooklyn 7th ave - used to be called Brooklyn Mandarin - 8th Ave



---------- StatenIsland  New church June 2019 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(62, 'statenIsland', 1, 11, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(62, 'en', 'menu_name', 'ECMSI in Staten Island');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(62, 'zh', 'menu_name', '希頓島基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(3, NULL, 62);

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'intro', 'en', 'ECMSI in Staten Island  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Rev. Hosea Chi 973-335-7337, ext. 219</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>4550 Amboy Road, Staten Island, NY 10312, USA<br/>
                    (Bethal Evangelical Free Church)</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td> 646-979-0107 </td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: June 1, 2019</span></p>
<p>
The Chinese population in Staten Island has been increasing. Many of them send their children to schools in Brooklyn. We even have five families from Staten Island among our congregation in the Brooklyn church. Therefore, under the suggestion of Rev. Moses Yang, we started a church in Staten Island to preach the gospel of Jesus Christ in 2019. It is our hope that more Chinese people in Staten Island will become the beneficiaries of this good news.

</p>
</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'intro', 'zh', '希頓島基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
				<td>戚厚生牧師 973-335-7337, ext. 219</td>
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
				<td>4550 Amboy Road, Staten Island, NY 10312, USA<br/>
                    (Bethal Evangelical Free Church)</td>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td> 646-979-0107</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2019年 6月 1日
</p>
<p>
<span class=\"label\">簡史: </span>
</p>
<p>
在總會的宣教異象中，2019年6月我們由希伯崙生命堂Brooklyn前往Staten Island 拓展主耶穌基督的福音，願這大好的消息能在Staten Island成為華人的祝福。
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'contactus', 'en', 'ECMSI in Staten Island - Contact Us', 'ECMSI in Staten Island<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'contactus', 'zh', '希頓島基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'schedule', 'en', 'ECMSI in Staten Island - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(62, 'schedule', 'zh', '希頓島基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');

update church set address='4550 Amboy Road, Staten Island, NY 10312, USA', latitude = 40.5421763, longitude = -74.1667657 where church_path = 'statenIsland';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Pastor: </b>Rev. Hosea Chi 973-335-7337, ext. 219</br>
</p>
<p style="padding-left: 55px;">
Mrs. Chialin Chi, (C) 973-932-3534</p>
<p>
<b>Address: </b>4550 Amboy Road, Staten Island, NY 10312, USA
<br/>(Bethal Evangelical Free Church)
</p>
<p>
<b>Tel #: </b> 646-979-0107
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3031.9734245411933!2d-74.16676565029083!3d40.54217627924937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24a535c7f445d%3A0x5613df9f7a2b2cba!2s4550+Amboy+Rd%2C+Staten+Island%2C+NY+10312!5e0!3m2!1sen!2sus!4v1560827263863!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
')	where church_id = (select church_id from church where church_path = 'statenIsland')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<b>牧師: </b> 戚厚生 牧師 973-335-7337, ext. 219<br />
</p>
<p style="padding-left: 40px;">
戚陳佳琳 師母, (手機) 973-932-3534</p>
<p>
<b>地 址: </b>4550 Amboy Road, Staten Island, NY 10312, USA
<br/>(Bethal Evangelical Free Church)
</p>
<p>
<b>電 話: </b>646-979-0107
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3031.9734245411933!2d-74.16676565029083!3d40.54217627924937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24a535c7f445d%3A0x5613df9f7a2b2cba!2s4550+Amboy+Rd%2C+Staten+Island%2C+NY+10312!5e0!3m2!1sen!2sus!4v1560827263863!5m2!1sen!2sus" width="640" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'statenIsland')
	and locale = 'zh'
	and page_id = 'contactus';




-----------------------end StatenIsland








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
<b>成立日期:</b> 1973年
</p>
<p>
<span class=\"label\">簡史: </span><br />
<img hspace="5" src="/emsi/images/church_pearlriver.jpg" align="left" height="255" width="360" />珍珠河教會的起源是基於一位姐妹對真理渴望的要求，於是楊牧師就來到新州北部靠近紐約州的地方開始了一個查經班。漸漸地，查經班的人數越來越多，他們就向美國衛理公會租用他們的場地，於1973年成立了紐約州基督教生命堂。經過幾次的搬遷，總覺得租用別人的地方實在不方便；禱告以後，弟兄姐妹們就開始購堂的計劃。
</p>
<p>感謝主，於1996年初，終於買了一棟原本銀行專用的建築，手續順利，終於六月2日遷入新址；同年，七月27日舉行獻堂典禮。教會正名為「珍珠河基督教生命堂」。
</p>
<p>多年來，本堂的牧者有：徐頌光牧師、譚俊德傳道、李月雲傳道、但功濤傳道及張博淨、蔡純德傳道夫婦等等，他們都曾在本堂精心的牧養。從1997年至今，則由國際福音佈道神學院畢業的張秀蘭傳道牧養教會。
教會成員多數來自紐約州的羅克蘭郡（Rockland County, New York），以及新澤西州的柏根郡(Bergen County)；教會附近的居民不多，會友都是來自不同的方向。感謝主，這小小的屬靈家庭在主特別的眷顧下，經歷許多的恩典，使我們豐富有餘。
</p>
<p>我們感謝從第一代的基督徒在這個家裡留下的見證，使得後來的基督徒可以享受他們辛苦耕耘的果子；但願我們也能為主，也為了下一代的接棒人，努力建造神的家，把福音廣傳出去，讓珍珠河教會能一直為主發光，直到主再來的日子。
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
			<td class="label">Intern Evangelist:</td>
			<td>Luke Feng, (C) 0027-(0)74-961-6036</td>
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
			<td> 0027-(0)21-686-0714, (C) 0027-(0)74-961-6036</td>
		</tr>
		<tr>
			<td><img src="/emsi/images/icon_email.gif" height="16" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:haoweifeng23@gmail.com"> haoweifeng23@gmail.com</a><br />
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
			<td class=\"label\">實習傳道:</td>
			<td>馮皓威, (C) 0027-(0)74-961-6036</td>
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
			<td> 0027-(0)21-686-0714, (C) 0027-(0)74-961-6036 </td>
		</tr>
		<tr>
			<td><img src=\"/emsi/images/icon_email.gif\" height=\"16\" width=\"16\" /></td>
			<td class=\"label\">電郵:</td>
			<td><a href=\"mailto: haoweifeng23@gmail.com"> haoweifeng23@gmail.com</a></td>
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
<b>成立日期:</b> 1996年 2月
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
<b>Intern Evangelist: </b> Luke Feng, (C) 0027-(0)74-961-6036
</p>
<p>
<b>Address: </b>94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa
</p>
<p>
<b>Tel #: 0027-(0)21-686-0714, (C) 0027-(0)74-961-6036
</p>
<p>
<b>Email: </b>haoweifeng23@gmail.com
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
<b>實習傳道: </b>馮皓威, (C) 0027-(0)74-961-6036
</p>
<p>
<b>地址: </b>94 Camp Ground Road, Rondebosch, Cape Town 7700, South Africa
</p>
<p>
<b>電話:</b> 0027-(0)21-686-0714, (C) 0027-(0)74-961-6036
</p>
<p>
<b>電郵: </b>haoweifeng23@gmail.com
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



---------- saitama  New church July 2021 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(63, 'saitama', 1, 11, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(63, 'en', 'menu_name', 'CEC in Saitama');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(63, 'zh', 'menu_name', '埼玉基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(14, NULL, 63);
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'intro', 'en', 'CEC in Saitama  - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td>Ev. LiHong Lin, (C) 090-3797-8428</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Saitama-Ken Saitama-Shi Chuo-Ku Kamiochiai 9-9-4-508, Japan</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td>(C) 090-3797-8428</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td>shmily9973@yahoo.co.jp</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: Nov. 15, 2015</span></p>
<p>
</p>
</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'intro', 'zh', '埼玉基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
				<td>林麗鴻 傳道, (C) 090-3797-8428</td>
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
				<td>埼玉縣埼玉市中央區上落合9-9-4-508號</td>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td>(C) 090-3797-8428</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td>shmily9973@yahoo.co.jp</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2015年 11月 15 日
</p>
<p>
<span class=\"label\">簡史: </span>
</p>
<p>
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'contactus', 'en', 'CEC in Saitama - Contact Us', 'CEC in Saitama<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'contactus', 'zh', '埼玉基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'schedule', 'en', 'CEC in Saitama - Church Services Schedule',
'<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(63, 'schedule', 'zh', '埼玉基督教生命堂  - 聚會日程', '<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
	</tbody>
</table>

<p>&nbsp;</p>
');

update church set address='Saitama-Ken Saitama-Shi Chuo-Ku Kamiochiai 9-9-4-508, Japan', latitude = 35.90042128626243, longitude = 139.6240947684791 where church_path = 'saitama';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Pastor: </b>Ev. LiHong Lin, (C) 090-3797-8428
</p>
<p>
<b>Address: </b>Saitama-Ken Saitama-Shi Chuo-Ku Kamiochiai 9-9-4-508, Japan
</p>
<p>
<b>Tel #: </b> (C) 090-3797-8428
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3231.9092273179504!2d139.6219168148686!3d35.90023878014376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018c16942edd69d%3A0x6de2fd784ae28125!2s9-ch%C5%8Dme-9-4%20Kamiochiai%2C%20Chuo%20Ward%2C%20Saitama%2C%20338-0001%2C%20Japan!5e0!3m2!1sen!2sus!4v1626892204339!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
')	where church_id = (select church_id from church where church_path = 'saitama')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('<p>
<b>牧者: </b> 林麗鴻 傳道, (C) 090-3797-8428
</p>
<p>
<b>地 址: </b>埼玉縣埼玉市中央區上落合9-9-4-508號
</p>
<p>
<b>電 話: </b>(C) 090-3797-8428
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3231.9092273179504!2d139.6219168148686!3d35.90023878014376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018c16942edd69d%3A0x6de2fd784ae28125!2s9-ch%C5%8Dme-9-4%20Kamiochiai%2C%20Chuo%20Ward%2C%20Saitama%2C%20338-0001%2C%20Japan!5e0!3m2!1sen!2sus!4v1626892204339!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'saitama')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Saitama


---------- Akabane   New church July 2021 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(64, 'akabane', 1, 11, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(64, 'en', 'menu_name', 'CEC in Akabane ');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(64, 'zh', 'menu_name', '赤羽基督教生命堂 ');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(14, NULL, 64);
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'intro', 'en', 'CEC in Akabane   - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelists: </td>
			<td>Ev. Yang Xi, 070-7546-8175</td>

		</tr>
		<tr>
			<td class="label"></td>
			<td>Ev. Dong Jinbo, 080-7046-5578</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Tokyo-To Kita-Ku Akabane Kita 2-36-3-307, Japan</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td>(C) 070-7546-8175 / (C) 080-7046-5578</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td>emsi_chiyu@hotmail.com</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: July 2020</span></p>


<p>
In 2019, a sister in my online Bible Study suggested that we should reach out to the Chinese in Kita-Ku, Tokyo and preach the Gospel to them. So I (Evangelist Yang Xi) discussed it with Rev. Moses Yang who then commissioned me to begin that ministry in Kita-Ku, Tokyo. When I went to Tokyo, sister Wang Yu Xing received me, and allowed me to use her house to start a Bible Study.
</p>
<p>
In July 2020, Evangelist Dong Jinbo, who finished her study in EBI in the USA, was commissioned by Rev. Yang to serve with Evangelist Yang Xi in Kita-Ku, Tokyo to outreach to the Chinese there. Soon after, we started Sunday Worship Service in the home of sister Wang Yu Xing as well as a series of Bible teaching classes for those brothers and sisters who want to serve the Lord and preach the Gospel during the pandemic.
</p>
<p>
May the Lord lead us, and bless us so that we can be a blessing for many! May the Lord remember the brothers and sisters who give selflessly for the Lord’s work! May the Lord’s house prosper!
</p>


</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'intro', 'zh', '赤羽基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
				<td class="label">傳道: </td>
				<td>楊熙 傳道 (C) 070-7546-8175</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td>董金波 傳道 (C) 080-7046-5578</td>
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
				<td>東京都北區赤羽北2丁目36番3-307號</td>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td>(C) 070-7546-8175 / (C) 080-7046-5578</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td>emsi_chiyu@hotmail.com</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2020年 7月
</p>
<p>
<span class=\"label\">簡史: </span>
</p>

<p>2020年東京北區傳福音
</p>

<p>2020年一月東京疫情開始，也正是這個時候伴隨着疫情，福音工作在北區開始了。
</p>

<p>在此之前，2019年有一位東京的姐妹在網路上參加楊熙傳道帶領的查經班，提出希望在東京北區一帶的華人中傳福音，楊傳道向總會楊牧師滙報後，得到楊牧師支持， 於2020年前往東京開展福音事工， 王玉新姐妹接待，並把自己的家奉獻出來，為起初的查經開放使用。
</p>

<p>家庭教會建立
</p>

<p>2020年七月，從美國總會神學院學習歸來的董金波傳道被派至北區與楊熙傳道共同開展福音事工，並於本月在王玉新姐妹家中正式開始主日敬拜，並陸續開辦聖經教導班，幾位有心志傳福音事奉主的會友因此得以進一步學習、裝備，在疫情不斷蔓延的環境中，靠着主大能的保守，繼續開展着傳福音的事工。
求主帶領，藉着弟兄姐妹的同心合意的事奉，願我們手中的事奉成為多人的祝福。
求主紀念在疫情中靠着在主基督裡的信心為主的事工無私無畏奉獻的弟兄姐妹們！
願主的家興旺！
</p>

<p>
</p>
</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'contactus', 'en', 'CEC in Akabane  - Contact Us', 'CEC in Akabane<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'contactus', 'zh', '赤羽基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'schedule', 'en', 'CEC in Akabane  - Church Services Schedule',
'
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周日上午 十時卅分</br>Sunday 10:30 am</td>
		</tr>
		<tr>
			<td>禱告會</br>Prayer Meeting</td>
			<td>周六晚上 七時卅分</br>Saturday 07:30 pm</td>
		</tr>
		<tr>
			<td>國語查經</br>Mandarin Bible Study</td>
			<td>周三晚上 七時卅分</br>Friday 07:30 pm</td>
		</tr>
		<tr>
			<td>基要真理學習班</br>Basic Doctrines</td>
			<td>周三上午 十時</br>Wednesday 10:00 am</td>
		</tr>
	</tbody>
</table>
</br>

<p>&nbsp;</p>
');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(64, 'schedule', 'zh', '赤羽基督教生命堂  - 聚會日程',
'
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>主日崇拜</br>Worship Service</td>
			<td>周日上午 十時卅分</br>Sunday 10:30 am</td>
		</tr>
		<tr>
			<td>禱告會</br>Prayer Meeting</td>
			<td>周六晚上 七時卅分</br>Saturday 07:30 pm</td>
		</tr>
		<tr>
			<td>國語查經</br>Mandarin Bible Study</td>
			<td>周三晚上 七時卅分</br>Friday 07:30 pm</td>
		</tr>
		<tr>
			<td>基要真理學習班</br>Basic Doctrines</td>
			<td>周三上午 十時</br>Wednesday 10:00 am</td>
		</tr>
	</tbody>
</table>
</br>

<p>&nbsp;</p>
');

update church set address='Tokyo-To Kita-Ku Akabane Kita 2-36-3-307, Japan', latitude = 35.78805542336534, longitude = 139.70970885498207 where church_path = 'akabane';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Evangelists: </b>
<p style="padding-left: 55px;">
Ev. Yang Xi, 070-7546-8175</p>
<p style="padding-left: 55px;">
Ev. Dong Jinbo, 080-7046-5578</p>

</p>
<p>
<b>Address: </b>Tokyo-To Kita-Ku Akabane Kita 2-36-3-307, Japan
</p>
<p>
<b>Tel #: </b> (C) 070-7546-8175 / (C) 080-7046-5578
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3236.4887233435566!2d139.707498714865!3d35.78793358016955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018933e658d3fd1%3A0xaa33515261a9902d!2s2-ch%C5%8Dme-36-3%20Akabanekita%2C%20Kita%20City%2C%20Tokyo%20115-0052%2C%20Japan!5e0!3m2!1sen!2sus!4v1626898888527!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
')	where church_id = (select church_id from church where church_path = 'akabane')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('
<p>
<b>傳道:</b> 楊熙 傳道, (C) 070-7546-8175
</p>
<p style="padding-left: 40px;">
董金波 傳道, (C) 080-7046-5578
</p>

<b>地 址: </b>東京都北區赤羽北2丁目36番3-307號
</p>
<p>
<b>電 話: </b>(C) 070-7546-8175 / (C) 080-7046-5578
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3236.4887233435566!2d139.707498714865!3d35.78793358016955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018933e658d3fd1%3A0xaa33515261a9902d!2s2-ch%C5%8Dme-36-3%20Akabanekita%2C%20Kita%20City%2C%20Tokyo%20115-0052%2C%20Japan!5e0!3m2!1sen!2sus!4v1626898888527!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'akabane')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Akabane


---------- Mandarin in Den Haag   New church April 2022 ---------
INSERT INTO CHURCH(CHURCH_ID, CHURCH_PATH, ENABLED, SORT_ORDER, VERSION) VALUES(65, 'denhaag_mandarin', 1, 11, 0);
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(65, 'en', 'menu_name', 'CEC Mandarin in Den Haag');
INSERT INTO PUBLIC.CHURCH_DETAIL(CHURCH_ID, LOCALE, KEY, VALUE) VALUES(65, 'zh', 'menu_name', '海牙普通話基督教生命堂');
INSERT INTO PUBLIC.CHURCH_HIERARCHY(PARENT_ENTITY_ID, CHURCH_ORG_ID, CHURCH_ID) VALUES(18, NULL, 65);
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'intro', 'en', 'CEC Mandarin in Den Haag   - Brief History', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif;}
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
			<td class="label">Evangelists: </td>
			<td>Ev. Tao Wang (+31-(0)61-749-3457)</td>
		</tr>
		<tr>
			<td class="label"></td>
			<td>Ev. Songlin Hu (+31-(0)64-881-5977)</td>
		</tr>

	</tbody>
</table>

<div style="margin-left: 20px">
	<table cellpadding="1px" cellspacing="0px">
		<tbody class="borderless-table">
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_googlemap.gif" width="16" /></td>
				<td class="label">Address:</td>
				<td>Oranjelaan 62, 2281 GG Rijswijk, The Netherlands</td>
			</tr>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">Tel#:</td>
				<td>+31-(0)61-749-3457 / +31-(0)64-881-5977</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">Email:</td>
				<td>emsimandrindh@gmail.com</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
	<p><span class="label">Established Date: January 2, 2022</span></p>


<p><img hspace="5" src="/emsi/images/ChurchDenHaagMadarin3_2022.JPG" align="left" height="255" width="360" />
Rev. Moses Yang has been burdened for The Netherlands Mandarin gospel ministry for the past two decades. Through the years, the EMSI pastors and church members have seen an increasing number of Chinese arriving to The Netherlands from mainland China. Because of this, there is an urgent need to develop and expand the Mandarin ministry. This need has been committed to much prayer. Thank God, our prayers have finally been answered. At the end of 2021, the EMSI headquarter authorized the start of the Mandarin Christian Evangelical Church in Den Haag ministry to specifically carry out the gospel work among the Mandarin-speaking Chinese community in The Netherlands.
</p>
<p>
On January 2, 2022, the EMSI headquarter officially established the Mandarin Christian Evangelical Church in Den Haag. This is under the leadership of Rev. Moses Yang. It is the 59th church of the Christian Evangelical Mission, and the 36th church of the European branch.
</p>
<p>
Ev. Tao Wang and Ev. Songlin Hu have been formally commissioned by Rev. Moses Yang, to start this church to advance the gospel. May the Lord lead us and use us to become a blessing for many with this church. Glory to His name.
</p>


</div>
');



INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'intro', 'zh', '海牙普通話基督教生命堂 - 教會簡介', '<style type="text/css">.contact-content {font-family: Arial,helvetica,sans-serif,新細明體 ;}
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
				<td class="label">傳道: </td>
				<td>王濤 傳道 (+31-(0)61-749-3457)</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td>胡松林 傳道 (+31-(0)64-881-5977)</td>
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
				<td>Oranjelaan 62, 2281 GG Rijswijk, The Netherlands</td>
			<tr>
				<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
				<td class="label">電話:</td>
				<td>+31-(0)61-749-3457 / +31-(0)64-881-5977</td>
			</tr>
			<tr>
				<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
				<td class="label">電郵:</td>
				<td>emsimandrindh@gmail.com</td>
			</tr>
		</tbody>
	</table>
</div>
</div>

<hr align="center" size="1" width="100%" /></div>

<div class="main-content">
<p>
<b>成立日期:</b> 2022 年 1月 2日
</p>
<p>
<span class=\"label\">簡史: </span>
</p>

<p><img hspace="5" src="/emsi/images/ChurchDenHaagMadarin3_2022.JPG" align="left" height="255" width="360" />
二十多年來楊摩西牧師對荷蘭普通話福音事工一直有負擔和感動，越來越多的傳道人和弟兄姐妹也漸漸看到每年來荷蘭的中國同胞在增加，推動專門的普通話事工將逐漸成為未來教會發展的方向，大家也常常同心為此事工禱告。感謝神，我們的禱告終於有了回應。2021年年末總會授權我們開始籌辦荷蘭普通話生命堂事工，專門對荷蘭講普通話的華人開展福音工作。
</p>

<p>
022年1月2日總會正式成立海牙普通話生命堂，這是由楊摩西牧師領導下的，國際福音佈道會總會屬下的第59間生命堂，也是歐洲分會的第36間生命堂。
</p>

<p>
王濤傳道和胡松林傳道受總會國際神學福音佈道會差派，到海牙普通話生命堂開始作荷蘭新工場的開拓工作。求主帶我們，使用我們，也使用海牙普通話生命堂成為越來越多華人的祝福。
</p>


</div>');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'contactus', 'en', 'CEC Mandarin in Den Haag  - Contact Us', 'CEC Madarin in Den Haag<br><br>');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'contactus', 'zh', '海牙普通話基督教生命堂  - 連絡我們','');
INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'schedule', 'en', 'CEC Mandarin in Den Haag  - Church Services Schedule',
'
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>國語堂崇拜 (大堂)</br>Mandarin Worship Service (Sanctuary)</td>
			<td>週日下午</br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>荷語堂崇拜 (副堂) </br>Dutch Worship Service (Auditorium)</td>
			<td>週日下午 </br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 (中、荷)</br>Children Sunday School </td>
			<td>週日下午 </br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>中文查經班</br>Mandarin Bible Study</td>
			<td>週一上午</br>Monday</td>
			<td>10:00 - 11:30 am</td>
		</tr>

	</tbody>
</table>
</br>

<p>&nbsp;</p>
');

INSERT INTO PUBLIC.CHURCH_CONTENT(CHURCH_ID, PAGE_ID, LOCALE, TITLE, BODY) VALUES(65, 'schedule', 'zh', '海牙普通話基督教生命堂  - 聚會日程',
'
<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;">
	<tbody>
		<tr>
			<td>國語堂崇拜 (大堂)</br>Mandarin Worship Service (Sanctuary)</td>
			<td>週日下午</br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>荷語堂崇拜 (副堂) </br>Dutch Worship Service (Auditorium)</td>
			<td>週日下午 </br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>兒童主日學 (中、荷)</br>Children Sunday School </td>
			<td>週日下午 </br>Sunday</td>
			<td>12:45 pm</td>
		</tr>
		<tr>
			<td>中文查經班</br>Mandarin Bible Study</td>
			<td>週一上午</br>Monday</td>
			<td>10:00 - 11:30 am</td>
		</tr>

	</tbody>
</table>
</br>

<p>&nbsp;</p>
');

update church set address='Oranjelaan 62, 2281 GG Rijswijk, The Netherlands',  latitude = 52.056249239592425, longitude = 4.339608890836412 where church_path = 'denhaag_mandarin';

update church_content set body = STRINGDECODE('
<style>
.indentation {margin:20px;}
</style>
<p>
<b>Evangelists: </b>
<p style="padding-left: 55px;">
Ev. Tao Wang (+31-(0)61-749-3457)</p>
<p style="padding-left: 55px;">
Ev. Songlin Hu (+31-(0)64-881-5977)</p>

</p>
<p>
<b>Address: </b>Oranjelaan 62, 2281 GG Rijswijk, The Netherlands
</p>
<p>
<b>Tel #: </b> +31-(0)61-749-3457 / +31-(0)64-881-5977
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2453.294367340524!2d4.3374041153436!3d52.05616347825251!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5b6f706c6ede3%3A0x68d96ea9095ea2c8!2sOranjelaan%2062%2C%202281%20GG%20Rijswijk%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1649973951246!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'denhaag_mandarin')
	and locale = 'en'
	and page_id = 'contactus';

update church_content set body = STRINGDECODE('
<p>
<b>傳道:</b> 王濤 傳道 (+31-(0)61-749-3457)
</p>
<p style="padding-left: 40px;">
胡松林 傳道 (+31-(0)64-881-5977)
</p>

<b>地 址: </b>Oranjelaan 62, 2281 GG Rijswijk, The Netherlands
</p>
<p>
<b>電 話: </b>+31-(0)61-749-3457 / +31-(0)64-881-5977
</p>
<p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2453.294367340524!2d4.3374041153436!3d52.05616347825251!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c5b6f706c6ede3%3A0x68d96ea9095ea2c8!2sOranjelaan%2062%2C%202281%20GG%20Rijswijk%2C%20Netherlands!5e0!3m2!1sen!2sus!4v1649973951246!5m2!1sen!2sus" width="640" height="480" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</p>
')	where church_id = (select church_id from church where church_path = 'denhaag_mandarin')
	and locale = 'zh'
	and page_id = 'contactus';

-----------------------end Madarin in Den Haag

