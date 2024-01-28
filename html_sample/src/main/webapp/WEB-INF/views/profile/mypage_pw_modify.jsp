<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Twitter Profile</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='twitterprofile.css'>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    
</head>

<body>
   	 <%@ include file="/WEB-INF/views/sidebar.jsp" %>
  	 <%@ include file="/WEB-INF/views/profile/main.jsp" %>
            <section class="mypage_main">
               <ul class="mypage_password"> 계정 > <strong>비밀번호 변경</strong><br>
               	<label>현재 비밀번호</label><br>
               	<input type="password" name="cur_pw"><br>
               	<p>비밀번호를 잊으셨나요?</p>
               	<label>새 비밀번호</label><br>
               	<input type="password" class="new_pw"><br>
               	<label>비밀번호 확인</label><br>
               	<input type="password" class="chk_pw">
               </ul>
               <div class="savebtn">저장</div>
            </section>
        </div>
    </div>

</body>

</html>