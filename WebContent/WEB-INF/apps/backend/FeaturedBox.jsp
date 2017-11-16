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
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-featurebox" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true" data-width="40px">ID</th>
                                        <th data-column-id="name" data-order="asc">Name</th>
                                        <th data-column-id="description" data-order="asc">Description</th>
                                        <th data-column-id="page" data-order="asc">Page</th>
                                        <th data-column-id="box" data-order="asc">Box #</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" data-width="150px">Commands</th>
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
	        $("#featured_box_menu").addClass("navigation__active");
	        var featureBoxTable = $("#data-table-featurebox");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="FEATUREDBOX" && access.access=="UPDATE" || access.module=="FEATUREDBOX" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="FEATUREDBOX" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="FEATUREDBOX" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="FEATUREDBOX" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}
			
			tableConfig.url = "FeaturedBoxList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"FeaturedBoxUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                	"<a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=FEATUREDBOX&menu=featured_box_menu&main=cms_menus\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> ";
	            	},
	            	"dateUpdated" : function(column, row){
	            		return datetimeformat(row.dateUpdated);
	            	},
	            	"dateAdded" : function(column, row){
	            		return datetimeformat(row.dateAdded);
	            	}
			}
			
	        var table = featureBoxTable.bootgrid(tableConfig);
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
	
	        $("#data-table-featurebox-header").hide();
	       
	        
        </script>
        
    </body>
  </html>