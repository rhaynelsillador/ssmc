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
				       <h2>Contact Information</h2>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           <h2>Edit</h2>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="contactInformationForm">
				           		
				               	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-phone"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Phone" value="" name="phone" id="phone">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="email" class="form-control" placeholder="Title" value="" name="email" id="email">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-facebook-box"></i>	</span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="" name="facebook" id="facebook">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-twitter-box"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="" name="twitter" id="twitter">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-youtube"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="" name="youtube" id="youtube">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-youtube"></i></span>
					                       <div class="form-group">
					                           <textarea rows="5" cols="5" class="form-control" name="address" id="address"></textarea>
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
					           </div>
					           <br/>
					           <br/>
					           <br/>
								
					           <button type="submit" class="btn btn-default hidden">Save Update</button>
					   		</form>
				       </div>
				   </div>
				   
			</section>
			
		<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript">
		$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
		$("#contact_info_menu").addClass("navigation__active");
		
		var isDelete = "hidden";
		var isCreate = "hidden";
		var isUpdate = "hidden";
		for (var access of roleAccess) {
			if(access.module=="CONTACTINFORMATION" && access.access=="DELETE" || isUserRoleAdmin){
				isDelete = "";
			}
			if(access.module=="CONTACTINFORMATION" && access.access=="UPDATE" || isUserRoleAdmin){
				$("#contactInformationForm button").removeClass("hidden");
			}
			if(access.module=="CONTACTINFORMATION" && access.access=="CREATE" || isUserRoleAdmin){
				isUpdate = "";
			}
			console.log(access);
		}
		
		console.log(isUpdate, isCreate, isDelete);
		
		$(document).ready(function(){
			
			POST("ContactInformationList", {}, function(data){
				console.log(data);
				$.each(data, function(index, value){
					console.log(index, value);
					$("#"+value.name).val(value.value);
				})
			})
			
			
			$( "#contactInformationForm" ).submit(function( event ) {				
		  		event.preventDefault();
		  		var form = $( this ).serializeArray();
		  		var btn = $( "#contactInformationForm button");
		  		btn.html("Updating...");
		  		btn.attr("disabled", "disabled");
		  		
		  		POST("ContactInformationUpdate", form, function(data){
		  			toastMessage(data);
		  			btn.html("Save Update");
			  		btn.removeAttr("disabled");
		  		})
			});
		})
		
	</script>
        
</body>
</html>
