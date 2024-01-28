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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='twitterprofile.css'>
    <link rel='stylesheet' type='text/css' href='/css/profile.css'>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <script>
    	$(function(){
    		$(".heading_media").click(function(){
    			location.href = "media";
    		})
    		$(".heading_content").click(function(){
    			location.href = "content";
    		})
    		$(".heading_reply").click(function(){
    			location.href = "reply";
    		})
    		$(".heading_like").click(function(){
    			location.href = "like";
    		})
    		$(".editprofile").click(function(){
    			location.href = "mypage";
    		})

    	});//jquery
    </script>
    
</head>

<body>
        <div class="middlecontainer" >
            <section class="headsec">
                <a href="javascript:history.back()"><i class="fa fa-arrow-left" id="fa-arrow-left"></i></a>
                <div>
                    <h3>홍길동</h3>
                    <span>38.7k 게시물</span>
                </div>
            </section>
            <section class="twitterprofile">
                <div class="headerprofileimage">
                    <img src="/upload/1704414413260_img2.jpg" alt="header" id="headerimage">
                    <img src="/upload/k2.jpg" alt="profile pic" id="profilepic">
                    <div class="editprofile">MY PAGE</div>
                </div>
                <div class="bio">
                    <div class="handle">
                        <h3>홍길동</h3>
                        <span>@gildong</span>
                    </div>
                    <p>안녕하세요 홍길동입니다.</p>
                    <span> 
                    	   <i class="fa fa-location-arrow "></i> 대한민국 &nbsp
                    	   <i class="fa-solid fa-arrow-up-right-from-square"></i> www.naver.com &nbsp 
                           <i class="fa fa-calendar"></i> 2024.01.25
                    </span>
                    <div class="nawa">
                        <div class="followers"> 100 <span>Following</span></div>
                        <div>100<span> Followers</span></div>
                    </div>
                </div>
            </section>

</body>

</html>