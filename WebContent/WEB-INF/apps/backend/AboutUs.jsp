<!DOCTYPE html>
<html lang="en">
	<%@ include file="commons/Headers.jsp"%>
	<style>
	  #sortable1, #sortable2 {
	    border: 1px solid #eee;
	    width: 100%;
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
	    width: 100;
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
	                    	<div class="col-md-6">
	                            <ul id="sortable1" class="connectedSortable">
								</ul>
							</div>
							<div class="col-md-6">
								<ul id="sortable2" class="connectedSortable">
								</ul>
	                        </div>
	                        <div class="col-md-12">
	                        	<br/>
	                        	<br/>
	                        	<button class="btn btn-primary" value="Submit" id="updateSorting">Save Update</button>
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
	        		var sortable1 = "", sortable2 = "";
	        		$.each(data, function(index, value){
	        			if(value.type=="CLINIC"){
	        				sortable2 += '<li class="ui-state-highlight" data-id="'+value.id+'" data-type="'+value.type+'">'+value.name+'</li>';
	        			}else{
	        				sortable1 += '<li class="ui-state-highlight" data-id="'+value.id+'" data-type="'+value.type+'">'+value.name+'</li>';
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
	        
	        $("#updateSorting").click(function(){
	        	var aboutUsData = [];
	        	$("#sortable1 li").each(function(index){
	        		var id = $(this).data("id");
	        		var type = $(this).data("type");
	        		aboutUsData.push({"id" : id, "type" : type});
	        	})
	        	
	        	$("#sortable2 li").each(function(index){
	        		var id = $(this).data("id");
	        		var type = $(this).data("type");
	        		aboutUsData.push({"id" : id, "type" : type});
	        	})
	        	var btn = $( this );
		  		btn.html("Updating...");
		  		btn.attr("disabled", "disabled");
				POST("AboutUs/UpdateSort", aboutUsData, function(data){
					toastMessage(data);
		  			btn.html("Save Update");
			  		btn.removeAttr("disabled");
				})
        		
	        })
	        
        </script>
        
    </body>
  </html>