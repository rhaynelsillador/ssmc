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
				       <h2>City</h2>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           <h2>${sessionScope.cityname}</h2>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="cityUpdateForm">
				           		
				               	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Name" value="${sessionScope.city.citykey}" name="citykey">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="${sessionScope.city.name}" name="name">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   
					               </div>
					           </div>
					           <br/>
					           <br/>
					           <br/>
								
					           <button type="submit" class="btn btn-default">Save Update</button>
					   		</form>
				       </div>
				   </div>
				   
			</section>
			
		<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript">
		$("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
		$("#city_menu").addClass("navigation__active");
		
		$(document).ready(function(){
			
			$( "#cityUpdateForm" ).submit(function( event ) {
		  		event.preventDefault();
		  		var form = objectifyForm($( this ).serializeArray());
		  		var btn = $( "#cityUpdateForm button");
		  		btn.html("Updating...");
		  		btn.attr("disabled", "disabled");
		  		
		  		POST("CityAddUpdate", form, function(data){
		  			toastMessage(data);
		  			btn.html("Save Update");
			  		btn.removeAttr("disabled");
		  		})
			});
		})
		
		function notify(message, type){
	        $.notify({
	            message: message
	        },{
	            type: type,
	            allow_dismiss: false,
	            label: 'Cancel',
	            className: 'btn-xs btn-default',
	            placement: {
	                from: 'top',
	                align: 'right'
	            },
	            delay: 2500,
	            animate: {
	                    enter: 'animated fadeInUp',
	                    exit: 'animated fadeOutDown'
	            },
	            offset: {
	                x: 30,
	                y: 30
	            }
	        });
	    }
		
	</script>
        
</body>
</html>
