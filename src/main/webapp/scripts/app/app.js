var App = function() {
	
	var _basePath = ""; // will be set to something like "/emsiweb"
	
	// returns true if str1 starts with str2
	var _startsWith = function(str1, str2) {
		try {
			return str1.indexOf(str2) == 0;
		} catch (e) {
			return false;
		}
	};
	
	// returns true if str1 ends with str2
	var _endsWith = function(str1, str2) {
		try {
			var d = str1.length - str2.length;
			return d >= 0 && str1.lastIndexOf(str2) === d;
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
	
	// Setup selected class on left nav.
	// Will add the 'selected' class to the <li> element if the child <a> href attribute matches current path.
	var _setupCemiInterioNavSelectedItem = function() {
		var win_pathname = window.location.pathname;
				
		var pattern = /\/(\d+)$/;
		if (pattern.test(win_pathname)) {
			win_pathname = win_pathname + "/intro";
		}
		
		
		$('#cemi-interior-page-nav li a').each(function (index) {
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
	
	var _setupBasePath = function(initObj) {
		_basePath = initObj.basePath;
		if (_endsWith(_basePath, "/")) {
			_basePath = _basePath.substring(0, _basePath.length-1);
		}
	};
	
	return {
		init: function (initObj) {
			_setupLeftNavSelectedItem();
			_setupCemiInterioNavSelectedItem();
			_setupChangeLangLink();
			_setupLogoClick(initObj);
			_setupBasePath(initObj);
		},
		
		getBasePath: function () {
			return _basePath;
		}
	};
}();
