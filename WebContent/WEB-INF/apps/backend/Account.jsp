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
                    <h2>Accounts</h2>

                    <div class="actions hidden">
                        <a href="AccountAdd"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>
				<div class="card">
                    <div class="card__header">
                        <h2>Form Filter <small></small></h2>
                    </div>

                    <div class="card__body">
                        <div class="row">
                        	<form id="accountFilterForm">
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Username</label>
	                                    <input type="text" class="form-control" id="accountUsername" name="username" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>First Name</label>
	                                    <input type="text" class="form-control" id="accountFirstName" name="firstName" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Last Name</label>
	                                    <input type="text" class="form-control" id="accountLastName" name="lastName" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Mobile</label>
	                                    <input type="text" class="form-control" id="accountMobile" name="mobile" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Phone</label>
	                                    <input type="text" class="form-control" id="accountPhone" name="phone" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Email</label>
	                                    <input type="text" class="form-control" id="accountEmail" name="email" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Birthday</label>
	                                    <input type="text" class="form-control" id="accountBirthday" name="birthday" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Last Login Date From</label>
	                                    <input type="text" class="form-control" id="accountLastLoginDateFrom" name="lastLoginDateFrom" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
	                            
	                            <div class="col-sm-2">
	                                <div class="form-group">
	                                    <label>Last Login Date From</label>
	                                    <input type="text" class="form-control" id="accountLastLoginDateTo" name="lastLoginDateTo" placeholder="">
	                                    <i class="form-group__bar"></i>
	                                </div>
	                            </div>
								
	                            <div class="col-sm-12">
	                               <button class="btn btn-danger" value="Search" type="button" id="accountFilterFormBtnReset">Reset</button>
	                               <button class="btn btn-primary" value="Search" id="accountSearch">Search</button>
	                            </div>
	                      	</form>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card__header">
                        <h2>User Details</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="accountsTable" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="username">Username</th>
                                        <th data-column-id="name" data-formatter="name">Name</th>
                                        <th data-column-id="mobile">Mobile</th>
                                        <th data-column-id="phone">Phone</th>
                                        <th data-column-id="email">Email</th>
                                        <th data-column-id="birthday">Birthday</th>
                                        <th data-column-id="dateLastLogin" data-order="desc" data-formatter="dateLastLogin">Last Login Date</th>
                                        <th data-column-id="approver"  data-formatter="approver">Approver</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false">Commands</th>
                                    </tr>
                                </thead>
                                <!-- <tbody>
                                    <tr>
                                        <td>10250</td>
                                        <td>tim@microsoft.com</td>
                                        <td>26.10.2013</td>
                                    </tr>
                                </tbody> -->
                            </table>
                        </div>
                    </div>
                </div>
            </section>

            <footer id="footer">
                Copyright &copy; 2015 Material Admin

                <ul class="footer__menu">
                    <li><a href="">Home</a></li>
                    <li><a href="">Dashboard</a></li>
                    <li><a href="">Reports</a></li>
                    <li><a href="">Support</a></li>
                    <li><a href="">Contact</a></li>
                </ul>
            </footer>
        </section>
        
        <div id="change_password_modal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <form id="newPasswordForm">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">x</button>
			        <h4 class="modal-title">Change Password</h4>
			      </div>
			      <div class="modal-body">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Currenct Password</label>
					    <input type="password" class="form-control" id="currenctPassword" name="currenctPassword">
					    <input type="hidden" class="form-control" id="userId" name="userId">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">New Password</label>
					    <input type="password" class="form-control" id="newPassword1" name="newPassword1">
					  </div>	
					  <div class="form-group">
					    <label for="exampleInputPassword1">Repeat New Password</label>
					    <input type="password" class="form-control" id="newPassword2" name="newPassword2">
					  </div>					
			      </div>
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-danger">Submit</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
		        </form>
		    </div>
		
		  </div>
		</div>

      
        <!-- Javascript Libraries -->
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->
        <script type="text/javascript">
	        $("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
			$("#accounts_menu").addClass("navigation__active");
			var accountsTable = $("#accountsTable");
			var accountFormFilter = $("#accountFilterForm");
			var form = objectifyForm(accountFormFilter.serializeArray());
			var accountSearch = $("#accountSearch");
			var accountFilterFormBtnReset = $("#accountFilterFormBtnReset");
			var currentDate = moment(new Date()).format("YYYY-MM-DD");
			
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="USER" && access.access=="UPDATE" || access.module=="USER" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="USER" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="USER" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="USER" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
				
			}
			
			
			$('#accountLastLoginDateFrom').datetimepicker({
                maxDate : currentDate + " 00:00:00",
                format: 'YYYY-MM-DD HH:mm:ss'
            });
        	
        	$('#accountLastLoginDateTo').datetimepicker({
                defaultDate: currentDate + " 23:59:59",
                maxDate : currentDate + " 23:59:59",
                format: 'YYYY-MM-DD HH:mm:ss'
            });
			
        	$('#accountBirthday').datetimepicker({
                defaultDate: currentDate,
                maxDate : currentDate,
                format: 'YYYY-MM-DD'
            });
        	
        	$('#accountLastLoginDateFrom, #accountLastLoginDateTo, #accountBirthday').val("")
        	
			accountSearch.click(function(e){
				accountsTable.bootgrid('reload');
				e.preventDefault();
			})
			
			accountFilterFormBtnReset.click(function(e){
				console.log(e);
				accountFormFilter[0].reset();
				accountsTable.bootgrid('reload');
				
			})
			
			initAccountTable();
			setTimeout(function() {
				$("#accountsTable-header").css("display", "none");
			}, 100)
			
			
			
			function initAccountTable(){
				var grid = accountsTable.bootgrid({
		        	ajax: true,
		            post: function ()
		            {
		                return {
		                    id: "b0df282a-0d67-40e5-8558-c9e93b7befed",
		                    form:  JSON.stringify(objectifyForm(accountFormFilter.serializeArray()))
		                };
		            },
		            url: "AccountList",
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
		                	return "<a href=\"#\" class=\"btn btn-sm btn-danger command-change-password "+isUpdate+"\" data-row-id=\"" + row.id + "\">Change Password</a> "+
		                	"<a href=\"AccountUpdate?id="+row.id+"\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a>";
		            	},
		            	"dateLastLogin" : function(column, row){
		            		return moment(row.dateLastLogin).format("YYYY-MM-DD HH:mm:ss");
		            	} ,
		            	"name" : function(column, row){
		            		return row.lastName +", "+row.firstName;
		            	},
		            	"approver" : function(column, row){
		            		return (row.approver) ? '<span class="approver" data-approver="'+row.approver+'" data-row-id="' + row.id + '"><i class="zmdi zmdi-check-all"></i></span>' : '<span class="approver" data-approver="'+row.approver+'"  data-row-id="' + row.id + '"><i class="zmdi zmdi-close-circle-o"></i></span>';
		            	} 
		        	}
			    }).on("loaded.rs.jquery.bootgrid", function() {
			    	grid.find(".approver").on("click", function(e){
			    		if(isUpdate != "hidden"){
			    		
				    		var form = {
			                	id: $(this).data("row-id"),
			                	approver: $(this).data("approver")
			                }
				    		var text = "Do you want to add this account as approver?"
				    		if($(this).data("approver") == true){
				    			text = "Do you want to remove this account as approver?"
				    		}
				    		confirmation({
			                	text : text,
			                	url : "AccountApprover",
			                	form : form,
			                	bootGrid : accountsTable
			                
			                });
			    		}      
		  		    }).end().find(".command-change-password").on("click", function(e){
		  		    	$("#change_password_modal").modal({
		  		    		backdrop : 'static',
		  		    		keyboard : false
		  		    	})
		  		    	$("#userId").val($(this).data("row-id"));
		  		    });
			    });
			}
			
			$("#newPasswordForm").submit(function(e){
				e.preventDefault();
				var form = objectifyForm($( this ).serializeArray());
		  		if(form.currenctPassword.length <= 5){
		  			toastMessage({status : "ERROR", message: "Current password is invalid. Please enter more than 5 characters."});
		  		}else if(form.newPassword1.length <= 5){
		  			toastMessage({status : "ERROR", message: "New password is invalid. Please enter more than 5 characters."});
		  		}else if(form.newPassword1 != form.newPassword2){
		  			toastMessage({status : "ERROR", message: "New password is not the same."});
		  		}else{
		  			
					var btn = $( "#newPasswordForm[type='submit']");
			  		btn.html("Updating...");
			  		btn.attr("disabled", "disabled");
			  		
		  			POST("UpdateUserPassword", form, function(data){
		  				if(data.status == "SUCCESS"){
		  					$("#newPasswordForm")[0].reset();
		  					$("#change_password_modal").modal("hide");
		  				}
			  			toastMessage(data);
			  			btn.html("Save Update");
				  		btn.removeAttr("disabled");
			  		})	
		  		}
				
			})
			
        </script>
    </body>
  </html>