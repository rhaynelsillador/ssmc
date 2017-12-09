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
                    <h2>Headers</h2>

                    <div class="actions hidden">
                        <a href="HeaderAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>Data List</h2>
                    </div>

                    <div class="card__body">
                    	
                        <div class="table-responsive">
                        	<form id="headerFilterForm">
	                    		<div class="col-md-3">
								  <div class="form-group">
								    <label for="exampleInputEmail1">Type</label>
								    <select class="form-control" name="type" id="headerType">
								    	<option value="ALL">All</option>
			                          	<option value="CLINIC">Clinic</option>
			                          	<option value="HOSPITALS">Hospital</option>
			                          </select>
								  </div>
							  	</div>
								<div class="col-md-3">
								  <div class="form-group">
								    <label for="exampleInputPassword1">Page</label>
								    <select class="form-control" name="page" id="headerPage">
			                          	<option value="All">All</option>
			                          	<option value="Main">Main</option>
			                          	<option value="Hospital">Hospital</option>
			                          	<option value="Medical">Medical</option>
			                          	<option value="About">About</option>
			                          	<option value="Service">Service</option>
			                          	<option value="HospitalAndClinic">Hospital And Clinic</option>
			                          	<option value="Faq">Faq</option>
			                          	<option value="ContactUs">ContactUs</option>
			                          	<option value="Industrial">Industrial</option>
			                          </select>
								  </div>
							  </div>
							  <div class="col-md-3">
								  <div class="form-group">
								    <label for="exampleInputPassword1">Name</label>
								    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
								  </div>
							  </div>
							  <div class="col-md-3">
								  <div class="form-group">
								    <label for="exampleInputPassword1">Filter</label>
								    <input type="text" class="form-control" id="filter" name="filter" placeholder="Filter">
								  </div>
							  </div>
							  <button type="submit" class="btn btn-primary">Submit</button>
							</form>
							<hr/>
                            <table id="data-table-header" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="name" data-order="asc">Name</th>
                                        <th data-column-id="title">Title</th>
                                        <th data-column-id="content">Content</th>
                                        <th data-column-id="type" data-formatter="type">Type</th>
                                        <th data-column-id="page" data-formatter="page">Page</th>
                                        <th data-column-id="dateUpdated"  data-formatter="dateUpdated">Date Updated</th>
                                        <th data-column-id="dateAdded"  data-formatter="dateAdded">Date Added</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px" data-visible="false">Commands</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
			
			<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->
        
        <script type="text/javascript">
        	
	        
	        $("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        $("#header_menu").addClass("navigation__active");
			var headerTable = $("#data-table-header");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="HEADER" && access.access=="UPDATE" || access.module=="HEADER" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="HEADER" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="HEADER" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="HEADER" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}
			
			console.log(isUserRoleAdmin, isUpdate, isCreate, isDelete);
			
			
			tableConfig.url = "HeaderList";
			tableConfig.post = function (){
		                return {
		                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
		                    form: JSON.stringify(objectifyForm($( "#headerFilterForm" ).serializeArray()))
		                };
		            }
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"HeaderUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                			"<a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=HEADER\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> "+
	                			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</button>";
	            	},
	            	"dateUpdated" : function(column, row){
	            		return datetimeformat(row.dateUpdated);
	            	},
	            	"dateAdded" : function(column, row){
	            		return datetimeformat(row.dateAdded);
	            	}
			}
			
	        var table = headerTable.bootgrid(tableConfig);
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
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

	        $("#data-table-header-header").hide();
	        
	        $("#headerFilterForm").submit(function(e){
	        	e.preventDefault();
	        	table.bootgrid('reload');
	        })
	        
        </script>
        
    </body>
  </html>