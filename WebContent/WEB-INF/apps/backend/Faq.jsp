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
                    <h2>FAQ</h2>

                    <div class="actions hidden">
                        <a href="FaqCreate"><i class="zmdi zmdi-plus"></i></a>
                    </div>
                </div>

                <div class="card">
                       <ul class="tab-nav tab-nav--justified tab-nav--icon">
	                        <li class="active">
	                            <a class="col-sx-4" href="#publishedFaq" data-toggle="tab" aria-expanded="true">
	                               Published FAQ
	                            </a>
	                        </li>
	                        <li class="">
	                            <a class="col-xs-4" href="#unpublishedFaq" data-toggle="tab" aria-expanded="false">
	                               Unpublished FAQ
	                            </a>
	                        </li>
	                    </ul>

                    <div class="card__body">
                    	<div class="row">
	                        <div class="table-responsive">
	                        	<div class="tab-content">
		                        	<div class="tab-pane fade in active" id="publishedFaq">
			                            <table id="data-table-clinc" class="table table-striped">
			                                <thead>
			                                    <tr>
			                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
			                                        <th data-column-id="title" data-order="asc">Title</th>
			                                        <th data-column-id="question">Question</th>
			                                        <th data-column-id="status" data-formatter="status">Status</th>
			                                        <th data-column-id="type">Application Type</th>
			                                        <th data-column-id="dateUpdated"  data-formatter="dateUpdated">Date Updated</th>
			                                        <th data-column-id="dateAdded"  data-formatter="dateAdded">Date Added</th>
			                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px">Commands</th>
			                                    </tr>
			                                </thead>
			                            </table>
			                       	</div>
			                       	<div class="tab-pane" id="unpublishedFaq">
			                            <table id="data-table-faq-unpublished" class="table table-striped">
			                                <thead>
			                                    <tr>
			                                        <th data-column-id="id" data-type="numeric" data-identifier="true">ID</th>
			                                        <th data-column-id="title" data-order="asc">Title</th>
			                                        <th data-column-id="question">Question</th>
			                                        <th data-column-id="type">Application Type</th>
			                                        <th data-column-id="dateUpdated"  data-formatter="dateUpdated">Date Updated</th>
			                                        <th data-column-id="dateAdded"  data-formatter="dateAdded">Date Added</th>
			                                        <th data-column-id="commands" data-formatter="commands" data-sortable="false" style="width: 120px" data-visible="false">Commands</th>
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
        
        <script src="assets/js/backend/faq.js" type="text/javascript"></script>
            
        <script type="text/javascript">
			var faqUnpublished = $("#data-table-faq-unpublished");
			var isDelete = "hidden";
			var isCreate = "hidden";
			var isUpdate = "hidden";
			for (var access of roleAccess) {
				if(access.module=="FAQ" && access.access=="UPDATE" || access.module=="FAQ" && access.access=="DELETE" || isUserRoleAdmin){
					$("th[data-column-id='commands']").removeAttr("data-visible");
				}
				if(access.module=="FAQ" && access.access=="DELETE"  || isUserRoleAdmin){
					isDelete = "";
					console.log(access);
				}
				if(access.module=="FAQ" && access.access=="CREATE"  || isUserRoleAdmin){
					$(".actions").removeClass("hidden");
					console.log(access);
				}
				if(access.module=="FAQ" && access.access=="UPDATE"  || isUserRoleAdmin){
					isUpdate = "";
					console.log(access);
				}
			}
			
			
			tableConfig.url = "FaqTempList";
			tableConfig.formatters = {
				"commands": function(column, row) {
					var viewOriginal = "";
					if(row.mainid != 0){
						console.log("asdasdas");
						viewOriginal = " <button href=\"#\" class=\"btn btn-sm btn-primary command-compare\" data-row-id=\"" + row.id + "\">Compare</button>";
					}
	            	return 	"<a href=\"FaqUpdate?id="+row.id+"&question="+row.title+"&faq=temp\" class=\"btn btn-sm btn-default command-edit "+isUpdate+"\" data-row-id=\"" + row.id + "\">Edit</a> "+viewOriginal+
	            			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete "+isDelete+"\" data-row-id=\"" + row.id + "\">Delete</button>";
	        	},
	        	"dateUpdated" : function(column, row){
	        		return datetimeformat(row.dateUpdated);
	        	},
	        	"dateAdded" : function(column, row){
	        		return datetimeformat(row.dateAdded);
	        	}
	        	
			}
			
	        var table = faqUnpublished.bootgrid(tableConfig).on("loaded.rs.jquery.bootgrid", function() {
	        	table.find(".command-delete").on("click", function(e){        
	        		var form = {
		                	id: $(this).data("row-id")
		                }
		            	confirmDelete({
		                	text : "Do you want to delete this service?",
		                	url : "ServicesDelete",
		                	form : form,
		                	bootGrid : serviceTable
		                
		                });
	            });
	        });
			
			$("#data-table-faq-unpublished-header").remove();
        </script>
        
    </body>
  </html>