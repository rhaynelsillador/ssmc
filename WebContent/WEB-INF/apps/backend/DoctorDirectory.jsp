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
                    <h2>Featured Box</h2>
                    <div class="actions hidden">
                    
                    </div>
                </div>

                <div class="card">
                    <div class="col-md-6">
                    	<div class="card__header">
	                        <h2>List</h2>
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
                    
                    <div class="col-md-6">
                    	<div class="card__header">
	                        <h2>List</h2>
	                    </div>
	
	                    <div class="card__body">
	                        <div class="table-responsive">
	                            <table id="data-table-doctor" class="table table-striped">
	                                <thead>
	                                    <tr>
	                                        <th data-column-id="id" data-type="numeric" data-identifier="true" data-width="40px">ID</th>
	                                        <th data-column-id="name" data-order="asc">Name</th>
	                                        <th data-column-id="day">Day</th>
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
			
			<%@ include file="commons/Footer.jsp"%>
            
            
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
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->
        
        <script type="text/javascript">
	        $("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        $("#doctor_directory_menu").addClass("navigation__active");
	        var directorytable = $("#data-table-directory");
	        var doctortable = $("#data-table-doctor");
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
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="DOCTORDIRECTORY" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
				}
				
			}
			
			tableConfig.url = "DirectoryList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"#\" class=\"btn btn-sm btn-default directory-command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\" data-row-name=\"" + row.name+"\" data-row-status=\"" + row.status+"\">Edit</a> ";
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
        			
        			$("#directoryForm").find("input[name='name']").val($(this).data("row-name"));
	        		$("#directoryForm").find("input[name='id']").val($(this).data("row-id"));
	        		
        			if($(this).data("row-status")){
        				$("#directoryStatus").html('<input type="checkbox" checked name="status">')
        			}else{
        				$("#directoryStatus").html('<input type="checkbox" name="status">')
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
	        	POST("UpdateDirectory", form, function(data){
	        		if(data.status = "SUCCESS"){
	        			table.bootgrid('reload');
	        			$('#directoryModal').modal("hide");
	        		}
	        		toastMessage(data);
		  			btn.html("Save");
			  		btn.removeAttr("disabled");
		  		})
	        	
	        	e.preventDefault();
	        })
	        
	        
	        
	        /* ======================================================================================================== */
	        
	        
	        tableConfig.url = "DoctorList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"#\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> ";
	            	},
	            	"status" : function(column, row){
	            		if(row.status){
	            			return "Active";
	            		}
	            		return "Inactive"; 
	            	}
			}
			
	        var table1 = doctortable.bootgrid(tableConfig);
	        table1.on("loaded.rs.jquery.bootgrid", function() {
	        	table1.find(".command-edit").on("click", function(e){        
	        		var form = {
		                	id: $(this).data("row-id")
		                }
		            	confirmDelete({
		                	text : "Do you want to delete this header?",
		                	url : "HeaderDelete",
		                	form : form,
		                	bootGrid : headerTable
		                
		                });
	            });
	        });
	
	        $("#data-table-doctor-header").hide(); 
	        
        </script>
        
    </body>
  </html>