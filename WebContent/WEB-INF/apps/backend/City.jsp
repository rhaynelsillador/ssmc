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
                    <h2>City</h2>
                    <div class="actions hidden">
                        <a href="CityAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-city" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true" data-width="40px">ID</th>
                                        <th data-column-id="citykey" data-order="asc">Key</th>
                                        <th data-column-id="name" data-order="asc">Name</th>
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
        	
	        var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="CITY" && access.access=="UPDATE" || access.module=="CITY" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="CITY" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="CITY" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="CITY" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
			}
        
        
	        $(document).ready(function(){
	        	$("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        	$("#city_menu").addClass("navigation__active");
				var cityTable = $("#data-table-city");
	        	var tableCity = cityTable.bootgrid({
	        		ajax: true,
	        	    post: function ()
	        	    {
	        	        return {
	        	            id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
	        	            test: "test"
	        	        };
	        	    },
	        	    url: "CityList",
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
	        	        	return 	"<a href=\"CityUpdate?id="+row.id+"&key="+row.citykey+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+
	        	        			"<a href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</a>";
	        	    	}
	        		}
	        	});

				
	        	tableCity.on("loaded.rs.jquery.bootgrid", function() {
	        		tableCity.find(".command-status").on("click", function(e){        
	        	        var form = {
	        	        	id: $(this).data("row-id"),
	        	        	status: $(this).data("row-status"),
	        	        }
	        	        var statusMessage = "disable";
	        	        if(form.status == "false" || form.status == false){
	        	        	statusMessage = "enable"
	        	        }
	        	               
	        	        confirmation({
	        	        	text : "Do you want to "+statusMessage+" this faq?",
	        	        	url : "ChangeStatusFaq",
	        	        	form : form,
	        	        	bootGrid : cityTable	
	        	        
	        	        });
	        	        
	        	    }).end().find(".command-delete").on("click", function(e){
	        	    	var form = {
	        	        	id: $(this).data("row-id")
	        	        }
	        	    	confirmDelete({
	        	        	text : "Do you want to delete this city?",
	        	        	url : "CityDelete",
	        	        	form : form,
	        	        	bootGrid : cityTable
	        	        
	        	        });
	        	    });
	        	});
				
	        	
	        	$("#data-table-city-header").hide();
	        })
	       
	        
        </script>
        
    </body>
  </html>