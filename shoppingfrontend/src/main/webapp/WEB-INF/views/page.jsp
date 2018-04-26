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

<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}"> 

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

<body style="background-color:powderblue;">

	<div class="wrapper">

		<!-- Navigation -->

		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- Loading the Home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Load only when user click about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user click contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Load only when user click listProducts -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>
			
			<!-- Load only when user click Show Product -->
			<c:if
				test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>
			
			<!-- Load only when user click Manage Products -->
			<c:if
				test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp"%>
			</c:if>
			
			<c:if
				test="${userClickShowCart == true}">
				<%@include file="cart.jsp"%>
			</c:if>
			
			<c:if test="${userClickCheckout == true}">
				<%@include file="thankyou.jsp" %>
			</c:if>

		</div>



 
		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>




		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- jQuery validate -->
		<script src="${js}/jquery.Validate.js"></script>
		
		<!-- bootstrap core javaScript -->
		<script src="${js}/bootstrap.js"></script>

        <!-- DataTable Plugin -->
        <script src="${js}/jquery.dataTables.js"></script> 

        <!-- DataTable Bootstrap Script -->
        <script src="${js}/dataTables.bootstrap.js"></script> 
        
        <!-- Bootbox -->
        <script src="${js}/bootbox.min.js"></script> 


		<!-- Self coded javascript  -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>

