<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Khai báo cho expression language -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Khai báo cho spring form -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo with Spring Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Roboto);

.loginmodal-container {
	padding: 30px;
	max-width: 400px;
	width: 100% !important;
	background-color: #F7F7F7;
	margin: 50px auto;
	border-radius: 2px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	overflow: hidden;
	font-family: roboto;
}


.loginmodal-container h1 {
	text-align: center;
	font-size: 1.8em;
	font-family: roboto;
	color: blue;
}

.loginmodal-container input[type=submit] {
	width: 100%;
	height: 50px;;
	display: block;
	margin-bottom: 10px;
	position: relative;
	color: blue;
}

.loginmodal-container input{
	height: 44px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 10px;
	-webkit-appearance: none;
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	/* border-radius: 2px; */
	padding: 0 8px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
}

#dialog .row {
	margin-top: 40px;
}
</style>
</head>
<body>
	<div id="form" class="loginmodal-container">
		<h1>Spring Community</h1>
		<br>
		<form:form action="form" modelAttribute="student" method="post">
			<form:input path="name" placeholder="Your name" />
			<form:input path="address" placeholder="Your address" />
			<form:input path="email" placeholder="Your email" />
			<form:input path="phone" placeholder="Your phone" />
			<input type="submit" class="login loginmodal-submit" value="Create new student" />
		</form:form>
	</div>

	<div id="dialog" title="Result" class="loginmodal-container" style="display:">
			<div class="row">
				<div class="col-sm-3">
					<label>Name</label>
					<p>${newstudent.name }</p>
				</div>
				<div class="col-sm-3">
					<label>Address</label>
					<p>${newstudent.address }</p>
				</div>
				<div class="col-sm-3">
					<label>Phone</label>
					<p>${newstudent.phone }</p>
				</div>
				<div class="col-sm-3">
					<label>Email</label>
					<p>${newstudent.email }</p>
				</div>
			</div>
	</div>
</body>

</html>