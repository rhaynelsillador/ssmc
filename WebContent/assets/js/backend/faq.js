$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
$("#faq_menu").addClass("navigation__active");

tableConfig.url = "FaqList";
tableConfig.formatters = {
	"commands": function(column, row) {
    	return 	"<a href=\"FaqUpdate?id="+row.id+"&question="+row.title+"&faq=main\" class=\"btn btn-sm btn-default command-edit\" data-row-id=\"" + row.id + "\">Edit</a> "+
    			" <button class=\"btn btn-sm btn-warning command-status\" data-row-id=\"" + row.id + "\" data-row-status=\"" + row.status + "\">Status</button> "+
    			" <button href=\"#\" class=\"btn btn-sm btn-danger command-delete\" data-row-id=\"" + row.id + "\">Delete</button>";
	},
	"dateUpdated" : function(column, row){
		return datetimeformat(row.dateUpdated);
	},
	"dateAdded" : function(column, row){
		return datetimeformat(row.dateAdded);
	},
	"status" : function(column, row){
		console.log(row.status)
		return row.status ? "<span style=\"color: #148418;\">Active</span>" : "<span style=\"color: indianred;\">Disabled</span>";
	} 
}

if(window.location.hash) {

	console.log(window.location.hash);
	$("a[href="+window.location.hash+"]").click()
}

var tableFaq = $("#data-table-clinc").bootgrid(tableConfig);
tableFaq.on("loaded.rs.jquery.bootgrid", function() {
	tableFaq.find(".command-status").on("click", function(e){        
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
        	bootGrid : $('#data-table-clinc')
        
        });
        
    }).end().find(".command-delete").on("click", function(e){
    	var form = {
        	id: $(this).data("row-id")
        }
    	
    	confirmDelete({
        	text : "Do you want to delete this faq?",
        	url : "DeleteFaq",
        	form : form,
        	bootGrid : $('#data-table-clinc')
        
        });
    });
});
