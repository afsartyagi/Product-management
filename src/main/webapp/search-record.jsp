<%@ include file='menu.jsp'  %>
<html>
 <body>
  <table class='tar' border='1' cellpadding='8px'>
	 <tr style='background-color:orange;color:white;font-size:25px'>
	   <th colspan="2">Product details</th>
	</tr>
	 <tr>
		  <th align="left">Product id</th>
		  <td>${product.pid}</td>
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
  </table>
 </body>
</html>