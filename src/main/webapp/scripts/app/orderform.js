var OrderForm = function() {
	
	var _basePath = "";
	var _cart= {};
	
	
	var _init = function(initObj) {
		_basePath = initObj.basePath;
		$('#cart').css('cursor', 'pointer');
		$('#cart').click(function (evt) {
			window.location = _basePath+"/order/cart";
		});
	};
	
	var _add = function(itemCode) {
		var url = _basePath + "/order/cart/add/"+itemCode;
		$.ajax({
			url: url
			, async: false
			, success: function(jsonData) {
				_cart = jsonData.cart;
				_updateCart();
			}
			, error: function() {
				alert("error occurred while adding item to cart");
			}
		});
	};
	
	var _delete = function(itemCode) {
		var url = _basePath + "/order/cart/delete/"+itemCode;
		$.ajax({
			url: url
			, async: false
			, success: function(jsonData) {
				_cart = jsonData.cart;
				_updateCart();
			}
			, error: function() {
				alert("error occurred while deleting item from cart");
			}
		});
	};
	
	var _updateCart = function() {
		var cartItems$ = $('#cart #item_list');
		var cartItemsTBody$ = cartItems$.find('tbody');
		cartItemsTBody$.empty();
		for (var i=0; i<_cart.items.length; i++) {
			var row = "<tr><td>"+_cart.items[i].itemCode+"</td></tr>";
			cartItemsTBody$.append(row);
		}
	};
	
	var _popupPrintWindowIfApplicable = function() {
		var url = _basePath + "/order/testcartpopup";
		$.ajax({
			url: url
			, async: false
			, success: function(jsonData) {
				if (jsonData.shouldPrint) {
					_cart = jsonData.cart;
					var printUrl = _basePath + "/order/print";
					var win = window.open(printUrl, "_blank", "width=600,height=500");
					win.focus();
				}
			}
			, error: function() {
				alert("error occurred while testing for print page");
			}
		});
	};
	
	return {
		init: function(initObj) {
			_init(initObj);
		},
		
		add: function(itemCode) {
			_add(itemCode);
		},
		
		del: function(itemCode) {
			_delete(itemCode);
		},
		
		popupPrintWindowIfApplicable: function() {
			_popupPrintWindowIfApplicable();
		}
	};
}();