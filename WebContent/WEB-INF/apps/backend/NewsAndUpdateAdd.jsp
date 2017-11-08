<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
				       <h2>News And Updates</h2>
				   </div>

				   <div class="card">
				       <div class="card__header">
				           <h2>Add</h2>
				       </div>

				       <div class="card__body">
				     		<form role="form" id="newAndUpdatesddUpdateForm">

				               	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                          	<input type="text" class="form-control" placeholder="Title" value="" name="title" >
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                         	<textarea rows="30" cols="20" class="form-control" name="news" placeholder="Content" id="news"></textarea>
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
					           </div>
					           <br/>
					           <button type="submit" class="btn btn-default">Save Update</button>
					   		</form>
				       </div>
				   </div>

			</section>

		<%@ include file="commons/Footer.jsp"%>

        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript">
		$("#cms_menus").addClass("navigation__sub--active navigation__sub--toggled");
	    $("#news_and_updates_menu").addClass("navigation__active");
	    var url = "NewsAndUpdatesSaveCreate";
	    var id = getUrlParameter("id") == undefined ? 0 : getUrlParameter("id");
	    if(location.pathname.indexOf("NewsAndUpdateUpdate") > -1){
	    	$(".card__header > h2").html("UPDATE");
	    	url = "NewsAndUpdatesSaveUpdate";
	    	POST("NewsAndUpdates/"+id, {}, function(data){
	  			$("input[name='title']").val(data.title);
	  			$("textarea[name='news']").val(data.news);
	  		})
	    }else{
	    	$(".card__header > h2").html("ADD");
	    	$("#imageContainer").remove();
	    }


		$(document).ready(function(){
			CKEDITOR.replace('news');

			$( "#newAndUpdatesddUpdateForm" ).submit(function( event ) {
		  		event.preventDefault();
		  		var form = objectifyForm($( this ).serializeArray());
	      	   	form.news = CKEDITOR.instances.news.getData();
	      	  	form.id=id;
		  		var btn = $( "#newAndUpdatesddUpdateForm button");
		  		btn.html("Updating...");
		  		btn.attr("disabled", "disabled");

		  		POST(url, form, function(data){
		  			if(data.status == "SUCCESS"){
		  				location.href = "NewsAndUpdates";
		  			}else{
		  				toastMessage(data);
			  			btn.html("Save Update");
				  		btn.removeAttr("disabled");
		  			}

		  		})
			});
		})
	</script>

</body>
</html>
