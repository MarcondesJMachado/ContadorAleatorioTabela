<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contador Tabela</title>
</head>
<body>
	<table border="1">
	
	<% for(int t = 0; t < 101; t++){ t--;%>
		<tr>
			<%for(int d = 0; d < 10; d++){%>
			
			<td>
			
			<% 
			t++;
			out.println(t);
			%>
			
			
			</td>
			
			<%}%>
		</tr> <%} %>
	</table>

</body>
</html> 