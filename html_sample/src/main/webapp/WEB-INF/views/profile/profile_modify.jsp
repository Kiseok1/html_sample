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
    <!-- <link rel='stylesheet' type='text/css' media='screen' href='twitterprofile.css'> -->
    <link rel='stylesheet' type='text/css' href='/css/profile.css'>
    <!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <script>
    	$(function(){
    		$(".heading_media").click(function(){
    			location.href = "media2";
    		})
    		$(".heading_content").click(function(){
    			location.href = "content2";
    		})
    		$(".heading_reply").click(function(){
    			location.href = "reply2";
    		})
    		$(".heading_like").click(function(){
    			location.href = "like2";
    		})
    		$(".editprofile").click(function(){
    			location.href = "mypage";
    		})
    		
    		$(".header_camera").click(function(){
    			console.log('fileadd');
    			 $('#file').click();
    		})
    		
    		$("#file").on("change",function(e){
	    		//  console.log(e);
	    		//  console.log(e.target.files.length);
	    		  var felement = e.target.files;
	    			 $("#image-area").html("");
	    			 fileCount=0;
	    		  for(var i = 0 ; i < e.target.files.length ; i++)
    			  {
	    			  if(fileCount>3)
			  	        {
			  	        	alert("파일은 최대 네개까지만 첨부가능합니다.");
			  	        	break;
			  	        }
    			  		
    			  		var file = e.target.files[i];
    			  		
    			  		let name=file.name;
    			  		
    			  		//console.log(name);
    			  		
    			  	    if(isImageFile(file)) {
    			  	    	
    			  	      var reader = new FileReader(); 
    			  	      reader.onload = function(e) {	
    			  	    	 var img = document.createElement("img");
    			  	    //	console.log("isImageFile",e.target);
    			  	         img.setAttribute("src", e.target.result);
    			  	       	 img.setAttribute("class", "userfile");
    			  	       	 img.setAttribute("onmouseover","this.src='images/cancel.png'");
    			  	       	 img.setAttribute("onmouseout","this.src='"+e.target.result+"'");
    			  	       	 img.setAttribute("style","width:80px; height:80px; object-fit:cover;");
    						 img.setAttribute("data-set",name);	  	       
    			  	       	 $("#headerimage").attr("src",img.src);
    			  	        
    			  	       
    			  	      }
	    			  	reader.readAsDataURL(file);
    			  	    }
    			  	  fileCount++;

    			  }
	    	  })
	    	  

	    	  function isImageFile(file) {
				  // 파일명에서 확장자를 가져옴
				  var ext = file.name.split(".").pop().toLowerCase(); 
				  return ($.inArray(ext, ["jpg", "jpeg", "gif", "png"]) === -1) ? false : true;
				}
	    	  
	    	  $(document).on("click",".userfile",function(e){
	    			  
	    		  	const files = $("#file")[0].files;
	    		  	const dataTranster = new DataTransfer();
	    		  	const removeTargetId = $(e.target).attr("data-set");
	    		  	
	    		  	console.log("target : " , e);
	    	  		
	    	  		
	    	  		 Array.from(files).forEach(file => {
	    	  			console.log(removeTargetId+" "+file.name);
	    	  			 if(removeTargetId!=file.name)
    	  				 {
	    	  				dataTranster.items.add(file);
    	  				 }
	                 });
	    	  		$("#file")[0].files = dataTranster.files;
	    	  		$(e.target).remove();
	    	  		console.log($("#file")[0].files);
	    	  });
    		
    		
    	});//jquery
    	
    	
    	
    </script>
    
</head>

<body>
	<%@ include file="/WEB-INF/views/sidebar.jsp" %>
        <div class="middlecontainer" >
            <section class="headsec">
                <a href="javascript:history.back()"><i class="fa fa-arrow-left" id="fa-arrow-left"></i></a>
            </section>
            <section class="twitterprofile">
                <div class="headerprofileimage">
           			<input type="file" id="file" name="file">
             		<div class="header_camera" >
                		<img src="/images/camera_add.png" >
               		</div>
                   	<!-- <img src="/upload/1704414413260_img2.jpg" alt="header" id="headerimage"> -->
                   	<img src="/images/header_default.jpg" alt="header" id="headerimage">
               	
               	
                    <img src="/upload/k2.jpg" alt="profile pic" id="profilepic">
               		<div class="profile_camera">
                		<img src="/images/camera_add.png" >
               		</div>
                	
                </div>
                <div class="profile_modify_outline" >
                	<div class="profile_modify_outline_name" >
                		이름
                		<div class="max_length"> / 100</div>
                		<br>
                		<input class="name_input">
                	</div>
                	
                	<div class="profile_modify_outline_introduce">
                		자기소개
                		<div class="max_length"> / 160</div>
                		<br>
                		<textarea class="introduce_textarea"></textarea>
                	</div>
                	
                	<div class="profile_modify_outline_location">
                		위치
                		<div class="max_length"> / 30</div>
                		<br>
                		<input class="location_input">
                	</div>
                	
                	<div class="profile_modify_outline_website">
                		웹사이트
                		<div class="max_length"> / 100</div>
                		<br>
                		<input class="website_input">
                	</div>
                	
                	<div class="profile_modify_outline_birthday">
                		생일
                		<br>
                		<div class="birthday_div">2002년 1월 1일</div>
                	</div>
                </div>
               
            </section>

</body>

</html>