訂購單  Order Form

<#assign subtotal=0>
<#list cart.items as item>
-----------------------------------------
編號 Item Code: ${item.itemCode}
訂購項目 Description: ${item.itemShortDescr}
數量 Qty: ${item.quantity}
單價 Unit Price: ${(item.priceUS)?string.currency}
總計 Amount: ${(item.quantity * item.priceUS)?string.currency}
<#assign subtotal=subtotal + (item.quantity * item.priceUS)>
</#list>

==========================================
小計 Subtotal: ${subtotal?string.currency}
折扣共計 Total Discount:
運費 Shipping Fee:
累計金額 Total:

將訂購單連同付管款金額(支票)寄至: EMSI, 36 Alpine Rd., Towaco, N.J. 07082

Mail your order form, and your check to: EMSI, 36 Alpine Rd., Towaco, N.J. 07082.

US$為美國國內售價。國外訂購，請函emsi@emsionline.org; 或電詢 973-335-7177。 The price (in US$) are for U.S. customers only. Others may send inquiry to emsi@emsionline.org; or call 973-335-7177.
