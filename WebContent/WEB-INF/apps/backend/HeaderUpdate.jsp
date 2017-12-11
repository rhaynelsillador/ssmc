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
				       <h2>Header</h2>
				
				       <div class="actions hidden">
				           <a href="HeaderAdd"><i class="zmdi zmdi-plus"></i></a>
				           <a href="ServicesUpload?id=${sessionScope.header.id }&name=${sessionScope.header.name }&module=HEADER"><i class="zmdi zmdi-upload"></i></a>
				       </div>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           	<h2>${sessionScope.TRANSACTION}</h2>
				           	<c:if test="${sessionScope.hasApproved == false and sessionScope.TRANSACTION != 'ADD'}">
				           		<button class="btn btn-primary pull-right approved-fn hidden" data-module="8" data-moduleId="${sessionScope.header.id}">Approve</button>
				       		</c:if>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="headerUpdateForm">
					           	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Name" value="${sessionScope.header.name}" name="name">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="${sessionScope.header.title}" name="title">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          <select class="form-control" name="type" id="headerType">
					                          	<option value="CLINIC">Clinic</option>
					                          	<option value="HOSPITALS">Hospital</option>
					                          </select>
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          <select class="form-control" name="page" id="headerPage">
					                          	<option value="Main">Main</option>
					                          	<option value="Hospital">Hospital</option>
					                          	<option value="Medical">Medical</option>
					                          	<option value="About">About</option>
					                          	<option value="Service">Service</option>
					                          	<option value="HospitalAndClinic">Hospital And Clinic</option>
					                          	<option value="Faq">Faq</option>
					                          	<option value="ContactUs">ContactUs</option>
					                          	<option value="Industrial">Industrial</option>
					                          	<option value="Careers">Careers</option>
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
				                           <textarea class="form-control" rows="10" name="content" id="headerContent">${sessionScope.header.content}</textarea>
				                           <i class="form-group__bar"></i>
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
	    $("#header_menu").addClass("navigation__active");
	    
	    var pathname = window.location.pathname;
	    var contains = pathname.indexOf("HeaderAdd");
	    
	    
	    if(contains > 0){
	    	$(".content__header .zmdi-upload").parent().remove()
	    }
	    
	    
	    var aboutUsType = $('#headerType');
	    var headerPage = $('#headerPage');
	    var isDelete = "hidden";
		var isCreate = "hidden";
		var isUpdate = "hidden";
		for (var access of roleAccess) {
			if(access.module=="HEADER" && access.access=="UPDATE" || access.module=="HEADER" && access.access=="DELETE" || isUserRoleAdmin){
				$("th[data-column-id='commands']").removeAttr("data-visible");
			}
			if(access.module=="HEADER" && access.access=="DELETE"  || isUserRoleAdmin){
				isDelete = "";
				console.log(access);
			}
			if(access.module=="HEADER" && access.access=="CREATE"  || isUserRoleAdmin){
				$(".actions").removeClass("hidden");
				console.log(access);
			}
			if(access.module=="HEADER" && access.access=="UPDATE"  || isUserRoleAdmin){
				isUpdate = "";
				console.log(access);
			}
			
		}
	    
	    
	    $(document).ready(function(){
	    	aboutUsType.val('${sessionScope.header.type}');
	    	headerPage.val('${sessionScope.header.page}')
	    	
	    	$( "#headerUpdateForm" ).submit(function( event ) {
	      		console.log( $( this ).serialize() );
	      		event.preventDefault();
	      		  		
	      		var form = objectifyForm($( this ).serializeArray());
	      		//form.content = CKEDITOR.instances.headerContent.getData();
	      		
	      		var btn = $("#headerUpdateForm button");
	      		btn.html("Updating...");
	      		btn.attr("disabled", "disabled");
	      		
	      		POST("HeaderAddUpdate", form, function(data){
	      			if(contains > 0 && data.status=="SUCCESS"){
	      				window.location.href = "Header";
	      			}else{
	      				toastMessage(data);
		      			btn.html("Save Update");
		    	  		btn.removeAttr("disabled");
	      			}
	      		})
	    	});
	    })
	    
	</script>
        
</body>
</html>
