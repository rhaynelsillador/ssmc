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
                    	<a href="NewsAndUpdateAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>
				
                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-news-and-updates1" class="table">
                                <thead>
                                    <tr>
                                    	<th data-column-id="id" data-width="80px" data-sortable="false" data-formatter="logo">Id</th>
                                        <th data-column-id="title" data-order="asc" data-width="200px">Title</th>
                                        <th data-column-id="date" data-formatter="date" >Date</th>
                                        <th data-column-id="news">Content</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" data-width="275px">Commands</th>
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
	        $("#news_and_updates_menu").addClass("navigation__active");
	        var partnerTable = $("#data-table-news-and-updates1");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="NEWSANDUPDATES" && access.access=="UPDATE" || access.module=="HEADER" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="NEWSANDUPDATES" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="NEWSANDUPDATES" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="NEWSANDUPDATES" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}
			
			tableConfig.url = "NewsAndUpdatesList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	            		var published = "Unpublished";
	            		if(row.status == 1){
	            			published = "Published";
	            		}
	            		var html = "";
            			html += "<a href=\"javascript:void(0)\" class=\"btn btn-sm btn-warning command-published "+isUpdate+"\" data-id=\"" + row.id + "\"  data-title=\"" + row.title + "\" data-published=\"" + published + "\">"+published+"</a> ";
	            		html += "<a href=\"NewsAndUpdateUpload?id="+row.id+"&name="+row.title+"&module=NEWSANDUPDATES\" class=\"btn btn-sm btn-default "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> ";	
	            		html += "<a href=\"NewsAndUpdateUpdate?id="+row.id+"&name="+row.title+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> ";
	            		html += "<button class=\"btn btn-sm btn-danger command-delete "+isUpdate+"\" data-id=\"" + row.id + "\"  data-title=\"" + row.title + "\">Delete</button> ";
	                	return html;
	            	},
	            	"date" : function(column, row){
	            		return datetimeformat(row.dateAdded);
	            	}
			}
	        var table = partnerTable.bootgrid(tableConfig);
			
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-published").on("click", function(e){  
	        		confirmation({
	            		text : "Do you want to <label style='color:green'>"+($(this).data("published") == "Published" ? "Unpublished" : "Published" )+"</label> <label style='color:red'>"+$(this).data("title")+"</label> news and update?",
	                	url : "NewsAndUpdatesPublished/"+$(this).data("id"),
	                	form : null,
	                	bootGrid : partnerTable
	                
	                })
	            }).end().find(".command-delete").on("click", function(e){
	            	confirmDelete({
	                	text : "Do you want to delete <label style='color:red'>"+$(this).data("title")+"</label> news and update?",
	                	url : "NewsAndUpdatesDelete/"+$(this).data("id"),
	                	form : null,
	                	bootGrid : partnerTable
	                
	                })
	  		    });
	        	
	        	
	        });
	        
			
			$(document).ready(function(){
				
			})
				        
	        $("#data-table-news-and-updates1-header").hide();
	       
	        
        </script>
        
    </body>
  </html>