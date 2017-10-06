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
                    <h2>Registered Accounts</h2>
                </div>

                <div class="card">
                    <div class="card__header">
                        <h2>List</h2>
                    </div>

                    <div class="card__body">
                        <div class="table-responsive">
                            <table id="registered-accounts-table" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Key</th>
                                        <th>Name</th>
                                        <th>Commands</th>
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
	    	$("#registered_accounts_menu").addClass("navigation__active");
	    	var tableData = $('#registered-accounts-table');
	        $(document).ready(function(){
	        	
	        	tableData.DataTable( {
	                "processing": true,
	                "serverSide": true,
	                "ajax": "RegisteredAccountsList"
	            } );
	        	

	        })
	       
	        
        </script>
        
    </body>
  </html>