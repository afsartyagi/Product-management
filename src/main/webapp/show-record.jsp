<%@ include file='menu.jsp'  %>
<html>
 <body>
	<form action="update-record" method="post">
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
		  <th align="left">Edit product name</th>
		  <td><input type='text' name='name' value=' ${product.name}' class='tb' style='width:100%'></td>
		 </tr>
		 <tr>
		  <th align="left">Edit product brand</th>
		  <td><input type='text' name='brand' value=' ${product.brand}' class='tb' style='width:100%'></td>
		 </tr>
		 <tr>
		  <th align="left">Edit product price</th>
		 <td><input type='text' name='price' value=' ${product.price}' class='tb' style='width:100%'></td>
		 </tr>
		 <tr>
		  <td colspan="2" align="right">
		   <button class='bt' style='background-color:green'>Update</button>
		   <input type='button' style='background-color:red' class='bt' value='Cancel' onclick='history.back()'>
		  </td>
		 </tr>
		</table>
		</form>
 </body>
</html>