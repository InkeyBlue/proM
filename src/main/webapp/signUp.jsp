<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.default.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.8-fix/jquery.nicescroll.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<p><p>
 <c:set var="mvo" value="request.getSession().getAttribute('mvo')"/>

<c:choose>
<c:when test="${empty sessionScope.mvo.id}">
<form method="post" action="login2.do">
	<div class="col-lg-12 mb-5">
    <input type="text" name="id" placeholder="id" required="required" />
    <input type="password" name="password" placeholder="password" required="required" />
    <hr>
    <input type="submit" class="btn btn-primary btn-block btn-large" value="LOGIN">
    </div>
</form>
</c:when>
<c:otherwise>
<div class="col-lg-12 mb-5">
<div class="card">
	<div class="card-header">
	<h3>Sign Up Form</h3>
	</div>
	<div class="card-body">
	 <form class="form-horizontal">       
	   <div class="form-group row">
	 	<label class="col-md-1 form-control-label">I D</label>
                        <div class="col-md-5">
                          <input type="text" name="id" class="form-control">
                        </div>
            <div class="col-md-2">
             <button type="submit" class="btn btn-primary">중복확인</button>
            </div>
         </div>   
        
        <div class="form-group row">
        	<label class="col-md-1 form-control-label">PASSWORD</label>
        	<div class="col-md-5">
        	<input type="text" name="password" class="form-control">
        	</div>
        </div>
        <div class="form-group row">
	        <label class="col-md-1 form-control-label">Name</label>
	        <div class="col-md-5">
        	<input type="text" name="Name" class="form-control">
        	</div>
        </div>
        <div class="form-group row">
        	<label class="col-md-1 form-control-label">Age</label>
        	<div class="col-md-5">
        	<input type="text" name="Age" class="form-control">
       		 </div>
        </div>
        <div class="form-group row">
       		<label class="col-md-1 form-control-label">PhoneNumber</label>
        	<div class="col-md-5">
        	<input type="text" name="PhoneNumber" class="form-control">
        	</div>
        </div>
         <div class="form-group row">
         <c:set var="mvoImg" value="${sessionScope.mvo.profilePic} "/>
    	<img src="upload/${sessionScope.mvo.profilePic}">
    	<%-- <p>${sessionScope.mvo.profilePic}</p> --%>
        </div>
       </form>
     </div>
     <a href="JspLoadTest.jsp">프로젝트화면으로 이동</a>
	<div class="line"></div>
	
	<p>${mvo}</p>
	<form action="uploadImg.do" method="post" enctype="multipart/form-data">
		<input type="file" name="uploadFile" class="btn btn-default">
		<input type="submit" value ="프로필 사진 업로드" class="btn btn-default" >
	</form>
	
	</div>
</div>

</c:otherwise>
</c:choose>


</body>
</html>