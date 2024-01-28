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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	
	
	/* var exampleModal = document.getElementById('exampleModal')
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
	}) */
	
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
       		<img class="nav_logo" src="images/cross.jpg">
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

		<a href="content2" class="sidebar_a">
        <div class="Menu_options">
            <span class="material-icons">person</span>
            <h2>프로필</h2>
        </div> 
		</a>
        
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
            <h2>알림</h2><span class="badge text-bg-light rounded-pill align-text-bottom">new</span>
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