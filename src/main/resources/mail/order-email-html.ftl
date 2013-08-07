<html>
<head>
<title>Test</title>
</head>
<body>
<div class="content"> 
	
	
	</style>
	
	<div id="cart">
		<h2 style="font-size: 1.5em">訂購單  Order Form</h2>
	<table style="font-size: 11px; width: 100%; border: 1px solid black;">
		<tr style="background-color: #C0C0C0;" bgcolor="#C0C0C0">
			<th style="font-size: 11px; vertical-align: bottom; width: 80px; border: 1px solid black;" valign="bottom">
				&#32232;&#34399;<br>Item Code</th>
			<th style="font-size: 11px; vertical-align: bottom; border: 1px solid black;" valign="bottom">
				訂購項目 Description</th>
			<th style="font-size: 11px; vertical-align: bottom; width: 30px; border: 1px solid black;" valign="bottom">
				數量 Qty.</th>
			<th style="font-size: 11px; vertical-align: bottom; width: 70px; border: 1px solid black;" valign="bottom">
				單價<br>Unit Price</th>
			<th style="font-size: 11px; vertical-align: bottom; width: 70px; border: 1px solid black;" valign="bottom">
				總計<br>Amount</th>
		</tr>

		<#assign subtotal=0>
		
		<#list cart.items as item>
		<tr>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top">${item.itemCode}</td>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top">${item.itemShortDescr}</td>
			<td style="font-size: 11px; vertical-align: top; text-align: center; border: 1px solid black;" align="center" valign="top">${item.quantity}</td>
			<td style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">${(item.priceUS)?string.currency}</td>
			<td style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				${(item.quantity * item.priceUS)?string.currency}
				<#assign subtotal=subtotal + (item.quantity * item.priceUS)>
			</td>
		</tr>
		</#list>


		<tr>
			<td colspan="4" style="font-size: 11px; vertical-align: top; text-align: right; border: 1px solid black;" align="right" valign="top"></td>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top"></td>
		</tr>
		<tr>
			<td colspan="4" style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				小計 Subtotal
			</td>
			<td style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				${subtotal?string.currency}</td>
		</tr>
		<tr>
			<td colspan="4" style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				折扣共計 Total Discount
			</td>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top"></td>
		</tr>
		<tr>
			<td colspan="4" style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				運費 Shipping Fee
			</td>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top"></td>
		</tr>
		<tr>
			<td colspan="4" style="font-size: 11px; vertical-align: top; text-align: right; padding-right: 15px; border: 1px solid black;" align="right" valign="top">
				累計金額 Total
			</td>
			<td style="font-size: 11px; vertical-align: top; border: 1px solid black;" valign="top"></td>
		</tr>




	</table>
	</div>
	
	<div class="row">
		<table style="border: 1px solid black;">
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">名字 Firstname:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.firstname!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">姓 Lastname:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.lastname!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">街道地址 Street Address 1:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.address1!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">街道地址 Street Address 2:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.address2!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">城市 City:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.city!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">州 State/Province:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.stateProvince!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">郵政編碼 Zip/Postal Code:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.zipPostalCode!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">國家 Country</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.countryCode!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">電子郵件地址 EMail Address:</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.email!}</td>
			</tr>
			<tr>
				<td style="width: 200px; border: 1px solid black; text-align: right;">教會的名稱（如適用） Church Name (if applicable):</td>
				<td style="width: 200px; border: 1px solid black;">${custInfo.churchName!}</td>
			</tr>
			</table>
		</div>
		<br><br>
		<p>
			將訂購單連同付管款金額(支票)寄至: EMSI, 36 Alpine Rd., Towaco, N.J. 07082
		</p>
		<p>
			Mail your order form, and your check to: EMSI, 36 Alpine Rd., Towaco, N.J. 07082.
		</p>
		<p>
			US$為美國國內售價。國外訂購，請函emsi@emsionline.org; 或電詢 973-335-7177。 The price (in US$) are for U.S. customers only. Others may send inquiry to emsi@emsionline.org; or call 973-335-7177.
		</p>
	</div>
</div>
</body>
</html>
