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
                    <h2>Clinic And Hospital</h2>

                    <div class="actions hidden">
                        <a href="ClinicAndHospitalAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                        	<form id="headerFilterForm">
	                    		<div class="col-md-6">
								  <div class="form-group">
								    <label for="exampleInputEmail1">Type</label>
								    <select class="form-control" name="page" id="headerPage">
								    	<option value="ALL">All</option>
			                          	<option value="HospitalAndClinic">Hospital And Clinic</option>
			                          	<option value="HMO">HMO</option>
			                          </select>
								  </div>
							  	</div>
							  	<div class="col-md-6">
								  <div class="form-group">
								    <label for="exampleInputEmail1">Name</label>
								    <input type="text" name="name" class="form-control">
								  </div>
							  	</div>
							  <button type="submit" class="btn btn-primary">Submit</button>
							</form>
							<hr/>
                            <table id="data-table-clinc" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="name" data-order="asc">Clinic Name</th>
                                        <th data-column-id="page">Page</th>
                                        <th data-column-id="email">Email</th>
                                        <th data-column-id="phone">Phone</th>
                                        <th data-column-id="mobile">Mobile</th>
                                        <th data-column-id="dateUpdated" data-formatter="dateUpdated">Date Updated</th>
                                        <th data-column-id="dateAdded" data-formatter="dateAdded">Date Added</th>
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
			$("#clinic_menu").addClass("navigation__active");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="CLINIC" && access.access=="UPDATE" || access.module=="CLINIC" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="CLINIC" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="CLINIC" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="CLINIC" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
			}
			
			
	        var grid = $("#data-table-clinc").bootgrid({
	        	ajax: true,
	            post: function ()
	            {
	                return {
	                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
	                    form: JSON.stringify(objectifyForm($( "#headerFilterForm" ).serializeArray()))
	                };
	            },
	            url: "ClinicList",
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
	                	console.log(row);
	                	return 	" <a href=\"ClinicUpdate?id="+row.id+"&name="+row.name+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	                			" <a href=\"ServicesUpload?id="+row.id+"&name="+row.name+"&module=CLINIC\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Upload</a> ";
	            	},
	            	"dateUpdated" : function(column, row){
	            		return moment(row.dateUpdated).format("YYYY-MM-DD HH:mm:ss");
	            	},
	            	"dateAdded" : function(column, row){
	            		return moment(row.dateAdded).format("YYYY-MM-DD HH:mm:ss");
	            	} 
	        	}
		    }).on("loaded.rs.jquery.bootgrid", function() {
		    	grid.find(".command-edit").on("click", function(e){
	   		     	console.log("You pressed edit on row: " + $(this).data("row-id"));
		    		        
	  		    }).end().find(".command-delete").on("click", function(e){
	  		    	console.log("You pressed delete on row: " + $(this).data("row-id"));
	  		    });
		    });
	        
	        $("#data-table-clinc-header").hide();
	        $("#headerFilterForm").submit(function(e){
	        	e.preventDefault();
	        	grid.bootgrid('reload');
	        })
        </script>
        
    </body>
  </html>