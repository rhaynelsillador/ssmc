CKEDITOR.replace( 'answer' );
CKEDITOR.replace( 'question' );

$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
$("#faq_menu").addClass("navigation__active");

console.log( window.location.pathname);
var pathname = window.location.pathname;

$(document).ready(function(){
	$( "#faqUpdateForm" ).submit(function( event ) {
		var $this = $( this );
  		console.log($this.serialize() );
  		event.preventDefault();
  		  		
  		var form = objectifyForm($this.serializeArray());
  		form.question = CKEDITOR.instances.question.getData();
  		form.answer = CKEDITOR.instances.answer.getData();
  		
  		var btn = $( "#faqUpdateForm button");
  		btn.html("Updating...");
  		btn.attr("disabled", "disabled");
  		
  		POST("AddUpdateFaq", form, function(data){
  			location.href="Faq";
  		})
  		
	});
})

