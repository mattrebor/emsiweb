package org.emsionline.emsiweb.domain.orderform;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;


public class Cart implements Serializable {
	
	private static final long serialVersionUID = -868901136613891374L;
	
	private List<CartItem> items = new ArrayList<CartItem>();
	
	
	public void add(CartItem item) {
		boolean found = false;
		for (CartItem cartItem : items) {
			if (cartItem.getItemCode().equals(item.getItemCode())) {
				found = true;
				cartItem.setQuantity(cartItem.getQuantity() + 1);
			}
		}
		if (!found) {
			items.add(item);
		}
	}
	
	public void remove(String itemCode) {
		Iterator<CartItem> iter = items.iterator();
		while (iter.hasNext()) {
			CartItem item = iter.next();
			if (item.getItemCode().equals(itemCode)) {
				iter.remove();
				return;
			}
		}
	}
	
	public void clear() {
		if (items == null) { return; }
		items.clear();
	}
	
	
	public String toJsonString() {
		try {
			ObjectWriter objWriter = new ObjectMapper().writer().withDefaultPrettyPrinter();
			String json = objWriter.writeValueAsString(this);
			return json;
		} catch (Exception e) {
			return "{}";
		}
	}
	
	public List<CartItem> getItems() { return items; }
	public void setItems(List<CartItem> items) { this.items = items; }
}