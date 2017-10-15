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
	                                        	<option value="true">Active</option>
	                                        	<option value="false">Disabled</option>
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
                    	<h2>Registered Account Result<small>Click Email to display more information...</small></h2>
                    </div>
                    <div class="card__body">
                        <div class="table-responsive">
                        	<div class="row">
                        		
	                            <table id="registered-accounts-table" class="table table-striped">
	                                <thead>
	                                    <tr>
	                                        <th>ID</th>
	                                        <th>Email</th>
	                                        <th>First Name</th>
	                                        <th>Last Name</th>
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
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->
        
        <script type="text/javascript">
	        $("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
	    	$("#registered_accounts_menu").addClass("navigation__active");
	    	var tableData = $('#registered-accounts-table');
	    	var registeredAccountFilterFormBtnReset = $("#registeredAccountFilterFormBtnReset");
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
	        			{ "data": "email"},
	        			{ "data": "firstName"},
	        			{ "data": "lastName"},
	        			{ "data": "status"},
	        			{ "data": "dateAdded" , render : function(data, type, full, meta){
	        				return moment(data).format("YYYY-MM-DD HH:mm:ss");
	        			}},
	        			{ "data": "dateLastLogin" , render : function(data, type, full, meta){
	        				if(data == null){
	        					return "----------------";
	        				}
	        				return moment(data).format("YYYY-MM-DD HH:mm:ss");
	        			}},
	                    { "data": "status" , render : function(data, type, full, meta){
	                    	return '<a href="RegisteredAccountInfo?id='+full.id+'&email='+full.email+'&ts='+new Date().getTime()+'" class="btn btn-success btn-sm updateBrand" data-suffix="'+full.suffix+'" data-outboundurl="'+full.outboundUrl+'"  data-description="'+full.description+'" data-provider="'+full.provider+'" data-currency="'+full.currency+'" data-company="'+full.company+'" data-envi="'+full.envi+'">View</a> ';
	                    }},
	        	     ],
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

	        })
	       
	        
        </script>
        
    </body>
  </html>