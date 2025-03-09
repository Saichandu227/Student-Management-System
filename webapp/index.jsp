<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<%!private int i = 10;%>
	<%=i * i%>

	<table border=1 class="table table-striped">
		<tr>
			<td>i</td>
			<td>i*i</td>
			<td>i*i*i</td>

		</tr>
		<%
		for (int i = 1; i <= 10; i++) {
		%>
		<tr>

			<td><%=i%></td>
			<td><%=i * i%></td>
			<td><%=i * i * i%></td>

		</tr>
		<%
		}
		%>

	</table>

	<form name="registraton" method="post" action="register">
		<input type="text" name="firstname" placeholder="FIRST NAME">
		<button type="sumbit">SUBMIT</button>
		<!-- 		<p>SAICHANDU</p> -->
	</form>
</body>
</html>