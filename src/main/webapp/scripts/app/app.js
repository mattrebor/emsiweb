var App = function() {
	
	
	return {
		init: function () {
			$('#page-nav li').click(function (evt) {
				$('#page-nav li').removeClass('selected');
				var $this = $(this);
				if (!$this.hasClass('selected')) {
					$this.addClass('selected');
				}
				evt.preventDefault();
			});
		}
	};
}();