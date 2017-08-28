<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="commons/Headers.jsp"%>
    <body>
        <!-- Page Loader -->
        <div id="page-loader">
            <div class="preloader preloader--xl preloader--light">
                <svg viewBox="25 25 50 50">
                    <circle cx="50" cy="50" r="20" />
                </svg>
            </div>
        </div>

        <!-- Header -->
        <%@ include file="commons/Navbar.jsp"%>

        <section id="main">
            
			<%@ include file="commons/MenuAside.jsp"%>
            <%@ include file="commons/Menu.jsp"%>

				<section id="content">
				   <div class="content__header">
				       <h2>Service</h2>
				
				       <div class="actions">
				           <a href="ServicesAdd"><i class="zmdi zmdi-plus"></i></a>
				       </div>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           	<h2>${sessionScope.TRANSACTION}</h2>
				           	<c:if test="${sessionScope.hasApproved == false and sessionScope.TRANSACTION != 'ADD'}">
				           		<button class="btn btn-primary pull-right approved-fn" data-module="8" data-moduleId="${sessionScope.service.id}">Approve</button>
				       		</c:if>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="serviceUpdateForm">
					           	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Name" value="${sessionScope.service.name}" name="name">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="${sessionScope.service.title}" name="title">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          <select class="form-control" name="type" id="serviceType">
					                          	<option value="CLINIC">Clinic</option>
					                          	<option value="BUSINESS">Business</option>
					                          </select>
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   
					               </div>
					           </div>
					
					           <br/>
					
					           <h4>Content</h4>
					
					           <div class="row">
					               <div class="col-sm-12">
					                   <div class="form-group form-group--float">
				                           <textarea class="form-control" rows="20" name="content" id="serviceContent">${sessionScope.service.content}</textarea>
				                           <i class="form-group__bar"></i>
				                       </div>
				                      
					               </div>
									
					           </div>
					           
					           <h4>Content2</h4>
					
					           <div class="row">
					               <div class="col-sm-12">
				                       <div class="form-group form-group--float">
				                           <textarea class="form-control" rows="20" name="content2" id="serviceContent2">${sessionScope.service.content2}</textarea>
				                           <i class="form-group__bar"></i>
				                       </div>
				                       <br/>
				                       <div class="input-group">
					                       <div class="form-group">
					                          	<div class="form-group">
										            <input id="file-1" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="1">
										        </div>
					                           	<i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
									
					           </div>
					
					           <br/>
					           <button type="submit" class="btn btn-default">Save Update</button>
					   		</form>
				       </div>
				
				       <br/>
				       
				   </div>
					
			</section>
			
		<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript">
		$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	    $("#service_menu").addClass("navigation__active");
	    CKEDITOR.replace('serviceContent');
	    CKEDITOR.replace('serviceContent2');
	    var serviceType = $('#serviceType');
	    var existingImages = [];
	    '<c:forEach items="${sessionScope.service.images}" var="images">'
	   				existingImages.push('${ images.image }');
	    '</c:forEach>'
	    
	    
	    $("#file-1").fileinput({
	        uploadUrl: 'fileInputUpload', // you must set a valid URL here else you will get an error
	        allowedFileExtensions: ['jpg', 'png', 'gif'],
	        overwriteInitial: false,
	        maxFileSize: 1000,
	        maxFilesNum: 10,
	        //allowedFileTypes: ['image', 'video', 'flash'],
	        slugCallback: function (filename) {
	            return filename.replace('(', '_').replace(']', '_');
	        },
	        overwriteInitial: false,
            initialPreviewAsData: true,
            initialPreview: existingImages

	    });
	    
	    $(document).ready(function(){
	    	serviceType.val('${sessionScope.service.type}');
	    	
	    	$( "#serviceUpdateForm" ).submit(function( event ) {
	      		console.log( $( this ).serialize() );
	      		event.preventDefault();
	      		  		
	      		var tempImages = $(".file-input .kv-zoom-cache .kv-file-content img");
	      		
	      		
	      		var images = [];
	      		for (var i = 0; i < tempImages.length; i++) {
					images.push({"image" : $(tempImages[i]).attr("src")});
				}
	      		
	      		var form = objectifyForm($( this ).serializeArray());
	      		form.content = CKEDITOR.instances.serviceContent.getData();
	      		form.content2 = CKEDITOR.instances.serviceContent2.getData();
	      		form.images = images;
	      		
	      		var btn = $("#serviceUpdateForm button");
	      		btn.html("Updating...");
	      		btn.attr("disabled", "disabled");
	      		
	      		POST("ServicesAddUpdate", form, function(data){
	      			toastMessage(data);
	      			btn.html("Save Update");
	    	  		btn.removeAttr("disabled");
	      		})	
	    	});
	    	
	    	 $("#test-upload").fileinput({
	             'showPreview': false,
	             'allowedFileExtensions': ['jpg', 'png', 'gif'],
	             'elErrorContainer': '#errorBlock'
	         });
	    	 
	         $("#kv-explorer").fileinput({
	             'theme': 'explorer',
	             'uploadUrl': '#',
	             overwriteInitial: false,
	             initialPreviewAsData: true,
	             initialPreview: [
	                 "http://lorempixel.com/1920/1080/nature/2",
	                 "http://lorempixel.com/1920/1080/nature/3"
	             ],
	             initialPreviewConfig: [
	                 {caption: "nature-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
	                 {caption: "nature-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
	             ]
	         });
	    })
	    
	</script>
        
</body>
</html>
