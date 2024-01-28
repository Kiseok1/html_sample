<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<title>CROSS</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="css/style_x_ui.css">
<link rel="stylesheet" href="node_modules/reset.css/reset.css">




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

 <!-- include summernote css/js-->
    <link href="css/summernote-lite.css" rel="stylesheet">
    <script src="js/summernote-lite.js"></script>
<style>

input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.userfile{

width:80px;
height:80px;
}

pre{    white-space: pre-wrap;    background: #EEE;}

</style>

<script>



$(function(){
	
	
	var exampleModal = document.getElementById('exampleModal')
	exampleModal.addEventListener('show.bs.modal', function (event) {
	  // Button that triggered the modal
	  var button = event.relatedTarget
	  // Extract info from data-bs-* attributes
	  var recipient = button.getAttribute('data-bs-whatever')
	  // If necessary, you could initiate an AJAX request here
	  // and then do the updating in a callback.
	  //
	  // Update the modal's content.
	  var modalTitle = exampleModal.querySelector('.modal-title')
	  var modalBodyInput = exampleModal.querySelector('.modal-body img')

	  modalTitle.textContent = recipient
	  modalBodyInput.src = recipient
	})
	
	/*
		var HelloButton = function (context) {
		  var ui = $.summernote.ui;

		  // create button
		  var button = ui.button({
		    contents: '<i class="fas fa-smile"/> Hello',
		    tooltip: 'hello',
		    click: function () {
		      // invoke insertText method with 'hello' on editor module.
		      context.invoke('editor.insertText', 'hello');
		    }
		  });

		  return button.render();   // return button as jquery object
		}
	
	
	$('#summernote').summernote({
		  placeholder: '무슨일이 일어나고 있나요?',
		  disableDragAndDrop: true,
		  tabsize: 2,
		  height: 120,
		  width:360,
		
		  toolbar: [
		    ['post',['post']]
		  ],
		  buttons: {
			  post: HelloButton
			  }
	});
	
	*/

	
})


</script>

    
    
</head>
 <body>
 
 <div id="view-box" style="display: flex; justify-content: center; border-left: 1px solid var(--twitter-background-color);" >
 

	 <nav style="margin-top: 20px;" >
	    <div class="nav_logo-wrapper" >
       		<img class="nav_logo" src="images/apple.jpg">
        </div>
        
	 	<div class="profile-wrapper " style="">
	 		<div class="profile-img">
	 			<div style="" class="img-wrapper rounded-5">
	 				
	 			</div>
	 		</div>
	 		<div class="profile-name">
	 			<div style="margin: 4px;"><h2>Name</h2></div>
	 		</div>
	 		<div class="profile-follow" style="display: flex; margin-top:20px;">
	 			<div style="margin:0 4px;"><h4>팔로우</h4></div> 
	 			<div style="margin:0;">100</div>

	 			<div style="margin:0 4px 0 10px;"><h4>팔로워</h4></div> 
	 			<div style="margin:0;">100</div>
	 		</div>
	 	
	 	</div>
	 
	 


        <div class="Menu_options active">
            <span class="material-icons">home</span>
            <h2>홈</h2>
        </div>

        <div class="Menu_options">
            <span class="material-icons">person</span>
            <h2>프로필</h2>
        </div> 
        
        <div class="Menu_options">
            <span class="material-icons">bookmark</span>
            <h2>북마크</h2>
        </div> 
        
        <div class="Menu_options">
            <span class="material-icons">email</span>
            <h2>메시지</h2>
        </div>
       
        <div class="Menu_options">
            <span class="material-icons">notifications</span>
            <h2>알림</h2><span class="badge text-bg-light rounded-pill align-text-bottom">27</span>
        </div>

		 <div class="Menu_options">
            <span class="material-icons">tag</span>
            <h2>검색</h2>
        </div>
		
		<div><br></div>
	 
	 	<div class="Menu_options">
	 		<span class="material-icons">logout</span>
	 		<h2>로그아웃</h2>
	 	</div>
	 </nav>


 <main>
        <div class="header">
            <h2>홈</h2>
        </div>

        <div class="tweet_box">
            <form>
                <div class="tweet_box-input">
                	<div class="tweet_box-image rounded-5">
                    	<img src="images/profile01.jpg" alt="profile imagw">
                    	
                    </div>
                    <div id="text-area" class="rounded" style="position:relative;">
                    <!-- 
                    	<div id="write-box" style="outline:none; display: inline-block;width: 370px;"  contenteditable="true">
                    	</div>
                     -->
                     <textarea rows="" cols="" class="content" id="write-box"  style="outline:none; width: 370px; border: none; resize: none;" ></textarea>
                    	<div id="image-area" style=""></div>
                    </div>


                </div>

                <div class="box-footer" style="">


                    <label for="file" id="imgFile" class="btn btn-sm btn-dark">사진등록</label>
					<input type="file" id="file" multiple="multiple">
                    <button class="btn btn-sm btn-dark">위치등록</button>
                    <button id="write" class="write-btn btn btn-sm btn-dark">게시하기</button>
                 		 <script>
                 		 var fileCount = 0;

					      $(function(){
					    	  /*
					    	  const $textarea = $('#write-box');

					    	  $textarea.oninput = (event) => {
					    	    const $target = event.target;

					    	    $target.style.height = 0;
					    	    $target.style.height = DEFAULT_HEIGHT + $target.scrollHeight + 'px';
					    	  };
					    	  */
					    	 
					    	 /* 
					    	  $("#write-box").on("paste",function(e){
					    		  e.preventDefault();
					    		  var pastedData = event.clipboardData ||  window.clipboardData;
					    		  var textData = pastedData.getData('Text');
					    		  $(e.target).prepend(textData);
					    	  })
					    	  */
					    	  const DEFAULT_HEIGHT = 16; // textarea 기본 height
					    	  
					    	  $("#write-box").on("keyup",function(e){
					    		  console.log($(e.target).val());
					    	//	  console.log(e.target.style);
					    		  let text = $(e.target).val();
					    		  e.target.style.height=0;
					    		  e.target.style.height = DEFAULT_HEIGHT + e.target.scrollHeight + 'px';
//					    		 
								 if(text.length > 150)
								 {
								  console.log("글자수입력제한");
								  $(e.target).val(($(e.target).val().substring(0, 150)));
								 }

					    		 
					    	  })
					    	  
					    	  $("#text-area").click(function(){
					    		  $("#write-box").focus();
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
				    			  	       	 $("#image-area").prepend(img);
				    			  	        
				    			  	       
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
					    	  
					    	  
					    	  
							})
					    </script>
					
                </div>
            </form>
        </div>

        <div class="post" style="position:relative;">
       	
            <div class="post_profile-image rounded-5">
                <img class="" src="images/profile01.jpg" alt="profile">
	            <div style="position: absolute; height: 100%;     width: 80px;">
		            <div style="width:3px; height:98%; top:-3px; background-color: var(--emphasis-line-color); position:absolute; left:25%;">
		            	
		            </div>
				</div>
            </div>

            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>Java
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@java
                            </span>
                        </h3>
                    </div>

                    <div class="post_header-discription" onclick="location.href='viewContent'">
                        <p>Java 18 is now available! #Java18 #JDK18 #openjdk </p>
                        <br>
                        <p>Download now: https://social.ora.cl/6012KoqQ0 <br>
                            Release notes: https://social.ora.cl/6013KoqQF <br>
                            API Javadoc: https://social.ora.cl/6015KoqQN <br>
                            Features: https://social.ora.cl/6016KoqQ4 <br>
                            이게&nbsp; 맞나 ?&nbsp; &nbsp; &nbsp;<br>
                            이게&nbsp; 맞나 ?&nbsp; &nbsp; &nbsp;<br>
                            </p>
                    </div>
                    
                </div>
                <div class="container img-sm">
				  <div class="row row-cols-auto">
				    <div class="col-md-auto">
				       <img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" >
				    </div>
				    <div class="col-md-auto">
				       <img src="images/post-image.jpeg" class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" >
				    </div>
				 </div>
				 
				 <div class="row row-cols-auto">
				    <div class="col-md-auto">
				       <img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" >
				    </div>
				    <div class="col-md-auto">
				       <img src="images/post-image.jpeg" class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" >
				    </div>
				 </div>
               </div>

                <div class="post_footer">

                    <span class="material-icons">chat</span>
                    <span class="material-icons">repeat</span>
                    <span class="material-icons">favorite_border</span>
                    <span class="material-icons">bar_chart</span>
                    

                </div>

            </div>

        </div>
        
        
        
        <div class="post" style="position:relative;">
       	
            <div class="post_profile-image rounded-5">
                <img class="" src="images/profile01.jpg" alt="profile">
	            <div style="position: absolute; height: 100%;     width: 80px;">
		        </div>
            </div>

            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>Java
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@java
                            </span>
                        </h3>
                    </div>

                    <div class="post_header-discription" onclick="location.href='viewContent'">
                        <p>Java 18 is now available! #Java18 #JDK18 #openjdk </p>
                        <br>
                        <p>Download now: https://social.ora.cl/6012KoqQ0 <br>
                            Release notes: https://social.ora.cl/6013KoqQF <br>
                            API Javadoc: https://social.ora.cl/6015KoqQN <br>
                            Features: https://social.ora.cl/6016KoqQ4 <br>
                            </p>
                    </div>
                    
                </div>
                
                <div class="container">
			      <div class="row row-cols-auto">
			        <div class="col-md-auto img-md rounded-4"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			        <div class="col-md-auto">
			          <div class="row row-cols-auto">
			            <div class="col-md-auto img-sm"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			          </div>
			          <div class="row row-cols-auto">
			             <div class="col-md-auto img-sm"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			          </div>
			        </div>
			      </div>
			    </div>
			    

                <div class="post_footer">

                    <span class="material-icons">chat</span>
                    <span class="material-icons">repeat</span>
                    <span class="material-icons">favorite_border</span>
                    <span class="material-icons">bar_chart</span>
                    

                </div>

            </div>

        </div>
        
        <div class="post" style="position:relative;">
       	
            <div class="post_profile-image rounded-5">
                <img class="" src="images/profile01.jpg" alt="profile">
	            <div style="position: absolute; height: 100%;     width: 80px;">
		          
				</div>
            </div>

            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>Java
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@java
                            </span>
                        </h3>
                    </div>

                    <div class="post_header-discription" onclick="location.href='viewContent'">
                        <p>Java 18 is now available! #Java18 #JDK18 #openjdk </p>
                        <br>
                        <p>Download now: https://social.ora.cl/6012KoqQ0 <br>
                            Release notes: https://social.ora.cl/6013KoqQF <br>
                            API Javadoc: https://social.ora.cl/6015KoqQN <br>
                            Features: https://social.ora.cl/6016KoqQ4 <br>
                            </p>
                    </div>
                    
                </div>
                
                
                <div class="container">
			      <div class="row row-cols-auto ">
			        <div class="col-md-auto img-lg rounded-4"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			        <div class="col-md-auto img-lg rounded-4"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			      </div>
			    </div>
			    

                <div class="post_footer">

                    <span class="material-icons">chat</span>
                    <span class="material-icons">repeat</span>
                    <span class="material-icons">favorite_border</span>
                    <span class="material-icons">bar_chart</span>
                    

                </div>

            </div>

        </div>
        
        
        <div class="post" style="position:relative;">
       	
            <div class="post_profile-image rounded-5">
                <img class="" src="images/profile01.jpg" alt="profile">
	            <div style="position: absolute; height: 100%;     width: 80px;">
		         
				</div>
            </div>

            <div class="post_body">
                <div class="post_header">
                    <div class="post_header-text">
                        <h3>Java
                            <span class="header-icon-section">
                                <span class="material-icons post_badge">verified</span>@java
                            </span>
                        </h3>
                    </div>

                    <div class="post_header-discription" onclick="location.href='viewContent'">
                        <p>Java 18 is now available! #Java18 #JDK18 #openjdk </p>
                        <br>
                        <p>Download now: https://social.ora.cl/6012KoqQ0 <br>
                            Release notes: https://social.ora.cl/6013KoqQF <br>
                            API Javadoc: https://social.ora.cl/6015KoqQN <br>
                            Features: https://social.ora.cl/6016KoqQ4 <br>
                            </p>
                    </div>
                    
                </div>
                
                <div class="container">
			      <div class="row row-cols-auto ">
			        <div class="col-md-auto img-xl rounded-4"><img src="images/post-image.jpeg"  class="rounded " alt="java18" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="images/post-image.jpeg" ></div>
			
			      </div>
			    </div>
			    

                <div class="post_footer">

                    <span class="material-icons">chat</span>
                    <span class="material-icons">repeat</span>
                    <span class="material-icons">favorite_border</span>
                    <span class="material-icons">bar_chart</span>
                    

                </div>

            </div>

        </div>
        
        
    </main>
    <!-- main section end -->
    
 </div>



<!-- Modal -->

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">FileName</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center">

          <div class="mb-3">
            <label for="recipient-name" class="col-form-label"><img></label>
          </div>


      </div>

    </div>
  </div>

<!-- Modal End -->
  </body>
  
 <script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>
    <script type="importmap">
    {
      "imports": {
        "@popperjs/core": "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/esm/popper.min.js",
        "bootstrap": "https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.esm.min.js"
      }
    }
    </script>
    <script type="module">
      import * as bootstrap from 'bootstrap'

      new bootstrap.Popover(document.getElementById('popoverButton'))
    </script>
  
  
</html>