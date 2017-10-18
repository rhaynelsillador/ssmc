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
                <div class="content--boxed-sm">
                    <header class="content__header">
                        <h2>Patient Information</h2>
                    </header>

                    <div class="card profile">
                        <div class="profile__img">
                            <img src="assets/demo/img/contacts/2.jpg" alt="">

                            <!-- <a href="" class="zmdi zmdi-camera profile__img__edit"></a> -->
                        </div>

                        <div class="profile__info">
                            <h2 id="accountName"></h2>

                            <ul class="icon-list">
                                <li id="account-gender"><i class="zmdi zmdi-male-female"></i></li>
                                <li id="account-birthday"><i class="zmdi zmdi-calendar-alt"></i></li>
                                <li id="account-number"><i class="zmdi zmdi-phone"></i></li>
                                <li id="account-email"><i class="zmdi zmdi-email"></i></li>
                                <li id="account-address"><i class="zmdi zmdi-gps-dot"></i></li>
                            </ul>
                        </div>
                    </div>

                    <div class="card">
                        <div class="action-header action-header--card">
                            <ul class="action-header__menu">
                                <li class="active result"><a href="#uploadResult">Upload Result</a></li>
                                <li class="result"><a href="#resultTable">Results</a></li>
                                <li class="action-header__settings"><a href=""><i class="zmdi zmdi-settings"></i></a></li>
                            </ul>
                        </div>
						
                        <div class="card__body">
                        	<div class="card__sub" id="uploadResult">
                                <h4>Upload Results</h4>
                                <form role="form" id="uploadResultForm">
						           	<div class="row">
						               <div class="col-sm-12">
						                   <div class="input-group">
						                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
						                       <div class="form-group">
						                           <input type="text" class="form-control" placeholder="Name" value="" name="name" id="result-name">
						                           <i class="form-group__bar"></i>
						                       </div>
						                   </div>
						                   <br/>
						                   <div class="input-group">
						                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
						                       <div class="form-group">
						                           <input type="text" class="form-control" placeholder="Date Examined" value="" name="dateExamined" id="result-dateExamined">
						                           <i class="form-group__bar"></i>
						                       </div>
						                   </div>
						                   <br/>
						                   <div class="input-group">
						                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
						                       <div class="form-group">
						                           <textarea class="form-control" rows="10" name="description" id="result-description"></textarea>
						                           <i class="form-group__bar"></i>
						                       </div>
						                   </div>
						                   <br/>
						                  	<div class="input-group">
						                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
						                       <div class="form-group">
						                           <input type="file" name="fileToUpload" id="fileToUpload" class="form-control">
						                           <i class="form-group__bar"></i>
						                       </div>
						                   </div>
						                   <br/>
						                   <div class="input-group">
						                    	<button class="btn btn-primary" type="submit">Upload</button>
						                   </div>
						           		</div>
					           		</div>
				           		</form>
                            </div>
                            <div class="card__sub hidden" id="resultTable">
                                <h4>Contact Information</h4>

                                <table class="table table-bordered invoice__table" id="examResultTable">
		                            <thead>
		                                <tr class="text-uppercase">
		                                    <th>Result Description</th>
		                                    <th>Date Examined</th>
		                                    <th>Date Released</th>
		                                    <th>Action</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <tr>
		                                    <td style="width: 50%">
		                                        <h5>Curabitur lobortis</h5>
		                                        <p>Nullam consectetur dolor nec ullamcorper finibus. Quisque a porta mauris, non venenatis mi. Pellentesque habitant morbi tristique</p>
		                                    </td>
		
		                                    <td>$450.00</td>
		                                    <td>05</td>
		                                    <td>$2250.00</td>
		                                </tr>
		
		                                <tr>
		                                    <td>
		                                        <h5>Phasellus idarcu suscipit nun</h5>
		                                        <p>Pellentesque habitant morbi tristique senectus</p>
		                                    </td>
		                                    <td>$20.00</td>
		                                    <td>02</td>
		                                    <td>$40.00</td>
		                                </tr>
		
		                                
		
		                                <tr>
		                                    <td>
		                                        <h5>Nullam consectetur dolor</h5>
		                                        <p>Quisque a porta mauris, non venenatis mi. Pellentesque habitant morbi</p>
		                                    </td>
		                                    <td>$1290.00</td>
		                                    <td>12</td>
		                                    <td>$15,480.00</td>
		                                </tr>
		                                <tr>
		                                    <td colspan="3"></td>
		                                    <td>$20,092.00</td>
		                                </tr>
		                            </tbody>
		                        </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			
		<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript">
		$("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
		$("#registered_accounts_menu").addClass("navigation__active");
		
		var id = getUrlParameter("id");
		
		
		
	    $(document).ready(function(){
	    	
	    	var currentDate = moment(new Date()).format("YYYY-MM-DD HH:mm:ss");
        	
        	$('#result-dateExamined').datetimepicker({
                defaultDate: currentDate,
                maxDate : currentDate,
                format: 'YYYY-MM-DD HH:mm:ss'
            });
	    	
	    	POST("RegisteredAccountInfoData", {"id":id}, function(data){
      			$("#accountName").html(data.lastName+", "+data.firstName + " " + data.middleName);
      			$.each(data, function(key, value){
      				$("#account-"+key).append(value);
      			})
      		})
	    	
      		$('a[href="#uploadResult"]').click(function(e){
      			$(".result").removeClass("active");
      			$(this).parent().addClass("active");
      			$("#uploadResult").removeClass("hidden");
      			$("#resultTable").addClass("hidden");
      			e.preventDefault();
      		})
      		
      		$('a[href="#resultTable"]').click(function(e){
      			$(".result").removeClass("active");
      			$(this).parent().addClass("active");
      			$("#resultTable").removeClass("hidden");
      			$("#uploadResult").addClass("hidden");
      			e.preventDefault();
      			getExaminationResults();
      		})
      		
      		
      		$("#uploadResultForm").submit(function( event ) {
      			
      			var btn = $("#uploadResultForm button");
	      		btn.html("Uploading...");
	      		btn.attr("disabled", "disabled");
      			
	      		var myform = document.getElementById("uploadResultForm");
	      	    var fd = new FormData(myform );
	      	  	fd.append("accountId", id);
	      	    $.ajax({
	      	        url: "UploadTestResult",
	      	        data: fd,
	      	        cache: false,
	      	        processData: false,
	      	        contentType: false,
	      	        type: 'POST',
	      	        success: function (data) {
	      	        	toastMessage(data);
	      	        	if(data.status == "SUCCESS"){
	      	        		$("#uploadResultForm")[0].reset()
	      	        	}
	      	        	btn.html("Upload");
	    	      		btn.removeAttr("disabled");
	      	        }
	      	    });
	      	  event.preventDefault();
	        })
      		
	    })
	    
	    var getExaminationResults = function(){
	    	var examResultTable = $("#examResultTable tbody");
	    	POST("ExaminationResults/"+id, {}, function(data){
	    		var html = "";
	    		$.each(data.data, function(index, value){
	    			console.log(value);
	    			html += '<tr><td>'+
		                        '<h5>'+value.name+'</h5>'+
		                        '<p>'+value.description+'</p>'+
		                    '</td>'+
		                    '<td>'+moment(value.dateexamined).format("YYYY-MM-DD HH:mm:ss")+'</td>'+
		                    '<td>'+moment(value.dateencoded).format("YYYY-MM-DD HH:mm:ss")+'</td>'+
		                    '<td> <a href="javascript:void(0)" class="btn btn-primary delete-test-result" data-id="'+value.id+'" data-name="'+value.name+'"> <i class="zmdi zmdi-minus-circle"></i> delete </a> '+
		                    	'<a href="'+fileServer+"upload/"+value.result+'" class="btn btn-primary" target="_blank"><i class="zmdi zmdi-download"></i> download</a></td>'+
		                '</tr>';
	    		})
	    		examResultTable.html(html);
	    	})
	    } 
	    
	    $(document).on("click",".delete-test-result", function(){
	    	var data = $(this).data();
	    	console.log(data);
	    	
	    	confirmationWithoutTable({
            	text : "Do you want to delete "+data.name+" result?",
            	url : "DeleteTestResult",
            	form : data,
            	fn : getExaminationResults
            });
	    	
	    })
	    
	    
	</script>
        
</body>
</html>
