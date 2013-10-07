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
update church set address='600 West Campbell Avenue, Campbell, CA 95008, USA', latitude = 37.2869291, longitude = -121.9614152 where church_path = 'sanjose';
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

---------------------update Brooklyn intro page
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
			<td>林森良 牧師 , (手機)917-361-6866</td>
		</tr>
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
			<td> 4609 8th Avenue, Brooklyn, NY 11220, USA</td>
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
布路倫生命堂成立于2009年8月3日。生命堂總監督楊摩西牧師看見布路倫地區華人越來越多,因而開拓此間教會。
</p>
<p>
目前除了每週崇拜聚會外，還有查經班。聚會時間如下：
</p>
<p>
崇拜時間： 每週—下午5:30—6:45 P.M.
</p>
<p>
查經禱告會: 每週—下午5:30—7:00 P.M.
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'intro';
	
	
update church_content set body = STRINGDECODE('<p>
<b>Address: </b>4609 8th Avenue, Brooklyn, NY 11220, USA
</p>
<p>
Pastor #: Rev. SenLiang Lin, (cell) 917-361-6866 </br>
Evangelist #: Ev. Paul Cheng, (cell) 917-361-0823
</p>
<b>Directions:</b> 
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=4609+8th+Avenue,+Brooklyn,+NY+11220,+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=4609+8th+Ave,+Brooklyn,+Kings,+New+York+11220&amp;ll=40.644633,-73.998928&amp;spn=0.007815,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=4609+8th+Avenue,+Brooklyn,+NY+11220,+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=4609+8th+Ave,+Brooklyn,+Kings,+New+York+11220&amp;ll=40.644633,-73.998928&amp;spn=0.007815,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'en'
	and page_id = 'contactus';

	
update church_content set body = STRINGDECODE('<p>
<b>地址: </b>4609 8th Avenue, Brooklyn, NY 11220, USA
</p>
<p>
牧師: 林森良 牧師, (手機)917-361-6866 </br>
傳道: 陳松曦 傳道, (手機)917-361-0823
</p>
<p>
<iframe height=\"480\" scrolling=\"no\" width=\"640\" frameBorder=\"0\" src=\"http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=4609+8th+Avenue,+Brooklyn,+NY+11220,+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=4609+8th+Ave,+Brooklyn,+Kings,+New+York+11220&amp;ll=40.644633,-73.998928&amp;spn=0.007815,0.013733&amp;z=16&amp;iwloc=A&amp;output=embed\" marginHeight=\"0\" marginWidth=\"0\"></iframe><br />\r\n<small><a href=\"http://maps.google.map/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=4609+8th+Avenue,+Brooklyn,+NY+11220,+USA&amp;sll=37.0625,-95.677068&amp;sspn=41.139534,52.558594&amp;ie=UTF8&amp;hq=&amp;hnear=4609+8th+Ave,+Brooklyn,+Kings,+New+York+11220&amp;ll=40.644633,-73.998928&amp;spn=0.007815,0.013733&amp;z=16&amp;iwloc=A\" style=\"color: #0000ff; text-align: left\">View Larger Map</a></small>
</p>
')	where church_id = (select church_id from church where church_path = 'brooklyn')
	and locale = 'zh'
	and page_id = 'contactus';
	
	
------------end  brooklyn

---------------------update murrayhill  pages

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
			<td>Ev. Jing Huang</td>
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
<p>
<img src="/emsi/files/murrayhill/murrayhill.jpg" style="width: 466px; height: 282px" height="480" align="left" hspace="5" width="640" />Christian Evangelical Church in Murray Hill was established by the Christian Evangelical Mission in 1984 in New Jersey to serve the people working in the neighborhood factories and large companies. <br />
In the early days, the Sunday Worship service was located in a Sunday School classroom of a Methodist Church on Diamond Hill Road in Murray Hill. Because it has limited space, it was difficult to develop ministry. Even so, there were still a number of faithful church members who continued and persistently prayed for the day to have a church and a spiritual home of their own.<br />
On January 3, 2010, the Lord led us to move into a new church location at725 Mountain Avenue, Berkeley Heights, NJ 07922. We have a new beginning in the New Year. We believe this is the first step God is going to revive CEC Murray Hill. We cordially invite you to join with us to walk with our Lord, and to be in one accord with our Lord, to have our church revived by the Lord! 
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
			<td>黃靜 傳道 </td>
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
茉莉山生命堂位於新澤西州的Berkeley Heights，在佈道會總部多華谷（Towaco）以南約30英里的地方，成立於1984年。當時Lucent 和 AT&T兩大公司在教會所在地附近，集聚了許多華人專業人士。因中國人甚多，總監督楊摩西牧師看到開展聖工的需要，於是在黃宇銘弟兄的協助下，找到了教會聚會的地方，成立了教會。
</p>
<p>
(二)茉莉山生命堂現況
</p>
<p>
教會二十八年來先後已由十餘位牧者傳道人牧養。早期傳道人因為沒有掌握「拓荒三寶」（即個人佈道、查經、講道）致使教會沒能很好地成長，及至姚亨利牧師回菲律賓以後，停止了聚會。教會同工因看到本教會聖工多年無進展，建議不如關閉，以免浪費財力人力。但佈道會總部考慮到當地中國人多，有福音的需要，於是決定將教會的福音工作繼續做下去。
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
<p>
歡迎聯絡我們，有關信仰的一切問題！
</p>
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
			<td>Ev. Zong Quan Zhou</td>
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
			<td>Ev. YongSheng Zhang, (C) 973-393-7876</td>
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
			<td>張勇生 傳道, (手機)973-393-7876</td>
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

------------  ends chinatown

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
			<td>王艷華 傳道</td>
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
			<td>0034-934-22-1133</td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_phone.gif" width="16" /></td>
			<td class="label">手機:</td>
			<td>0034-679-33-4923</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">電郵:</td>
			<td><a href="mailto:emsibarcelona@yahoo.com">emsibarcelona@yahoo.com</a></td>
		</tr>
		<tr>
			<td class="label"><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>cembarcelona</td>
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
			<td>Evangel. Sophia Wang</td>
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
			<td>0034-934 22 11 33 ; 0034-679334923(cell)</td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_email.gif" width="16" /></td>
			<td class="label">Email:</td>
			<td><a href="mailto:emsibarcelona@yahoo.com">emsibarcelona@yahoo.com</a></td>
		</tr>
		<tr>
			<td><img height="16" src="/emsiweb/images/emsi/icon_skype.gif" width="16" /></td>
			<td class="label">Skype:</td>
			<td>cembarcelona</td>
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
			<td>600 West Campbell Avenue, Campbell, CA 95008</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>510-972-0473</td>
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
<a href="/emsi/gallery/?g2_itemId=131"><img src="/emsi/images/church_sanjose.jpg" alt="view church photo gallery" height="250" align="left" hspace="5" width="375" /></a> C.E.C. in San Jose was officially established on September 22, 1985, under the need and request of fellow Indonesians and the support of E.M.S.I.<br />
When the church was first formed, the attendance was in the teens.  As the church ministry expanded, God continually added to our congregation with new Christians.  As the number of attendants increased, our meeting place had relocated.  In these 24 years, we have been renting churches for our services.  But in November 1990, we moved into our first newly purchased church building.  But in the last ten years, due to the increase in Sunday Worship Service and Sunday school attendance, we didn\u2019t have sufficient space for ministry.  Therefore, in the last few years, we had to use the Government sponsored Senior Citizens place for our Wednesday Prayer Meeting and Friday Youth Group.  We also used another church and their classrooms for our Sunday Service and activities.  Facing these difficulties, we continually prayed that God  may be gracious to us, granting us a bigger church to expand His ministry.  Right now, we are in the process of looking for a more suitable place to purchase and that we have our own church building and expand His ministry.<br />
We have expanded our church ministries to mission, discipleship, evangelism, caring and Laymen\u2019s Institute.  The brothers and sisters actively participate and are very supportive.  Every year we could see that the Lord has given us new believers.  Not only do we have Indonesian Worship Service, but started the English Service too.<br />
Thanks and praises to the Lord!  For the past 24 years, God\u2019s wondrous working is clearly manifested in the church, leading many to salvation, and growing spiritually with steadfastness.  Just as the Bible says, \u201cNow unto him that is able to do exceeding abundantly above all that we ask or think, according to the power that worketh in us, Unto him be glory in the church by Christ Jesus throughout all ages, world without end. Amen.\u201d (Ephesians 3:20-21). 
</p>
</div>
')	where church_id = (select church_id from church where church_path = 'sanjose')
	and locale = 'en'
	and page_id = 'intro';



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
			<td>Via Melchiorre Gioia 193, 20125 Milano, Italy</td>
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
		<tr>
			<td class="label">Evangelist:</td>
			<td>Ev. Ka Man Chu-Ng</td>
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
		<tr>
			<td class=\"label\">傳道:</td>
			<td>朱吳嘉敏 傳道</td>
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
			<td>31-76-571-8456 / 31-62-454-2277</td>
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
			<td>C/ Pintor Aparicio, 9, Local-IZ 03003 Alicante, Spain</td>
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
			<td>Nieuwe Schoolweg 2, 7514 CG Enschede, The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_googlemap.gif" height="16" width="16" /></td>
			<td class="label">Office Address:</td>
			<td>Deurningerstraat 39A, 7514 BD Enschede , The Netherlands</td>
		</tr>
		<tr>
			<td class="label"><img src="/emsi/images/icon_phone.gif" height="16" width="16" /></td>
			<td class="label">Tel#:</td>
			<td>0031-(0)2-310-798 / 0031-(0)65-065-2284</td>
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
<a href="/emsi/gallery/?g2_itemId=1034"><img src="/emsi/images/church_enschede.jpg" alt="view church photo gallery" align="left" height="250" hspace="5" width="375" /> </a>Enschede is in the northernmost part of the Nethelands bordering of Germany. The city is home to many Universities. There are many overseas Chinese Students studying here, and also many restaurants nearby. In 2003, the Mission Board sent Sister Pan xx to Enschede for summer training, and upon her graduation in 2004, she was sent to start a Gospel Ministry among college students. Through the support of a college professor, she started a weekly bible study in the dining hall of a dormitory, and many overseas students came to know Christ through this ministry. In the ensuing five years that we have been in Enschede, we have longed to start Sunday Worship Services. In 2009, we started to diligently search for a place, and to pray. The Lord ultimately provided for us unexpectedly good news. A catholic church in the city center was willing to let us hold services there. Within a very short one week span, they agreed to let us use a part of the church for Sunday services and Sunday school at a rental we could afford. On Sept 6, 2009, we held our first Sunday Worship and Baptism Service. We call our church CEC in Enschede 
</p>
</div>
'	where church_id = (select church_id from church where church_path = 'enschede')
	and locale = 'en'
	and page_id = 'intro';


update church_content set body = STRINGDECODE('<p>
<b>Address: </b>36 Alpine Road, Towaco, NJ 07082 
</p>
<p>
<b>Tel #:</b>\u00a0 973-331-0545 | 973-331-0546 
</p>
<p>
<b>E-mail:\u00a0<span style="color: #0062a0"><u>cemc.towaco@gmail.com</u></span>\u00a0</b> 
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
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 200</span></span> 
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
			<span lang="EN-US"><span style="font-size: small; font-family: ''Times New Roman''; color: #000000">Ext. 233</span></span> 
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
	</u>Take Rt. 287(N) till Exit 47. At the end of the ramp turn left onto Rt. 202 North.<br />
	Make a right turn at the 3rd traffic light (Firehouse Rd), then a left turn at the next traffic light. <br />
	Make a right turn\u00a0past the\u00a0Gulf Gas Station onto Rose Court, and proceed on to the end of the road</li>
</ol>
')	where church_id = (select church_id from church where church_path = 'towaco')
	and locale = 'en'
	and page_id = 'contactus';



update church_content set body = '<table width="500px">
<tr>
	<th style="width: 50%">Activity</th>
	<th style="width: 50%">Time</th>
</tr>
<tr>
	<td style="text-align: center;">Office hours:</td>
	<td style="text-align: center;">Tuesday - Saturday 2:00pm - 6:00pm</td>
</tr>
</table>
'	where church_id = (select church_id from church where church_path = 'prato')
	and locale = 'en'
	and page_id = 'schedule';

