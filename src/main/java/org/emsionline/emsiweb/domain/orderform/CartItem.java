package org.emsionline.emsiweb.domain.orderform;


public class CartItem extends CatalogItem {
	
	private static final long serialVersionUID = -6345676381464268769L;
	
	private int quantity;
	
	
	public CartItem(CatalogItem item) {
		this.setItemCode(item.getItemCode());
		this.setItemShortDescr(item.getItemShortDescr());
		this.setNumVolumes(item.getNumVolumes());
		this.setAuthor(item.getAuthor());
		this.setPriceUS(item.getPriceUS());
		this.setQuantity(1);
	}

	public int getQuantity() { return quantity; }
	public void setQuantity(int quantity) { this.quantity = quantity; }
}