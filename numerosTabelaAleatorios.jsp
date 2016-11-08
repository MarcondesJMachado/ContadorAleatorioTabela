<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ContadorAleatorioTabela</title>
<%@page import="java.util.*" %>
<%int num;
int compri = 0;
int[] mostrar = new int[6];
int[] list = new int[6];
Random c = new Random();
for(int i=0; i<list.length; i++){
     num = c.nextInt(60);
     for(int j=0; j<list.length; j++){
           if(num == list[j] && j != i){
                 num = c.nextInt(60);
                 list[i] = num;
           }else{
                list[i] = num;
           }}
out.println(list[i]);}%>
</head>
<body>
<h1 align=center>Números Gerados Aleatório para Apostas</h1>
<table border="10" align=center>
	<% for(int to = 0; to < 60; to++){ to--;%>
		<tr>
			<%for(int di = 0; di < 10; di++){%>
			<%t++;
			if(to==list[1] || to==list[2] || to==list[3] || to==list[4] || to==list[5] || to==list[0]){
			out.println("<td BGCOLOR=#DD8121>"+t+"</td>");}else{
				out.println("<td>"+to+"</td>");
				}%>
			<%}%>
		</tr> <%}%>
	</table><br>
	<h2 align=center>Novos Números Gerados</h2>
	<table border="10" align=center><tr>
	<% for(int i = 0; i < 6; i++){
 out.println("<td width=25px align=center>"+(mostrar[i]=list[i])+"</td>");}%>
</tr></table><br>
<div align="center"> 
<form><input type=button value="Clic para Gerar Novos Números"  onClick="window.location.reload()"></form> 
</div>
</body>
</html> 