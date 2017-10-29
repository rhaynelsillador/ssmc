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
				       <h2>Partner</h2>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           <h2>Add</h2>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="partnerAddUpdateForm">
				           		
				               	<div class="row">
					               <div class="col-sm-12">
					               		<div id="imageContainer">
					               			<div class="input-group">
					                       		<div class="form-group">
					                          		<img alt="" src="" width="100%" height="75px" id="previewImage">
					                       		</div>
					                   		</div>
					                       	<br/>
					                        <br/>
					               		</div>
					               		<div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          	<input type="file" class="form-control" placeholder="logo" value="" name="logo" >
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          	<input type="text" class="form-control" placeholder="Name" value="" name="name" >
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Url" value="" name="url">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
					           </div>
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
		$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	    $("#partners_menu").addClass("navigation__active");
	    var url = "AddNewPartner";
	    if(location.pathname.indexOf("PartnerUpdate") > -1){
	    	$(".card__header > h2").html("UPDATE");
	    	url = "PartnerSaveUpdate";
	    	POST("PartnerDetails/"+getUrlParameter("id"), {}, function(data){
	  			$("input[name='name']").val(data.name);
	  			$("input[name='url']").val(data.url);
	  			$("#previewImage").attr("src",fileServer+data.logo);
	  		})
	    }else{
	    	$(".card__header > h2").html("ADD");
	    	$("#imageContainer").remove();
	    }
		
	    
		$(document).ready(function(){
			
			$( "#partnerAddUpdateForm" ).submit(function( event ) {
		  		event.preventDefault();
		  		var myform = document.getElementById("partnerAddUpdateForm");
	      	    var fd = new FormData(myform );
	      	    if(getUrlParameter("id") != undefined){
	      	    	fd.append("id", getUrlParameter("id"));
	      	    }
	      	    
		  		var btn = $( "#partnerAddUpdateForm button");
		  		btn.html("Updating...");
		  		btn.attr("disabled", "disabled");
		  		
		  		POSTDATA(url, fd, function(data){
		  			if(data.status == "SUCCESS"){
		  				location.href = "Partners";
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
