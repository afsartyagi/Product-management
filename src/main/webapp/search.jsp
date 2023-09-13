<%@ include file='menu.jsp'  %>
<html>
 <body>
 <form action='show-record'>
  <table class='tai'>
   <tr>
    <td class='tdp'>Enter product id</td>
    <td class='tdp'><input type='number' name='pid' style='width:190px' class='tb' required></td>
    <td class='tdp' colspan="2" align="right">
     <button class='bt' style='background-color:lightBlue;color:black'>Search Record</button>
    </td>
   </tr>
  </table>
  <div class='dvv'>
   <h2 style='color:red'>${msg}</h2>
  </div>
  </form>
 </body>
</html>