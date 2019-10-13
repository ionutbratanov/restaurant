<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="date.Produs"%>




<!DOCTYPE html>


<html>
<head>
<%
String contextPath=request.getContextPath();//url web context
%>
<script>
function myFunction(arg) {
  //document.getElementById("demo").innerHTML = "Hello World";
//  id="cant"+arg;
alert("S-a apasat butonul "+arg+" Iar cantitatea este "+document.getElementById(""+id).value);
document.getElementById("productId").value=""+arg;
form.submit();
}
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Aici e meniul!!!</h1>

<%
List produse = (List)request.getSession().getAttribute("produse");
%>
<form action="UpdateCos" >
<input type="hidden" id="productId" name="productId" >

COS Produse in Cos:
<%
  if (request.getSession().getAttribute("numarObiecteCos")!=null){
	%>
 <%=request.getSession().getAttribute("numarObiecteCos")%>
<%}%>
<table>
  <tr>
    <th>Categorie</th>
    <th>Nume Produs</th>
    <th>Descriere Produs</th>
    <th>Pretu unitar</th>
    <th>Imaginea</th>
    <th>Cantitatea</th>
    <th>Adauga</th>
      </tr>
  <%
  for (int i=0;i<produse.size();i++){
	Produs produs = (Produs)produse.get(i);
  
  %>
  <tr>
    <td><%=produs.getIdCategorie() %></td>
    <td><%=produs.getNumeProdus() %></td>
    <td><%=produs.getDescriereProdus() %></td>
    <td><%=produs.getPretUnitar() %></td>
    <td></td>
    <td><input type="number" id="cant<%=produs.getIdProdus()%>" name="cant<%=produs.getIdProdus()%>" min="1"></td>
    <td><button  onclick='document.getElementById("productId").value="<%=produs.getIdProdus()%>";form.submit();'>Adauga</button></td>
    </tr>
 <%
  }
  %>
 
</table>
</form> 
</body>
</html>