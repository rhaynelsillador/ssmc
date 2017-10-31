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
                    <h2>Partners</h2>
                    <div class="actions hidden">
                    	<a href="PartnerAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>
				
                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-partner" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="logo" data-width="80px" data-sortable="false" data-formatter="logo">logo</th>
                                        <th data-column-id="name" data-order="asc" data-width="200px">Name</th>
                                        <th data-column-id="url" data-order="asc">Url</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" data-width="130px">Commands</th>
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
	        $("#partners_menu").addClass("navigation__active");
	        var partnerTable = $("#data-table-partner");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="PARTNERS" && access.access=="UPDATE" || access.module=="HEADER" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="PARTNERS" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="PARTNERS" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="PARTNERS" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}
			
			tableConfig.url = "PartnerList";
			tableConfig.datatype = "json";
			tableConfig.ajaxEditOptions = { contentType: 'application/json; charset=utf-8' },
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"PartnerUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                	"<button class=\"btn btn-sm btn-danger command-delete "+isUpdate+"\" data-id=\"" + row.id + "\">Delete</button> ";
	            	},
	            	"logo" : function(column, row){
	            		if(row.logo == "" || row.logo == undefined){
	            			return '<img src="assets/img/logo.png" style="width:150px"></img>';
	            		}
	            		return '<img src="'+fileServer+row.logo+'"  style="width:150px"></img>';
	            	},
	            	"dateAdded" : function(column, row){
	            		return datetimeformat(row.dateAdded);
	            	}
			}
	        var table = partnerTable.bootgrid(tableConfig);
			
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
	            	confirmDelete({
	                	text : "Do you want to delete this header?",
	                	url : "PartnerDelete/"+$(this).data("id"),
	                	form : null,
	                	bootGrid : partnerTable
	                
	                });
	            });
	        });
	
	        $("#data-table-partner-header").hide();
	       
	        
        </script>
        
    </body>
  </html>