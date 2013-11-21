var Minister = function() {
	
	var _basePath = "";
	
	var _init = function(initObj) {
		_basePath = initObj.basePath;
		
		$('#editBtnTop, #editBtnBottom').click(function() {
			window.location = _basePath + "/minister/get/" + $(':input[name="hiddenId"]').val();
		});
		
		$('#cancelBtnTop, #cancelBtnBottom').click(function() {
			window.location = _basePath + "/minister/readonly/" + $(':input[name="hiddenId"]').val();
		});
		
		$('#backToListBtnTop, #backToListBtnBottom').click(function() {
			window.location = _basePath + "/ministers";
		});
	};
	
	var _bindTableRowClick = function() {
		$('#ministersTable.table > tbody > tr').click(function(evt) {
			var re = /minister_(\d+)/;
			var this$ = $(this);
			var match = re.exec(this$.prop('id'));
			var id = match[1];
			Minister.detail(id);
		});
	};
	
	return {
		init: function(initObj) {
			_init(initObj);
			_bindTableRowClick();
		},
	
		detail: function(ministerId) {
			var url = _basePath + "/minister/readonly/"+ministerId;
			var form$ = $('#ministerListForm');
			form$.prop('action', url);
			form$.submit();
		}
	};
}();