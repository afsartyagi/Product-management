<%@ include file='menu.jsp'  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
 <body>
  <c:if test="${list=='[]'}">
    <div class='dv'>
      <h2 style='color:red'>Product list is empty</h2>
    </div>
  </c:if>
  <c:if test="${list!='[]'}">
  <table border='1' class='talist'>
   <tr>
    <th>Product Id</th><th>Product name</th><th>Product brand</th><th>Product price</th>
   </tr>
   <c:forEach var="product" items="${list}">
   	<tr>
   	 <td>${product.pid}</td>
   	 <td>${product.name}</td>
   	 <td>${product.brand}</td>
   	 <td>${product.price}</td>
   	</tr>
   </c:forEach>
  </table>
  </c:if>
 </body>
</html>