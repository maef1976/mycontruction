<%@page import="beans.LoginDao"%>
<jsp:useBean id="obj" class="beans.LoginBean" />
<jsp:setProperty property="*" name="obj" />
<%
boolean status = LoginDao.validate(obj);
if (status) {
	out.println("Bienvenido al sistema");
	session.setAttribute("session", "TRUE");
} else {
	out.print("<h1>Usuario o password incorrectos</h1>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
}
%>