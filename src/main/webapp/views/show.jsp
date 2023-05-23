<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/common/linkcss.jsp"%>
</head>
<body>
	 <div class="container py-5 h-100 w-75">
		<center class="card">
		  <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
		    <img src="/img/${upload}" class="img-fluid h-25 w-25"/>
		    <a href="#!">
		      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
		    </a>
		  </div>
		  <div class="card-body">
		    <h5 class="card-title">-Fullname: ${sv.getFullname()} ---- Id : ${sv.getPincode()}</h5>
		    <p class="card-text">-Address: ${sv.getAddress()}</p>
		    <p class="card-text">-Gender: ${sv.getGender()}</p>
		    <p class="card-text">-City: ${sv.getCity()}</p>
		    <p class="card-text">-Email: ${sv.getEmail()}</p>
		    <p class="card-text">-Course: ${sv.getCourse()}</p>
		    <p class="card-text">-Hobby: ${sv.getHobbies()}</p>
		    <h5 class="card-title">-!!!!: ${message}</h5>
		    <a href="/index" class="btn btn-primary">BACK</a>
		  </div>
		</center>
	</div>
	<%@include file="/common/linkjs.jsp"%>
</body>
</html>