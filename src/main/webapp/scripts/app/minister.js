var Minister = function() {
	
	var _basePath = "";
	
	var _init = function(initObj) {
		_basePath = initObj.basePath;
		
		$('#editBtn').click(function() {
			window.location = _basePath + "/minister/get/" + $(':input[name="hiddenId"]').val();
		});
	};
	
	
	return {
		init: function(initObj) {
			_init(initObj);
		}
	};
}();