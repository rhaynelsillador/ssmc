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

                    <div class="actions">
                        <a href="HeaderAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>Data List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
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
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px">Commands</th>
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
			
			tableConfig.url = "HeaderList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"HeaderUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                			"<a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=HEADER\" class=\"btn btn-sm btn-default command-edit\" data-row-id=\"" + row.id + "\">Upload</a> "+
	                			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete\" data-row-id=\"" + row.id + "\">Delete</button>";
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

	        
        </script>
        
    </body>
  </html>