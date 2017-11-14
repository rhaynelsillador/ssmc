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
                        <h2>Partner Information</h2>
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
                                <li class="result"><a href="#resultTable">Results</a></li>
                                <li class="action-header__settings"><a href=""><i class="zmdi zmdi-settings"></i></a></li>
                            </ul>
                        </div>
						
                        <div class="card__body">
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
		                            </tbody>
		                        </table>
		                        <div id="noResultFound"></div>
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
      		
      		POST("RetrievePartnersData", {}, function(data){
   				var html = "";
   				$.each(data, function(index, value){
   					html += '<option value="'+value.id+'">'+value.name+'</option>';
   				})
   				$("select[name='partnerId']").html(html);
   				
   				$("select[name='partnerId']").select2();
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
	    		var html = '';
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
	    		if(html == ""){
	    			$("#noResultFound").html("<label style='color:red;'> No results found.</label>");
	    		}
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
