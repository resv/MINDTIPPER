<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	String sessionName = "";
	if (session.getAttribute("u") != null){
		sessionName = session.getAttribute("u").toString();
	}
%>

<body>

<div class = "request_container">
	<h1>Name From Request</h1>
	<h3>${user_name }</h3>

</div>

<div class="request_container">
	<h1>Name From Session</h1>
	<h3><%=session.getAttribute("u") %></h3>

</div>

</body>
</html>