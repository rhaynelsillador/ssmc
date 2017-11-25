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
                    <h2>Doctor Directory</h2>
                    <div class="actions hidden">
                    
                    </div>
                </div>

                <div class="card">
                    <div class="col-md-4">
                    	<div class="card__header">
	                        <h2><button type="button" id="createNewDirectory" class="btn btn-primary hidden">Create New Directory</button></h2>
	                    </div>
	
	                    <div class="card__body">
	                        <div class="table-responsive">
	                            <table id="data-table-directory" class="table table-striped">
	                                <thead>
	                                    <tr>
	                                        <th data-column-id="id" data-type="numeric" data-identifier="true" data-width="40px">ID</th>
	                                        <th data-column-id="name" data-order="asc">Name</th>
	                                        <th data-column-id="status" data-formatter="status">Status</th>
	                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" data-width="150px">Commands</th>
	                                    </tr>
	                                </thead>
	                            </table>
	                        </div>
	                    </div>
                    </div>
                    
                    <div class="col-md-8">
                    	<div class="card__header">
	                        <h2><button type="button" id="createNewDoctor" class="btn btn-primary hidden">Create New Doctor</button></h2>
	                    </div>
	
	                    <div class="card__body">
	                        <div class="table-responsive">
	                            <table id="data-table-doctor" class="table table-striped">
	                                <thead>
	                                    <tr>
	                                        <th data-column-id="id" data-type="numeric" data-identifier="true" data-width="40px">ID</th>
	                                        <th data-column-id="directory">Directory</th>
	                                        <th data-column-id="name" data-order="asc">Name</th>
	                                        <th data-column-id="day" data-formatter="dayOther">Day</th>
	                                        <th data-column-id="time">Time</th>
	                                        <th data-column-id="branch">Branch</th>
	                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" data-width="150px">Commands</th>
	                                    </tr>
	                                </thead>
	                            </table>
	                        </div>
	                    </div>
                    </div>
                </div>
            </section>
			<div class="col-md-12">
				<%@ include file="commons/Footer.jsp"%>
            </div>
			
            
            <div id="directoryModal" class="modal fade" role="dialog">
			  	<div class="modal-dialog">
			    	<div class="modal-content">
		        		<form id="directoryForm">
				      		<div class="modal-header">
				        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
				        		<h4 class="modal-title">Modal Header</h4>
				      		</div>
				      		<div class="modal-body">
			        			<div class="form-group">
			        				<label>Name</label>
			        				<input type="hidden" class="form-control" name="id"/> 
			        				<input type="text" class="form-control" name="name"/> 
			        			</div>
			        			<div class="form-group">
			        				<label>Status</label>
			        				<div id="directoryStatus"></div>
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
			
			<div id="doctorModal" class="modal fade" role="dialog">
			  	<div class="modal-dialog">
			    	<div class="modal-content">
		        		<form id="doctorForm">
				      		<div class="modal-header">
				        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
				        		<h4 class="modal-title"></h4>
				      		</div>
				      		<div class="modal-body">
				      			<div class="form-group">
			        				<label>Directory</label>
			        				<select class="form-control" name="directoryId"></select> 
			        			</div>
			        			<div class="form-group">
			        				<label>Name</label>
			        				<input type="hidden" class="form-control" name="id"/> 
			        				<input type="text" class="form-control" name="name"/> 
			        			</div>
			        			<div class="form-group">
			        				<label>Day</label>
			        				<input type="text" class="form-control" name="day"/> 
			        			</div>
			        			<div class="form-group">
			        				<label>Time</label>
			        				<input type="text" class="form-control" name="time"/> 
			        			</div>
			        			<div class="form-group">
			        				<label>Other</label>
			        				<input type="text" class="form-control" name="other"/> 
			        			</div>
			        			<div class="form-group">
			        				<label>Branch</label>
			        				<input type="text" class="form-control" name="branch"/> 
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
	        $("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        $("#doctor_directory_menu").addClass("navigation__active");
	        var directorytable = $("#data-table-directory");
	        var doctortable = $("#data-table-doctor");
	        var isDirectoryAdd = false;
	        var isDoctorAdd = false;
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="DOCTORDIRECTORY" && access.access=="UPDATE" || access.module=="DOCTORDIRECTORY" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="DOCTORDIRECTORY" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="DOCTORDIRECTORY" && access.access=="CREATE"  || isUserRoleAdmin){
					$("#createNewDoctor, #createNewDirectory").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="DOCTORDIRECTORY" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
				}
				
			}
			
			tableConfig.url = "DirectoryList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"javascript:void(0)\" class=\"btn btn-sm btn-default directory-command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\" data-row-name=\"" + row.name+"\" data-row-status=\"" + row.status+"\">Edit</a> "+
	                	"<a href=\"javascript:void(0)\" class=\"btn btn-sm btn-danger directory-command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\" data-row-name=\"" + row.name+"\" data-row-status=\"" + row.status+"\">Delete</a> ";
	            	},
	            	"status" : function(column, row){
	            		if(row.status){
	            			return "Active";
	            		}
	            		return "Inactive"; 
	            	}
			}
			
	        var table = directorytable.bootgrid(tableConfig);
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".directory-command-edit").on("click", function(e){        
	        		$('#directoryModal').modal({
        			  	keyboard: false
        			})
        			isDirectoryAdd = false;
        			$("#directoryForm").find("input[name='name']").val($(this).data("row-name"));
	        		$("#directoryForm").find("input[name='id']").val($(this).data("row-id"));
	        		
        			if($(this).data("row-status")){
        				$("#directoryStatus").html('<input type="checkbox" checked name="status">')
        			}else{
        				$("#directoryStatus").html('<input type="checkbox" name="status">')
        			}
        			$("#directoryModal").find(".modal-title").html("Update Directory");
	            }).end().find(".directory-command-delete").on("click", function(e){
	            	if(isDelete != "hidden"){
			    		
			    		var form = {
		                	id: $(this).data("row-id")
		                }
			    		var text = "Do you want to delete " +$(this).data("row-name") + "?"; 
			    		
			    		confirmation({
		                	text : text,
		                	url : "DeleteDirectory",
		                	form : form,
		                	bootGrid : directorytable
		                
		                });
		    		}    
	  		    });
	        });
	
	        $("#data-table-directory-header").hide(); 
	        
	        
	        $("#directoryForm").submit(function(e){
	        	var form = objectifyForm($(this).serializeArray());
	        	form.status = $("#directoryForm").find("input[name='status']").is(":checked");
	        	var btn = $( "#directoryForm button");
		  		btn.html("Saving...");
		  		btn.attr("disabled", "disabled");
		  		var url = "UpdateDirectory";
		  		if(isDirectoryAdd){
		  			url = "AddDirectory";
		  		}
	        	POST(url, form, function(data){
	        		if(data.status == "SUCCESS"){
	        			table.bootgrid('reload');
	        			$('#directoryModal').modal("hide");
	        		}
	        		toastMessage(data);
		  			btn.html("Save");
			  		btn.removeAttr("disabled");
		  		})
	        	
	        	e.preventDefault();
	        })
	        
	        $("#createNewDirectory").click(function(e){
	        	$('#directoryModal').modal({
    			  	keyboard: false
    			})
    			$("#directoryForm")[0].reset();
	        	$("#directoryStatus").html('<input type="checkbox" name="status">')
	        	$("#directoryModal").find(".modal-title").html("Add New Directory");
	        	isDirectoryAdd = true;
	        })
	        
	        
	        /* ======================================================================================================== */
	        
	        
	        tableConfig.url = "DoctorList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"javascript:void(0)\" class=\"btn btn-sm btn-default doctor-command-edit "+isUpdate+"\" data-row-id=\""+row.id+"\" data-row-name=\""+row.name+"\"  data-row-day=\""+row.day+"\" data-row-time=\""+row.time+"\" data-row-other=\""+row.other+"\" data-row-branch=\""+row.branch+"\" data-row-directoryId=\""+row.directoryId+"\">Edit</a> "+
	                	"<a href=\"javascript:void(0)\" class=\"btn btn-sm btn-danger doctor-command-delete "+isDelete+"\" data-row-id=\""+row.id+"\" data-row-name=\""+row.name+"\"  data-row-day=\""+row.day+"\" data-row-time=\""+row.time+"\" data-row-other=\""+row.other+"\" data-row-branch=\""+row.branch+"\">Delete</a> ";
	            	},
	            	"status" : function(column, row){
	            		if(row.status){
	            			return "Active";
	            		}
	            		return "Inactive"; 
	            	},"dayOther" : function(column, row){
	            		if(row.day == "" || row.day == undefined){
	            			return row.other;
	            		}
	            		return row.day; 
	            	}
			}
			
	        var table1 = doctortable.bootgrid(tableConfig);
	        table1.on("loaded.rs.jquery.bootgrid", function() {
	        	table1.find(".doctor-command-edit").on("click", function(e){        
	        		$('#doctorModal').modal({
        			  	keyboard: false
        			})
        			isDoctorAdd = false;
        			$("#doctorForm").find("input[name='name']").val($(this).data("row-name"));
	        		$("#doctorForm").find("input[name='id']").val($(this).data("row-id"));
	        		$("#doctorForm").find("input[name='day']").val($(this).data("row-day"));
	        		$("#doctorForm").find("input[name='time']").val($(this).data("row-time"));
	        		$("#doctorForm").find("input[name='other']").val($(this).data("row-other"));
	        		$("#doctorForm").find("input[name='branch']").val($(this).data("row-branch"));
	        		
        			$("#doctorModal").find(".modal-title").html("Update Doctor");
        			generateDirectorySelect($(this).data("row-directoryid"));
	            }).end().find(".doctor-command-delete").on("click", function(e){
	            	if(isDelete != "hidden"){
			    		
			    		var form = {
		                	id: $(this).data("row-id")
		                }
			    		var text = "Do you want to delete " +$(this).data("row-name") + "?"; 
			    		
			    		confirmation({
		                	text : text,
		                	url : "DeleteDoctor",
		                	form : form,
		                	bootGrid : doctortable
		                
		                });
		    		}    
	  		    });
	        });
	
	        $("#data-table-doctor-header").hide(); 
	        
	        $("#createNewDoctor").click(function(e){
	        	$('#doctorModal').modal({
    			  	keyboard: false
    			})
    			$("#doctorForm")[0].reset();
	        	$("#doctorModal").find(".modal-title").html("Add New Doctor");
	        	isDoctorAdd = true;
	        	
	        	generateDirectorySelect(null);
	        	
	        })
	        
	        function generateDirectorySelect(def){
	        	console.log("def", def)
	        	POST("DirectoryList2", {}, function(data){
	        		console.log(data);
	        		var html = "";
	        		$.each(data, function(index, value){
	        			html += '<option value="'+value.id+'">'+value.name+'</option>';
	        		})
	        		$("#doctorForm").find("select[name='directoryId']").html(html);
	        		if(def){
	        			$("#doctorForm").find("select[name='directoryId']").val(def)
	        		}
	        	});
	        }
	        
	        $("#doctorForm").submit(function(e){
	        	e.preventDefault();
	        	var form = objectifyForm($(this).serializeArray());
	        	var btn = $( "#doctorForm button");
		  		btn.html("Saving...");
		  		btn.attr("disabled", "disabled");
		  		var url = "UpdateDoctor";
		  		if(isDoctorAdd){
		  			url = "AddDoctor";
		  		}
	        	POST(url, form, function(data){
	        		if(data.status == "SUCCESS"){
	        			table1.bootgrid('reload');
	        			$('#doctorModal').modal("hide");
	        		}
	        		toastMessage(data);
		  			btn.html("Save");
			  		btn.removeAttr("disabled");
		  		})
	        	
	        })
	        
	        
        </script>
        
    </body>
  </html>