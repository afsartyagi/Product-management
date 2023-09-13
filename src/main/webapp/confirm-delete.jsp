<%@ include file='menu.jsp'  %>
<html>
 <body>
	<form action="delete-product-record">
		<table class='tar' border='1' cellpadding='8px'>
		 <tr style='background-color:orange;color:white;font-size:25px'>
		  <th colspan="2">Product details</th>
		 </tr>
		 <tr>
		  <th align="left">Product id</th>
		  <td>${product.pid}
		  <input type='hidden' value='${product.pid}' name='pid'>
		  </td>
		 </tr>
		 <tr>
		  <th align="left">Product name</th>
		  <td>${product.name}</td>
		 </tr>
		 <tr>
		  <th align="left">Product brand</th>
		  <td>${product.brand}</td>
		 </tr>
		 <tr>
		  <th align="left">Product price</th>
		 <td>${product.price}</td>
		 </tr>
		 <tr>
		  <td colspan="2" align="right">
		   <button class='bt' style='background-color:green'>Confirm</button>
		   <input type='button' class='bt' value='Cancel' onclick='history.back()'>
		  </td>
		 </tr>
		</table>
		</form>
 </body>
</html>