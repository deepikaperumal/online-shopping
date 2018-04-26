 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</</title>
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Bootstrap dataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!--  custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<script type="text/javascript"
	src="http://gc.kis.v2.scr.kaspersky-labs.com/25B98BE3-4FCC-0C48-82BC-8F024BFC8831/main.js"
	charset="UTF-8"></script>
<link rel="stylesheet" crossorigin="anonymous"
	href="http://gc.kis.v2.scr.kaspersky-labs.com/333DB7F2-4523-EA44-BC3F-FC4DFB223EDD/abn/main.css" />
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->

		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online
						Shopping</a>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
		<div class="content">
		
			<div class="container">
			<%--this will be displayed if the credentials are wrong --%>
			<c:if test="${not empty message}"> 
			<div class="row">
					<div class="col-md-offset-3 col-md-6">
					<div class="alert alert-danger">
					${message}
					</div>
					
					</div>
					</div>
			
			</c:if>
			
			
			
			
			<%--this will be displayed only when user has logged out --%>
			<c:if test="${not empty logout}"> 
			<div class="row">
					<div class="col-md-offset-3 col-md-6">
					<div class="alert alert-success">
					${logout}
					</div>
					
					</div>
					</div>
			
			</c:if>
			
			
			
			
			
			
			
			
			
			
			
			
				<div class="row">
					<div class="col-md-offset-3 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4>Login</h4>
							</div>

			<div class="panel-body">
				<form action="${contextRoot}/login" method="POST"
				class="form-horizontal" id="loginForm">
				
				<div class="form-group">
				<label for="username" class="col-md-4 control-lable">Email: </label>
				<div class="col-md-8">
				<input type="text" name="username" id="username" class="form-control"/>
				</div>
				</div>
				
				<div class="form-group">
				<label for="password" class="col-md-4 control-lable">Password: </label>
				<div class="col-md-8">
				<input type="password" name="password" id="password" class="form-control"/>
				</div>
				</div>
				
				
				<div class="form-group">
				
				<div class="col-md-offset-4 col-md-8">
				<input type="submit" value="Login" class="btn btn-primary"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				
				</div>
				</div>
				</form>
				</div>

<div class="panel-footer">
<div class="text-right">
New User - <a href="${contextRoot}/register">Register Here</a>
</div>
</div>


						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

 		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<!-- jQuery validate -->
		<script src="${js}/jquery.Validate.js"></script>

		<!-- bootstrap core javaScript -->
		<script src="${js}/bootstrap.js"></script>


		<!-- Self coded javascript  -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>

