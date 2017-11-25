<!DOCTYPE html>
<html lang="en">
	<%@ include file="commons/Headers.jsp"%>
	<style>
	  #sortable1, #sortable2 {
	    border: 1px solid #eee;
	    width: 142px;
	    min-height: 20px;
	    list-style-type: none;
	    margin: 0;
	    padding: 5px 0 0 0;
	    float: left;
	    margin-right: 10px;
	  }
	  #sortable1 li, #sortable2 li {
	    margin: 0 5px 5px 5px;
	    padding: 5px;
	    font-size: 1.2em;
	    width: 120px;
	  }
  </style>
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
                        <a href="AboutUsAdd"><i class="zmdi zmdi-plus"></i></a>
                        <a href="javascript:void(0)" id="change-sort" sort="1"><i class="zmdi zmdi-edit"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>Data List</h2>
                    </div>

                    <div class="card__body" id="tableContainer">
                        <div class="table-responsive">
                            <table id="data-table-about-us" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="name" data-order="asc">Name</th>
                                        <th data-column-id="content">Content</th>
                                        <th data-column-id="type" data-formatter="type">Type</th>
                                        <th data-column-id="dateUpdated"  data-formatter="dateUpdated">Date Updated</th>
                                        <th data-column-id="dateAdded"  data-formatter="dateAdded">Date Added</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px" data-visible="false">Commands</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    
                    <div class="card__body hidden" id="sortContainer">
                        <div class="table-responsive">
                            <ul id="sortable1" class="connectedSortable">
							  <li class="ui-state-default">Item 1</li>
							  <li class="ui-state-default">Item 2</li>
							  <li class="ui-state-default">Item 3</li>
							  <li class="ui-state-default">Item 4</li>
							  <li class="ui-state-default">Item 5</li>
							</ul>
							 
							<ul id="sortable2" class="connectedSortable">
							  <li class="ui-state-highlight">Item 1</li>
							  <li class="ui-state-highlight">Item 2</li>
							  <li class="ui-state-highlight">Item 3</li>
							  <li class="ui-state-highlight">Item 4</li>
							  <li class="ui-state-highlight">Item 5</li>
							</ul>
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
	        $("#about_us_menu").addClass("navigation__active");
			var aboutUsTable = $("#data-table-about-us");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="ABOUTUS" && access.access=="UPDATE" || access.module=="ABOUTUS" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="ABOUTUS" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
				}
				if(access.module=="ABOUTUS" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
				}
				if(access.module=="ABOUTUS" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
				}
			}
			
			
			tableConfig.url = "AboutUsList";
			tableConfig.formatters = {
					"commands": function(column, row) {
	                	return 	"<a href=\"AboutUsUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                			"<a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=ABOUTUS\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> "+
	                			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</button>";
	            	},
	            	"dateUpdated" : function(column, row){
	            		return datetimeformat(row.dateUpdated);
	            	},
	            	"dateAdded" : function(column, row){
	            		return datetimeformat(row.dateAdded);
	            	} ,
	            	"type" : function(column, row){
	            		return "Type " + row.type;
	            	} 
			}
			
	        var table = aboutUsTable.bootgrid(tableConfig);
	        
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
	        		var form = {
		                	id: $(this).data("row-id")
		                }
		            	confirmDelete({
		                	text : "Do you want to delete this about us?",
		                	url : "AboutUsDelete",
		                	form : form,
		                	bootGrid : aboutUsTable
		                
		                });
	            });
	        });
			
	        $("#data-table-about-us-header").hide();
	        
	        $("#change-sort").click(function(e){
	        	var sort = $(this).attr("sort");
	        	
	        	if(sort == 1){
	        		$("#sortContainer").removeClass("hidden");
		        	$("#tableContainer").addClass("hidden");
		        	$(this).attr("sort", 2);
	        	}else{
	        		$(this).attr("sort", 1);
	        		$("#sortContainer").addClass("hidden");
		        	$("#tableContainer").removeClass("hidden");
	        	}
	        	
	        	console.log(sort);
	        	
	        	POST("AboutUs/List", {}, function(data){
	        		console.log(data);
	        		var sortable1 = "", sortable2 = "";
	        		$.each(data, function(index, value){
	        			if(value.type=="CLINIC"){
	        				sortable2 += '<li class="ui-state-highlight">'+value.name+'</li>';
	        			}else{
	        				sortable1 += '<li class="ui-state-highlight">'+value.name+'</li>';
	        			}
	        		});
	        		$( "#sortable1" ).html(sortable1);
	        		$( "#sortable2" ).html(sortable2);
	        	})
	        	initSortable();
	        })
	        
	        function initSortable(){
	        	$( "#sortable1, #sortable2" ).sortable({
	              connectWith: ".connectedSortable"
	            }).disableSelection();
	        }
	        
        </script>
        
    </body>
  </html>