<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Profile reply</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='twitterprofile.css'>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    background-color: white;
    color: black;
    font-family: 'Roboto', sans-serif;
    scroll-behavior: smooth;

}

#fixedarrow {
    position: fixed;
    bottom: 10px;
    right: 20px;
    border: 1px solid rgb(155, 157, 160);
    border-radius: 50%;
    padding: 15px;
    font-size: 20px;
    cursor: pointer;
}


a,
li {
    text-decoration: none;
    list-style: none;
    color: white;
}

li:hover {
    color: rgb(36, 86, 136);
    background-color: rgb(36, 86, 136);
    opacity: 0.9;
    border-radius: 30px;
    width: 200px;
    cursor: pointer;
    text-align: center;
}

#twittericon {
    color: white;
    font-size: 25px;
    margin-left: 75px;
}

#twittericon:hover {
    color: royalblue;
}

#icons {
    margin-right: 10px;
    font-size: 25px;
}

.leftverticalmenu {
    height: 100vh;
    width: 300px;
    text-align: left;
    line-height: 60px;
    font-size: 20px;
    border-right: 1px solid rgb(155, 157, 160);
    position: fixed;

}

ul {
    margin: auto;
    width: 50%;
    margin-top: -10px;

}

.profileimage {
    border-radius: 50%;
    border: 2px solid rgb(43, 43, 223);
    width: 25px;
    margin-right: 10px;
    margin-bottom: -5px;
}

figure {
    border-radius: 50px;
    height: 55px;
    font-weight: bold;
    background-color: rgb(29, 161, 242);
    width: 200px;
    text-align: center;
    margin: auto;
    font-size: 15px;
    margin-top: 10px;
    cursor: pointer;
}

figure:hover {
    opacity: 0.9;
}

/* MIDDLE AND RIGHT CONTAINERS */

.flexcontainer {
    position: absolute;
    left: 300px;
}

.middlecontainer {
    width: 600px;
    height: 100%;

}

.headsec {
    display: flex;
    margin-top: 10px;

}

#fa-arrow-left {
    color: black;
    filter: brightness(70%);
    font-size: 20px;
    margin: 10px 20px 0 20px;
    cursor: pointer;
}

span {
    filter: brightness(50%)
}

.headerprofileimage {
    margin-top: 10px;
    position: relative;


}

#headerimage {
    width: 598px;
  height:200px;
}

#profilepic {
    border-radius: 50%;
    width: 150px;
    height:130px;
    position: absolute;
    top: 130px;
    left: 20px;
    border: 4px solid white;
}

.editprofile {
    margin-top: 5px;
    float: right;
    border: 1px solid rgb(155, 157, 160);
    border-radius: 20px;
    padding: 10px;
    cursor: pointer;
    font-weight: bold;
    margin-right: 10px;
}

.bio {
    margin-top: 55px;
    margin-left: 20px;
    line-height: 40px;
    font-size: 15px;
}

.handle {
    line-height: 19px;
    margin-bottom: 10px;
}

.followers {
    margin-right: 15px;
}

.nawa {
    display: flex;
}

.heading {
    display: flex;
    justify-content: space-around;
    border-bottom: 1px solid white; 
    font-weight: bold;

}

.heading div {
	height :  45px;
	text-align : center;
	line-height : 45px;
    display: block;
    cursor: pointer;
    margin-bottom: 10px;
}

.heading a {
	color : black;
}

.heading_content {
	width : 26%;	
}
.heading_reply {
	width : 17%;	
}
.heading_media {
	width : 26%;	
}
.heading_like {
	width : 31%;	
}

.heading div:hover {
    background: var(--twitter-background-color);
    
}


.avi {
    width: 50px;
    border-radius: 50%;
    height: 50px;
    margin-right: 10px;
    margin-left: 10px;
}

.mytweets {
    display: flex;
    margin: 15px 0 15px 0;
    margin-bottom: 800px;
}

.tweetcontent {
    margin-top: 5px;
}

.retweeticons {
    margin-top: 5px;
    margin-left: -10px;
    display: inline-flex;
    justify-content: space-evenly;
}


/* RIGHT VERTICAL CONTAINER */

.flexcontainer {
    display: flex;
}

.searchbar {
    display: inline-flex;
    margin: 10px 0 0 25px;
    border: 1px solid rgb(155, 157, 160);
    padding: 13px;
    border-radius: 20px;
    width: 300px;
}

#searchbox {
    border: none;
    background-color: transparent;
    color: rgb(155, 157, 160);
}

.searchicon {
    color: royalblue;
    margin-right: 15px;
}

.twittermedia {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    border: 1px solid rgb(155, 157, 160);
    border-radius: 20px;
    margin: 10px 0 0 25px;
    width: 300px;
}

.twittermedia img {
    width: 100px;
    height: 100px;
    border-radius: 20px;
}

.nigeriatrends {
    margin: 30px 0 0 25px;
    width: 300px;
    border: 1px solid rgb(155, 157, 160);
    border-radius: 10px;
    padding: 10px 0;
}

#fa-cog {
    color: royalblue;
    margin-top: 5px;
    cursor: pointer;
    font-size: 25px;
}

.headertrends {
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid rgb(155, 157, 160);
    padding: 10px;
}

.trending {
    filter: brightness(50%)
}

.trenditem {
    border-bottom: 1px solid rgb(155, 157, 160);
    padding: 10px;
    line-height: 22px;
}

.hashtag {
    font-weight: bolder;
}
    </style>
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

    	});//jquery
    </script>
    
</head>

<body>

		<%@ include file="/WEB-INF/views/sidebar.jsp" %>
   
        <div class="middlecontainer">
            <section class="headsec">
                <i class="fa fa-arrow-left" id="fa-arrow-left"></i>
                <div>
                    <h3>이름</h2>
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
                        <h3>이름</h3>
                        <span>@ID</span>
                    </div>
                    <p>자기 소개 |</p>
                    
                    
                    <span> 
                    	   <i class="fa fa-location-arrow "></i> 위치 &nbsp
                    	   <a href="#"> <i class="fa fa-external-link" aria-hidden="true"></i> 웹사이트 </a>&nbsp 
                           <i class="fa fa-calendar"></i> 가입일
                    </span>
                  
                    <div class="nawa">
                        <div class="followers"> 100 <span>Following</span></div>
                        <div>100<span> Followers</span></div>
                    </div>
                </div>
            </section>

           
            <section class="tweets">
                <div class="heading">
                    <div class="heading_content">게시물</div>
                    <div class="heading_reply">답글<div style="width: 56px; height: 4px; background: #BA68C8; margin: auto;"></div></div>
                    <div class="heading_media">미디어</div>
                    <div class="heading_like">마음에 들어요</div>
                </div>
            </section>
            <section class="mytweets">
                <div><img src="https://res.cloudinary.com/dowrygm9b/image/upload/v1570267399/laptop-3174729_yiprzu.jpg" alt="avi" class="avi"></div>
                <div class="tweetbody">
                    <div>Soy Segun @segun_OS - Feb. 11</div>
                    <div class="tweetcontent">Always check the replies for clarification before you retweet a tweet,
                        people<br> deliberately mislead with their tweets.</div>
                    <ul class="retweeticons">
                        <i class="fa fa-comment" aria-hidden="true"></i>
                        <i class="fa fa-retweet" aria-hidden="true"></i>
                        <i class="fa fa-loveseat"></i>
                        <i class="fa fa-upload" aria-hidden="true"></i>
                    </ul>
                </div>

            </section>
        </div>
       

        

    <!-- <script>
alert('MY TWITTER PROFILE CLONE');
</script> -->

 





</body>

</html>