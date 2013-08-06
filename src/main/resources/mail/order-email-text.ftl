訂購單  Order Form

<#assign subtotal=0>
<#list cart.items as item>
-----------------------------------------
編號 Item Code: ${item.itemCode}
書/CD 名 Description: ${item.itemShortDescr}
數量 Qty: ${item.quantity}
單價 Unit Price: ${(item.priceUS)?string.currency}
書/CD 價<br/>Amount: ${(item.quantity * item.priceUS)?string.currency}
<#assign subtotal=subtotal + (item.quantity * item.priceUS)>
</#list>

==========================================
Subtotal: ${subtotal?string.currency}
Total Discount:
Grand Total:
Shipping Fee & Handling:
Total: ${subtotal?string.currency}

將訂購單連同付管款金額(支票)寄至: EMSI, 36 Alpine Rd., Towaco, N.J. 07082

Mail your order form, and your check to: EMSI, 36 Alpine Rd., Towaco, N.J. 07082.
