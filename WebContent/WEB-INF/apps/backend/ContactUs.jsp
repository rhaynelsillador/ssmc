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
                    <h2>Contact Us Message</h2>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="data-table-contact-us" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
                                        <th data-column-id="email" data-order="asc">Email</th>
                                        <th data-column-id="subject" data-formatter="subject">Subject</th>
                                        <th data-column-id="message" data-formatter="message">Message</th>
                                        <th data-column-id="status" data-formatter="status">Status</th>
                                        <th data-column-id="dateAdded"  data-formatter="dateAdded">Date Added</th>
                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 80px">Commands</th>
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
        	
	        $("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        $("#contact_us_menu").addClass("navigation__active");
	        var table = $("#data-table-contact-us");
	        
	        var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="CONTACTUS" && access.access=="UPDATE" || access.module=="CONTACTUS" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="CONTACTUS" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="CONTACTUS" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="CONTACTUS" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
			}
	        
	        tableConfig.url = "ContactUsMessageList";
	        tableConfig.formatters = {
        		"commands": function(column, row) {
        			var params = encodeURIComponent("id=" + row.id + "&email=" + row.email);
                	return " <a href=\"ViewContactUsMessages?id=" + row.id + "&email=" + row.email+"&status=" + row.status+"\" class=\"btn btn-sm btn-warning command-reply "+isUpdate+"\" data-row-id=\"" + row.id + "\" data-row-status=\"" + row.status + "\">View</a> "+
                			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</button>";
            	},	
            	"dateAdded" : function(column, row){
            		return moment(row.dateAdded).format("YYYY-MM-DD HH:mm:ss");
            	},
            	"subject" : function(column, row){
            		if(row.subject != undefined && row.subject.length >= 30){
            			return row.subject.substring(0, 30) + '...';
            		}
            		return row.subject;
            	},
            	"message" : function(column, row){
            		if(row.message != undefined && row.message.length >= 60){
            			return row.message.substring(0, 60) + '...';
            		}
            		return row.message;
            	},
            	"status" : function(column, row){
            		if(row.status == "UNREAD"){
            			return '<span style="color:#ef5350">UNREAD</span>';
            		}else if(row.status == "READ"){
            			return '<span style="color:green">READ</span>';
            		}else if(row.status == "DELETED"){
            			return '<span style="color:red">DELETED</span>';
            		}
            		return row.status;
            	},
	        }
	        
	        var table = table.bootgrid(tableConfig).on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-reply").on("click", function(e){        
	                /* var form = {
	                	id: $(this).data("row-id"),
	                	status: $(this).data("row-status"),
	                }
	                var statusMessage = "disable";
	                if(form.status == "false" || form.status == false){
	                	statusMessage = "enable"
	                }
	                       
	                confirmation({
	                	text : "Do you want to "+statusMessage+" this faq?",
	                	url : "DeleteContactUsMessage",
	                	form : form,
	                	bootGrid : table
	                
	                }); */
	                
	            }).end().find(".command-delete").on("click", function(e){
	            	var form = {
	                	id: $(this).data("row-id")
	                }
	            	
	            	confirmDelete({
	                	text : "Do you want to delete this message?",
	                	url : "DeleteContactUsMessage",
	                	form : form,
	                	bootGrid : table
	                
	                });
	            });
	        });
	        
	        $("#data-table-contact-us-header").hide();

	        
        </script>
        
    </body>
  </html>