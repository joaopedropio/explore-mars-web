<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ExploreMars</title>
</head>
<body>
ExploreMars
<%
Mars marte = new Mars();
marte.x = 5;
marte.y = 5;
Probe sonda = new Probe();
sonda.x = 1;
sonda.y = 2;
sonda.dir = 'N';
sonda.action("LMLMLMLMM");
%>
<%= sonda.show()%>
</body>
</html>