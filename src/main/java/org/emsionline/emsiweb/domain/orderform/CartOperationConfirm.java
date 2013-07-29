package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;


public class CartOperationConfirm implements Serializable {
	
	private static final long serialVersionUID = 8269098707282507992L;
	
	private boolean success;
	private String message;
	private Cart cart;
	
	public boolean isSuccess() { return success; }
	public void setSuccess(boolean success) { this.success = success; }
	
	public String getMessage() { return message; }
	public void setMessage(String message) { this.message = message; }
	
	public Cart getCart() { return cart; }
	public void setCart(Cart cart) { this.cart = cart; }
}
