<script src="assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/utils.js"></script>
<script src="assets/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>
<script src="assets/vendors/bower_components/jquery.bootgrid/dist/jquery.bootgrid.min.js"></script>
<script src="assets/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="assets/vendors/bower_components/nouislider/distribute/nouislider.min.js"></script>
<script src="assets/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="assets/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>
<script src="assets/vendors/ckeditor/ckeditor.js"></script>
<script src="assets/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
<script src="assets/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
<script type="text/javascript" src="assets/vendors/DataTables/datatables.min.js"></script>
<script type="text/javascript" src="assets/vendors/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<script src="assets/vendors/farbtastic/farbtastic.min.js"></script>
<script src="assets/demo/js/misc.js"></script>
<script src="assets/demo/js/data-table.js"></script>
<script src="assets/js/app.min.js"></script>

<script>
	var roleAccess = $.parseJSON('${roleAccessJson}');
	var isUserRoleAdmin = ('${sessionScope.user.roleName}' == "ADMIN" ? true : false);
	console.log("isUserRoleAdmin", isUserRoleAdmin);
	var isAdministrationMenus = false;
	var isCMSMenus = false;
	for (var access of roleAccess) {
		
		if(access.module=="DASHBOARD" && access.access=="RETRIEVE"){
			$("#dashboard").removeClass("hidden");
		}
		// ADMINISTRATION
		else if(access.module=="CONTACTUS" && access.access=="RETRIEVE"){
			$("#contact_us_menu").removeClass("hidden");
			isAdministrationMenus = true;
		}else if(access.module=="CITY" && access.access=="RETRIEVE"){
			$("#city_menu").removeClass("hidden");
			isAdministrationMenus = true;
		}else if(access.module=="USER" && access.access=="RETRIEVE"){
			$("#accounts_menu").removeClass("hidden");
			isAdministrationMenus = true;
		}else if(access.module=="REGISTEREDACCOUNTS" && access.access=="RETRIEVE"){
			$("#registered_accounts_menu").removeClass("hidden");
			isAdministrationMenus = true;
		}else if(access.module=="ROLE" && access.access=="RETRIEVE"){
			$("#roles_menu").removeClass("hidden");
			isAdministrationMenus = true;
		}
		
		
		else if(access.module=="ADVERTISEMENT" && access.access=="RETRIEVE"){
			$("#advertisement_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="CONTACTINFORMATION" && access.access=="RETRIEVE"){
			$("#contact_info_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="CLINIC" && access.access=="RETRIEVE"){
			$("#clinic_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="FAQ" && access.access=="RETRIEVE"){
			$("#faq_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="ABOUTUS" && access.access=="RETRIEVE"){
			$("#about_us_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="HEADER" && access.access=="RETRIEVE"){
			$("#header_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="SERVICE" && access.access=="RETRIEVE"){
			$("#service_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="FEATUREDBOX" && access.access=="RETRIEVE"){
			$("#featured_box_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="PARTNERS" && access.access=="RETRIEVE"){
			$("#partners_menu").removeClass("hidden");
			isCMSMenus = true;
		}else if(access.module=="DOCTORDIRECTORY" && access.access=="RETRIEVE"){
			$("#doctor_directory_menu").removeClass("hidden");
			isCMSMenus = true;
		}
		
		
	}
	
	if(isAdministrationMenus){
		$("#administration_menus").removeClass("hidden");
	}
	console.log("cms_menus : "+isCMSMenus);
	if(isCMSMenus){
		$("#cms_menus").removeClass("hidden");
	}
	
</script>

