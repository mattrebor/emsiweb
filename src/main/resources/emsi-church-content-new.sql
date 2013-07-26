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



