var App = function() {
	
	// returns true if str1 starts with str2
	var _startsWith = function(str1, str2) {
		try {
			return str1.indexOf(str2) == 0;
		} catch (e) {
			return false;
		}
	};
	
	// Setup selected class on left nav.
	// Will add the 'selected' class to the <li> element if the child <a> href attribute matches current path.
	var _setupLeftNavSelectedItem = function() {
		var win_pathname = window.location.pathname;
		$('#page-nav li a').each(function (index) {
			var $this = $(this);
			$this.parent().removeClass('selected'); // first initialize all to unselected.
			var href = $this.attr('href');
			if (_startsWith(win_pathname, href)) { // see if this href matches the browser's current path
				$this.parent().addClass('selected');
			}
		});
	};
	
	// initialize the change-lang-?? link
	var _setupChangeLangLink = function() {
		$('#change-lang-zh').click(function(evt) {
			_onClickChangeLang('zh');
			evt.preventDefault();
		});
		$('#change-lang-en').click(function(evt) {
			_onClickChangeLang('en');
			evt.preventDefault();
		});
	};
	
	var _onClickChangeLang = function(lang) {
		var pathname = window.location.pathname;
		var search = window.location.search;
		search = _adjustSearch(search);
		window.location = pathname+"?lang="+lang;
	};
	
	var _adjustSearch = function(search) {
		if (search.indexOf("lang=zh") > -1) {
			return ""; // TODO: change this to replace the string "lang=zh" 
		}
		if (search.indexOf("lang=en") > -1) {
			return ""; // TODO: change this to replace the string "lang=en"
		}
		return search;
	};
	
	// setup logo .click()
	var _setupLogoClick = function(initObj) {
		$('#logo').css('cursor', 'pointer');
		$('#logo').click(function(evt) {
			window.location = initObj.homeUrl;
		});
	};
	
	
	return {
		init: function (initObj) {
			_setupLeftNavSelectedItem();
			_setupChangeLangLink();
			_setupLogoClick(initObj);
		}
	};
}();
