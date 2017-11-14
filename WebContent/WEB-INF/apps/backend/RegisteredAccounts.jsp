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
        <%@ include file="commons/Navbar.jsp"%>
        <section id="main">
			<%@ include file="commons/MenuAside.jsp"%>
            <%@ include file="commons/Menu.jsp"%>

            <section id="content">
                <div class="content__header">
                    <h2>Registered Accounts</h2>
                    <div class="actions">
                        <a href="#" id="addNewAccountAndPartner"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card__header">
                        <h2>Form Filter <small></small></h2>
                    </div>

                    <div class="card__body">
                        <div class="row">
                        	<form id="registeredAccountFilterForm">
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Email</label>
	                                    <input type="text" class="form-control" id="registerEmail" name="email" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>First Name</label>
	                                    <input type="text" class="form-control" id="registerFirstName" name="firstName" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Last Name</label>
	                                    <input type="text" class="form-control" id="registerLastName" name="lastName" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Status</label>
	                                    <select class="form-control" id="registerStatus">
	                                        	<option value="">Status</option>
	                                        	<option value="0">Pending</option>
	                                        	<option value="1">Active</option>
	                                        	<option value="2">Password Reset</option>
	                                        	<option value="3">On Hold</option>
	                                        </select>
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Date Created From</label>
	                                    <input type="text" class="form-control" id="registerDateCreatedFrom" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Date Created To</label>
	                                    <input type="text" class="form-control" id="registerDateCreatedTo" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>	
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Date Last Login</label>
	                                    <input type="text" class="form-control" id="registerDateLastLoginFrom" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Date Last Login</label>
	                                    <input type="text" class="form-control" id="registerDateLastLoginTo" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-3">
	                                <div class="form-group">
	                                    <label>Limit</label>
	                                    <div class="form-group" id="showCountContainer"></div>
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-12">
	                               <button class="btn btn-danger" value="Search" type="button" id="registeredAccountFilterFormBtnReset">Reset</button>
	                               <button class="btn btn-primary" value="Search" id="registerSearch">Search</button>
	                            </div>
	                      	</form>
                        </div>
                    </div>
                </div>
                

                <div class="card">
                    <div class="card__header">
                    	<h2>Registered Account Result</h2>
                    </div>
                    <div class="card__body">
                        <div class="table-responsive">
                        	<div class="row">
                        		
	                            <table id="registered-accounts-table" class="table table-striped">
	                                <thead>
	                                    <tr>
	                                        <th>ID</th>
	                                        <th>Partner</th>
	                                        <th>Partner Account</th>
	                                        <th>Email</th>
	                                        <th>First Name</th>
	                                        <th>Last Name</th>
	                                        <th>Contact</th>
	                                        <th>Status</th>
	                                        <th>Date Created</th>
	                                        <th>Date Last Login</th>
	                                        <th>Action</th>
	                                    </tr>
	                                </thead>
	                            </table>
	                   		</div>
	                	</div>
                    </div>
                </div>
            </section>
			
			<%@ include file="commons/Footer.jsp"%>
			
			<div class="modal fade" id="addNewAccountAndPartnerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			 	<div class="modal-dialog modal-lg" role="document">
			    	<div class="modal-content">
		      			<form id="registeredNewAccountAndPartnerForm">
				      		<div class="modal-header">
				        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        		<h4 class="modal-title" id="myModalLabel">Patient/Partner Registration</h4>
				      		</div>
				      		<div class="modal-body">
				      			<div class="row">
				      				<div class="col-md-6">
				      					<div class="form-group">
		                                    <label>Account Type</label>
		                                    <select class="form-control" name="type">
		                                    	<option value="PATIENT">Patient</option>
		                                    	<option value="PARTNER">Partner</option>
		                                    </select>
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-show hidden">
		                                    <label>Partner</label>
		                                    <select class="" name="partnerId" style="width: 100px!important">
		                                    </select>
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-show hidden">
		                                    <label>Account</label>
		                                    <input type="text" class="form-control" name="partnerAccount" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
					      				<div class="form-group">
		                                    <label>Email</label>
		                                    <input type="text" class="form-control" name="email" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-hide">
		                                    <label>First Name</label>
		                                    <input type="text" class="form-control" name="firstName" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-hide">
		                                    <label>Middle Name</label>
		                                    <input type="text" class="form-control" name="middleName" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-hide">
		                                    <label>Last Name</label>
		                                    <input type="text" class="form-control" name="lastName" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
				      				</div>
	                                <div class="col-md-6 row">
	                                	<div class="form-group partner-hide">
		                                    <label>Gender</label>
		                                    <select class="form-control" name="gender">
		                                    	<option value="MALE">Male</option>
		                                    	<option value="FEMALE">Female</option>
		                                    </select>
		                                    <i class="form-group__bar"></i>
		                                </div>
					      				<div class="form-group">
		                                    <label>Contact</label>
		                                    <input type="number" class="form-control" name="number" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group partner-hide">
		                                    <label>Birthday</label>
		                                    <input type="text" class="form-control" name="birthday" placeholder="">
		                                    <i class="form-group__bar"></i>
		                                </div>
		                                <div class="form-group">
		                                    <label>Address</label>
		                                    <textarea rows="7" cols="2" class="form-control" name="address"></textarea>
		                                    <i class="form-group__bar"></i>
		                                </div>
				      				</div>
								</div>
				      		</div>
				      		<div class="modal-footer">
				        		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        		<button type="submit" class="btn btn-primary">Save</button>
				      		</div>
                       	</form>
			    	</div>
			  	</div>
			</div>
              
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->
        
        <script type="text/javascript">
	        $("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
	    	$("#registered_accounts_menu").addClass("navigation__active");
	    	var tableData = $('#registered-accounts-table');
	    	var registeredAccountFilterFormBtnReset = $("#registeredAccountFilterFormBtnReset");
	    	
	    	var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="REGISTEREDACCOUNTS" && access.access=="UPDATE" || access.module=="REGISTEREDACCOUNTS" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="REGISTEREDACCOUNTS" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="REGISTEREDACCOUNTS" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="REGISTEREDACCOUNTS" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}	    	
	    	
	        $(document).ready(function(){	        	
	        	var currentDate = moment(new Date()).format("YYYY-MM-DD");
	        	
	        	$('#registerDateCreatedFrom, #registerDateLastLoginFrom').datetimepicker({
                    defaultDate: currentDate + " 00:00:00",
                    maxDate : currentDate + " 00:00:00",
                    format: 'YYYY-MM-DD HH:mm:ss'
                });
	        	
	        	$('#registerDateCreatedTo, #registerDateLastLoginTo').datetimepicker({
                    defaultDate: currentDate + " 23:59:59",
                    maxDate : currentDate + " 23:59:59",
                    format: 'YYYY-MM-DD HH:mm:ss'
                });
               	
	        	$('#registerDateCreatedFrom, #registerDateLastLoginFrom, #registerDateCreatedTo, #registerDateLastLoginTo').val("")
	        	var dTable = tableData.DataTable( {
	                "processing": true,
	                "serverSide": true,
	                "searching": false,
	                "ajax": {
	                    "url": "RegisteredAccountsList",
	                    "type": "GET",
	                    "data": function ( d ) {
	                        d.email = $.trim($("#registerEmail").val());
	                        d.firstname = $.trim($("#registerFirstName").val());
	                        d.lastname = $.trim($("#registerLastName").val());
	                        d.status = $.trim($("#registerStatus").val());
	                        d.datecreatedfrom = $.trim($("#registerDateCreatedFrom").val());
	                        d.datecreatedto = $.trim($("#registerDateCreatedTo").val());
	                        d.datelastloginfrom = $.trim($("#registerDateLastLoginFrom").val());
	                        d.datelastloginto = $.trim($("#registerDateLastLoginTo").val());
	                    }
	                },
	                "columns": [
	                	{ "data": "id" , render : function(data, type, full, meta){
	                		return data;
	                	}},
	                	{ "data": "partner" , render : function(data, type, full, meta){
	                		if(data == undefined){
	                			return "------------------";
	                		}
	                		return data;
	                	}},
	                	{ "data": "partnerAccount" , render : function(data, type, full, meta){
	                		if(data == undefined){
	                			return "------------------";
	                		}
	                		return data;
	                	}},
	        			{ "data": "email"},
	        			{ "data": "firstName"},
	        			{ "data": "lastName"},
	        			{ "data": "number"},
	        			{ "data": "status" , render : function(data, type, full, meta){
	                		if(data == "1"){
	                			return "<span style='color:green'>Active</span>";
	                		}else if(data == "0"){
	                			return "<span style='color:red'>Pending</span>";
	                		}else if(data == 2){
	                			return "<span style='color:red'>Password Reset</span>";
	                		}else if(data == 3){
	                			return "Disabled";}
	                		return "<span style='color:orange'>On Hold</span>";
	                	}},
	        			{ "data": "dateAdded" , render : function(data, type, full, meta){
	        				return moment(data).format("YYYY-MM-DD HH:mm:ss");
	        			}},
	        			{ "data": "dateLastLogin" , render : function(data, type, full, meta){
	        				if(data == null){
	        					return "----------------";
	        				}
	        				return moment(data).format("YYYY-MM-DD HH:mm:ss");
	        			}},
	                    { "data": "status", render : function(data, type, full, meta){
	                    	if(full.partnerAccount == undefined || full.partnerAccount == ""){
	                    		return '<a href="RegisteredAccountInfo?id='+full.id+'&email='+full.email+'&ts='+new Date().getTime()+'" class="btn btn-success btn-sm updateBrand '+isUpdate+'" data-suffix="'+full.suffix+'" data-outboundurl="'+full.outboundUrl+'"  data-description="'+full.description+'" data-provider="'+full.provider+'" data-currency="'+full.currency+'" data-company="'+full.company+'" data-envi="'+full.envi+'">View</a> ';
	                    	}
                    		return '<a href="ViewPartnerEmployees?id='+full.partnerId+'&email='+full.email+'&ts='+new Date().getTime()+'" class="btn btn-success btn-sm updateBrand '+isUpdate+'" data-suffix="'+full.suffix+'" data-outboundurl="'+full.outboundUrl+'"  data-description="'+full.description+'" data-provider="'+full.provider+'" data-currency="'+full.currency+'" data-company="'+full.company+'" data-envi="'+full.envi+'">View Employees</a> ';
	                    	
	                    }},
	        	     ],
	        	     "columnDefs": [ {
	        	    	 "targets": 7,
	        	    	 "orderable": false
        	    	 } ]
	            } );
	        	
	        	$('#showCountContainer').append($("select[name='registered-accounts-table_length']"));
	        	$("#registered-accounts-table_length").remove();
	        	$("#showCountContainer > select").addClass("form-control");
	        	
	        	$("#registerSearch").click(function(e){
	        		e.preventDefault();
	        		dTable.ajax.reload();
	        	})
	        	
	        	registeredAccountFilterFormBtnReset.click(function(e){
	        		$("#registeredAccountFilterForm")[0].reset();
	        	})
	        	
	        	$("#addNewAccountAndPartner").click(function(e){
	        		$('#addNewAccountAndPartnerModal').modal({
        			  	keyboard: false,
        			  	backdrop : "static"
        			})
        			
        			POST("RetrievePartnersData", {}, function(data){
        				console.log(data);
        				var html = "";
        				$.each(data, function(index, value){
        					html += '<option value="'+value.id+'">'+value.name+'</option>';
        				})
        				$("select[name='partnerId']").html(html);
        				
        				$("select[name='partnerId']").select2();
        			})
	        	})
				
	        	$("#registeredNewAccountAndPartnerForm").submit(function(e){
	        		e.preventDefault();
	        		var form = objectifyForm($( this ).serializeArray());
	        		var btn = $("#registeredNewAccountAndPartnerForm button")
	        		btn.html("Saving...");
		  			btn.attr("disabled", "disabled");
	        		console.log(form);
	        		POST("RegisteredAccountAndPartner", form, function(data){
	        			toastMessage(data);
	        			btn.html("Save");
				  		btn.removeAttr("disabled");
	        		})
	        	});
	        	
	        	$("#registeredNewAccountAndPartnerForm").find("select[name='type']").change(function(){
	  				console.log($(this).val());  
	  				if($(this).val() == "PARTNER"){
	  					$(".partner-hide").addClass("hidden")
	  					$(".partner-show").removeClass("hidden")
	  				}else{
	  					$(".partner-hide").removeClass("hidden")
	  					$(".partner-show").addClass("hidden")
	  				}
	  				
	        	})
	        	
	        })
	       	
	        
        </script>
        
    </body>
  </html>