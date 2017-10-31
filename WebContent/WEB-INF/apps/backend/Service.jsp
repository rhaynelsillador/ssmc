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
                    <h2>About Us</h2>

                    <div class="actions hidden">
                        <a href="ServicesAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>Data List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-service" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="name" data-order="asc">Name</th>
                                        <th data-column-id="title">Title</th>
                                        <th data-column-id="content" data-formatter="content1">Content 1</th>
                                        <th data-column-id="content2" data-formatter="content2">Content 2</th>
                                        <th data-column-id="num" data-formatter="num">Service Num</th>
                                        <th data-column-id="type" data-formatter="type">Application Type</th>
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
	        $("#service_menu").addClass("navigation__active");
			var serviceTable = $("#data-table-service");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="SERVICE" && access.access=="UPDATE" || access.module=="SERVICE" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="SERVICE" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
				}
				if(access.module=="SERVICE" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
				}
				if(access.module=="SERVICE" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
				}
				console.log(access);
			}
			
			console.log(isUpdate, isCreate, isDelete);
			
			
			
			
			
			tableConfig.url = "ServicesList";
			tableConfig.formatters = {
				"commands": function(column, row) {
                	return 	"<a href=\"ServicesUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
                			"<a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=SERVICE\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> "+
                			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</button>";
            	},
            	"dateUpdated" : function(column, row){
            		return datetimeformat(row.dateUpdated);
            	},
            	"dateAdded" : function(column, row){
            		return datetimeformat(row.dateAdded);
            	},
            	"content1" : function(column, row){
            		if(row.content != undefined && row.content.length > 100){
            			return row.content.substring(0, 100)+" ...";
            		}
            		return row.content;
            	},
            	"content2" : function(column, row){
            		if(row.content2 != undefined && row.content2.length > 100){
            			return row.content2.substring(0, 100)+" ...";
            		}
            		return row.content2; 
            	},
            	"num" : function(column, row){
            		return "Service "+row.num;
            	},
            	
			}
			
	        var table = serviceTable.bootgrid(tableConfig).on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
	        		var form = {
		                	id: $(this).data("row-id")
		                }
		            	confirmDelete({
		                	text : "Do you want to delete this service?",
		                	url : "ServicesDelete",
		                	form : form,
		                	bootGrid : serviceTable
		                
		                });
	            });
	        });
			
			$("#data-table-service-header").hide();
        </script>
        
    </body>
  </html>