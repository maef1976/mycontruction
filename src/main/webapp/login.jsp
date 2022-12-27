<%@page import="beans.LoginDao"%>
<jsp:useBean id="obj" class="beans.LoginBean" />
<jsp:setProperty property="*" name="obj" />
<%
boolean status = LoginDao.validate(obj);
if (status) {
%>

<%	out.println("<h1>Bienvenido</h1>");
	session.setAttribute("session", "TRUE");
} else {
	out.print("<h3>Usuario o Contraseña incorrectos</h3>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>