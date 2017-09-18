<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="commons/Headers.jsp"%>
	
	<script>
		
      	function initMap() {
      		console.log("MAP RUNNING....");
        	var uluru = {lat: -25.363, lng: 131.044};
        	var map = new google.maps.Map(document.getElementById('map'), {
          		zoom: 4,
          	center: uluru
        	});
        	var marker = new google.maps.Marker({
	          	position: uluru,
	          	map: map
	        });
      	}
    </script> 
	
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
				       <h2>${requestScope.title}</h2>
				
				       <div class="actions">
				           <a href=""><i class="zmdi zmdi-check-all"></i></a>
				           <a href=""><i class="zmdi zmdi-trending-up"></i></a>
				           <div class="dropdown">
				               <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
				               <ul class="dropdown-menu pull-right">
				                   <li><a href="">Change Date Range</a></li>
				                   <li><a href="">Change Graph Type</a></li>
				                   <li><a href="">Other Settings</a></li>
				               </ul>
				           </div>
				       </div>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           <h2>Basic Information<small>Extend form controls by adding text or buttons before, after, or on both sides of any text-based inputs.</small></h2>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="clinicUpdateForm">
					           	<div class="row">
					           		<div class="col-md-12">
						           		<p>Image Preview</p>
						
							           <div class="fileinput fileinput-new" data-provides="fileinput">
							               <div class="fileinput-preview" data-trigger="fileinput"></div>
							
							               <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
							               <span class="btn btn-default btn-file">
							                   <span class="fileinput-new">Select Logo</span>
							                   <span class="fileinput-exists">Change</span>
							                   <input type="file" name="...">
							               </span>
							           </div>
					           	    </div>
					           	    
					               <div class="col-sm-4">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Full Name" value="${requestScope.clinic.name}" name="name">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
										<c:forEach items="${requestScope.clinic.clinicContacts}" var="clinicContact">
										    <c:choose>
										        <c:when test="${clinicContact.type == 'M'}">
										            <div class="input-group">
								                       <span class="input-group-addon"><i class="zmdi zmdi-smartphone-iphone"></i></span>
								                       <div class="form-group">
								                           <input type="text" class="form-control" placeholder="Contact Number" value="${clinicContact.info}" name="mobile">
								                           <i class="form-group__bar"></i>
								                       </div>
								                   </div>
								                   <br/>
										        </c:when>
										        <c:when test="${clinicContact.type == 'P'}">
										            <div class="input-group">
								                       <span class="input-group-addon"><i class="zmdi zmdi-local-phone"></i></span>
								                       <div class="form-group">
								                           <input type="text" class="form-control" placeholder="Contact Number" value="${clinicContact.info}" name="phone">
								                           <i class="form-group__bar"></i>
								                       </div>
								                   </div>
								                   <br/>
										        </c:when>
										        <c:otherwise>
										            <div class="input-group">
								                       <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
								                       <div class="form-group">
								                           <input type="text" class="form-control" placeholder="Email Address" value="${clinicContact.info}" name="email">
								                           <i class="form-group__bar"></i>
								                       </div>
								                   </div>
								                   <br/>
										        </c:otherwise>
										    </c:choose>
										</c:forEach>
					
										
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Address" value="${requestScope.clinic.address}" name="address">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
					                       <div class="form-group">
					                       		<div class="form-group">
								               		<select class="form-control select2" style="width: 100%" name="city">
								               			<option value="">Select City</option>
					                       				<c:forEach items="${requestScope.cities}" var="city">
								                           	<option value="${city.key}" <c:if test="${requestScope.clinic.city == city.key}">selected</c:if>>${city.value}</option>
								                       	</c:forEach>
								                 	</select>
								             	</div>
					                           	<i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
					
					               <div class="col-sm-4">
					                   <div class="input-group">
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Landscape">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-landscape"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Weather">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-sun"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Flight">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-airplane"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Location">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-my-location"></i></span>
					                   </div>
					               </div>
					
					               <div class="col-sm-4">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-arrow-missed"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Internet">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-globe"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-money"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Notifications">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-plus-circle-o"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-mail-send"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Layers">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-layers"></i></span>
					                   </div>
					
					                   <br/>
					
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-portable-wifi"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Messages">
					                           <i class="form-group__bar"></i>
					                       </div>
					                       <span class="input-group-addon"><i class="zmdi zmdi-dialpad"></i></span>
					                   </div>
					               </div>
					           </div>
					
					           <br/>
					           <br/>
					           <br/>
					
					           <h4>Clinic Description</h4>
					
					           <div class="row">
					               <div class="col-sm-12">
					                   
				                       <div class="form-group form-group--float">
				                           <textarea class="form-control" rows="20" name="description" id="description">${requestScope.clinic.description}</textarea>
				                           <i class="form-group__bar"></i>
				                       </div>
					               </div>
									
					           </div>
					
					           <br/>
					           <br/>
					           <br/>
					
					           <p>Map
					
					           <br/>
								<div class="row">
						           	<div class="col-md-12">
						           		<div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-pin"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Map" name="map" id="map" value="${requestScope.clinic.map}">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					           	    	<iframe width="100%" height="450" frameborder="0" style="border:0" src="${requestScope.clinic.map}" allowfullscreen></iframe>
					           	   		
					           	   	</div>
					           	</div>
					           	<br/>
					           	<br/>
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

	<script type="text/javascript" src="assets/js/backend/clinicUpdate.js"></script>
    	
    
    
</body>
</html>
