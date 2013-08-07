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


US$為美國國內售價。The price (in US$) are for U.S. customers only.

美國國內: 將訂購單連同付款金額(支票)寄至: EMSI, 36 Alpine Rd., Towaco, N.J. 07082. 支票抬頭請寫:EMSI.　In the States: Mail your order form, and your check to: EMSI, 36 Alpine Rd., Towaco, N.J. 07082. Make check payable to: EMSI.

國外訂購單，請函 publisher@emsionline.org; 或電詢 973-335-7177。Others may send inquiry to publisher@emsionline.org; or call 973-335-7177.
