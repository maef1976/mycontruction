<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="index.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div id="login" class="col-md">
				<h3 class="title">Iniciar Sesion</h3>
				<form method="post" action="login.jsp">
					<!-- Email input -->
					<div class="form-outline mb-4">
						<input type="text" id="form2Example1" name="usuario"
							class="form-control" /> <label class="form-label"
							for="form2Example1">Usuario</label>
					</div>
					<!-- Password input -->
					<div class="form-outline mb-4">
						<input type="password" id="form2Example2" class="form-control"
							name="password" /> <label class="form-label" for="form2Example2">Password</label>
					</div>
					<!-- Submit button -->
					<button type="submit" value="login"
						class="btn btn-primary btn-block mb-4">Login</button>
				</form>
				<%
				String profile_msg = (String) request.getAttribute("profile_msg");
				if (profile_msg != null) {
					out.print(profile_msg);
				}
				String login_msg = (String) request.getAttribute("login_msg");
				if (login_msg != null) {
					out.print(login_msg);
				}
				%>  
			</div>
		</div>
	</div>
</body>
</html>