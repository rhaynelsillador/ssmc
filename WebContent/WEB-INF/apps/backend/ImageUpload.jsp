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
               
                <div class="card">
                    <div class="card__header">
                        <h2>${sessionScope.moduleName }</h2>
                    </div>

                    <div class="card__body">
                    	<div class="row">
			               <div class="col-sm-12">
			               		<form id="uploadImageForm">
			                   		<div class="input-group">
			                    	
									    <label>Select image to upload:</label>
									    <input type="file" name="fileToUpload[]" multiple id="fileToUpload" class="form-control">
									
									</div>
									<div class="input-group">
									    <input type="submit" value="Upload Image" name="submit" class="btn btn-primary">
									
								</div>
								</form>
	                    	<br>
	                    	<br>
							</div>
						<div class="row">
			               <div class="col-sm-12">
		                        <div class="table-responsive">
		                            <table id="data-table-service" class="table table-striped">
		                                <thead>
		                                    <tr>
		                                        <th data-column-id="image" data-formatter="image" data-sortable="false" data-order="asc">Image</th>
		                                        <th data-column-id="status" data-formatter="status" data-sortable="false">Status</th>
		                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px">Commands</th>
		                                    </tr>
		                                </thead>
		                            </table>
		                        </div>
		                  	</div>
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
        	
        	
        	
        	var module = '${sessionScope.module}';
	        var mainModule = "cms_menus";
        	if(module == "CLINIC"){
        		mainModule = "administration_menus";
        	}
        	
        	
	        $("#"+mainModule).addClass("navigation__sub--active navigation__sub--toggled");
	        $("#"+module.toLowerCase()+"_menu").addClass("navigation__active");
			var serviceTable = $("#data-table-service");
	        var table = serviceTable.bootgrid({
	        	ajax: true,
	            post: function ()
	            {
	                return {
	                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
	                    test: "test"
	                };
	            },
	            url: "ImageList",
	            css: {
	                icon: 'table-bootgrid__icon zmdi',
	                iconSearch: 'zmdi-search',
	                iconColumns: 'zmdi-view-column',
	                iconDown: 'zmdi-sort-amount-desc',
	                iconRefresh: 'zmdi-refresh',
	                iconUp: 'zmdi-sort-amount-asc',
	                dropDownMenu: 'dropdown form-group--select',
	                search: 'table-bootgrid__search',
	                actions: 'table-bootgrid__actions',
	                header: 'table-bootgrid__header',
	                footer: 'table-bootgrid__footer',
	                dropDownItem: 'table-bootgrid__label',
	                table: 'table table-bootgrid',
	                pagination: 'pagination table-bootgrid__pagination'
	            },
	            templates: {
	                actionDropDown: "<span class=\"{{css.dropDownMenu}}\">" + "<a href='' data-toggle=\"dropdown\">{{ctx.content}}</a><ul class=\"{{css.dropDownMenuItems}}\" role=\"menu\"></ul></span>",
	                search: "<div class=\"{{css.search}} form-group\"><span class=\"{{css.icon}} {{css.iconSearch}}\"></span><input type=\"text\" class=\"{{css.searchField}}\" placeholder=\"{{lbl.search}}\" /><i class='form-group__bar'></i></div>",
	                header: "<div id=\"{{ctx.id}}\" class=\"{{css.header}}\"><p class=\"{{css.search}}\"></p><p class=\"{{css.actions}}\"></p></div>",
	                actionDropDownCheckboxItem: "<li><div class='tabe-bootgrid__checkbox checkbox checkbox--dark'><label class=\"{{css.dropDownItem}}\"><input name=\"{{ctx.name}}\" type=\"checkbox\" value=\"1\" class=\"{{css.dropDownItemCheckbox}}\" {{ctx.checked}} /> {{ctx.label}}<i class='input-helper'></i></label></div></li>",
	                footer: "<div id=\"{{ctx.id}}\" class=\"{{css.footer}}\"><div class=\"row\"><div class=\"col-sm-6\"><p class=\"{{css.pagination}}\"></p></div><div class=\"col-sm-6 table-bootgrid__showing hidden-xs\"><p class=\"{{css.infos}}\"></p></div></div></div>"
	            },
	            formatters: {
	                "commands": function(column, row) {
	                	return 	"<button href=\"#\" class=\"btn btn-sm btn-primary command-update\" data-row-id=\"" + row.id + "\" data-row-status=\"" + row.status + "\">Update</button> "+
	                			"<button href=\"#\" class=\"btn btn-sm btn-danger command-delete\" data-row-id=\"" + row.id + "\">Delete</button>";
	            	},
	            	"image" : function(column, row){
	            		return '<img src="'+fileServer+row.image+'" style="width:300px"></img>';
	            	},
	            	"status" : function(column, row){
	            		console.log(row)
	            		if(row.status == true)
	            			return "Active";
	            		else
	            			return "Inactive";
	            	} ,
	            	"type" : function(column, row){
	            		return "Type " + row.type;
	            	} 
	        	}
	        });
	        
	        table.on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
	        		var form = {
	                	id: $(this).data("row-id"),
	                }
	            	confirmDelete({
	                	text : "Do you want to delete this image?",
	                	url : "DeleteImage",
	                	form : form,
	                	bootGrid : serviceTable
	                
	                });
	        	}).end().find(".command-update").on("click", function(e){
	        		var form = {
		                	id: $(this).data("row-id"),
		                	status: $(this).data("row-status"),
		                }
	        			confirmation({
		                	text : "Do you want to update this image?",
		                	url : "UpdateImage",
		                	form : form,
		                	bootGrid : serviceTable
		                
		                });
	  		    });
	        });

	        $(document).ready(function(){
	        	$("#uploadImageForm").submit(function( event ) {
		      		var myform = document.getElementById("uploadImageForm");
		      	    var fd = new FormData(myform );
		      	    $.ajax({
		      	        url: "FormUploadFile",
		      	        data: fd,
		      	        cache: false,
		      	        processData: false,
		      	        contentType: false,
		      	        type: 'POST',
		      	        success: function (dataofconfirm) {
		      	        	serviceTable.bootgrid('reload');
		      	        	toastMessage({
		      	        		"status":"SUCCESS",
		      	        		"message" : "Upload success!"
		      	        	})
		      	        	$("#uploadImageForm")[0].reset();
		      	        }
		      	    });
		      	  event.preventDefault();
		        })
	        })
	        
	        
        </script>
        
    </body>
  </html>