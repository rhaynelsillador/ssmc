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

        <%@ include file="commons/Navbar.jsp"%>

        <section id="main">
            <%@ include file="commons/MenuAside.jsp"%>
            <%@ include file="commons/Menu.jsp"%>
            
            <section id="content">
                <div class="content--boxed">
                    <div class="content__header">
                        <h2>Contact US Messages</h2>

                        <!-- <div class="actions">
	                        <a href=""><i class="zmdi zmdi-check-all"></i></a>
	                        <a href=""><i class="zmdi zmdi-trending-up"></i></a>
	                        <div class="dropdown">
	                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
	                            <ul class="dropdown-menu pull-right">
	                                <li><a href="">Change Date Range</a></li>
	                                <li><a href="">Change Graph Type</a></li>
	                                <li><a href="">Other Settings</a></li>
	                            </ul>
	                        </div>
	                    </div> -->
                    </div>

                    <div class="card messages">
                        <div class="messages__sidebar c-overflow">
                            <div class="messages__user">
                                <img src="demo/img/profile-pics/1.jpg" alt="">
                                <div>Signed in as <br/> ${sessionScope.user.username }</div>
                            </div>

                            <div class="messages__search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <i class="form-group__bar"></i>
                                </div>
                            </div>

                            <div class="list-group" id="contactUsMessages"></div>
                        </div>

                        <div class="messages__body">
                            <div class="action-header">
                                <div class="action-header__label">
                                    <i class="zmdi zmdi-menu action-header__trigger visible-xs" data-mae-action="block-open" data-mae-target=".messages__sidebar"></i>
                                    <span class="hidden-xs" id="contactUsMessageSubject">Sarah Corner</span>
                                </div>
								
                            </div>

                            <div class="list-group" id="contactUsMessagesContent" style="min-height:500px;">
								
                                <div class="messages__reply">
                                    <textarea class="messages__reply__text" placeholder="What's on your mind..."></textarea>
                                    <button class="btn btn-default btn--icon messages__reply__btn"><i class="zmdi zmdi-check"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <%@ include file="commons/Footer.jsp"%>
			
        </section>
        <%@ include file="commons/JsFiles.jsp"%>
        
        <script type="text/javascript">
	        $("#administration_menus").addClass("navigation__sub--active navigation__sub--toggled");
	        $("#contact_us_menu").addClass("navigation__active");
        	var activeMessage = '${message}';
        	console.log("activeMessage :: ", activeMessage);
        
        	$(document).ready(function(){
        		POST("ContactUsMessage", {}, function(data){        			
        			var contactUsMessages = "";
        			
        			console.log(data);
        			$.each(data.rows, function(index, value){
        				var classHidden = "hidden";
        				var classActive = "";
        				if(activeMessage == value.id){
        					classHidden = "";
        					classActive = "active";
        					getReply(value.id);
        				}else if(activeMessage == "" && index == 0){
        					classHidden = "";
        					classActive = "active";
        					getReply(value.id);
        				}
        				
        				contactUsMessages += '<a class="list-group-item media contact-us-message '+classActive+'" data-id="'+value.id+'" data-status="'+value.status+'" data-subject="'+value.subject+'" href="javascript:void(0)"><div class="pull-left">'+
        									'<img src="assets/demo/img/profile-pics/4.jpg" alt="" class="avatar-img"></div><div class="media-body">'+
                        					'<div class="list-group__heading">'+value.email+'</div>'+
                        					'<small class="list-group__text">'+value.subject+'</small></div></a>';
                        					
        				
        			})
        			$("#contactUsMessages").html(contactUsMessages);
        			
        		})
        		
        		$(document).on("click", ".contact-us-message", function(e){
        			var $this = $(this);
        			var data = $this.data();
        			$(".contact-us-message").removeClass("active");
        			$this.addClass("active");
        			$("#contactUsMessageSubject").html(data.subject);
        			getReply(data.id);
        			
        		})
        		
        		function getReply(id){
        			POST("UpdateContacUsMessageStatus", {"id" : id}, function(data){
        				var contactUsMessagesContent = "";
        				var contactUsMessagesContentList = "";
        				
        				if(data.message != undefined){
        					contactUsMessagesContent += '<div class="list-group-item media contact-us-message-content" data-id="'+data.message.id+'"><div class="pull-right"><img class="avatar-img" src="demo/img/profile-pics/1.jpg" alt=""></div>'+
		                    '<div class="media-body"><div><div class="messages__item">'+data.message.message+'</div></div>'+
		                    '<small class="messages__date"><i class="zmdi zmdi-time"></i> '+moment(data.message.dateAdded).format("YYYY-MM-DD HH:mm:ss")+'</small>'+
		                    '</div></div>';
        				}
        				var isSame = "";
        				$.each(data.reply, function(index, value){
        						contactUsMessagesContent += '<div class="list-group-item media contact-us-message-content type-'+value.type.toLowerCase()+'" data-id="'+value.id+'"><div class="pull-right"><img class="avatar-img" src="demo/img/profile-pics/1.jpg" alt=""></div>'+
    		                    '<div class="media-body"><div>'+value.message+'</div>'+
    		                    '<small class="messages__date"><i class="zmdi zmdi-time"></i> '+moment(value.dateReplied).format("YYYY-MM-DD HH:mm:ss")+'</small>'+
    		                    '</div></div>';
        				
        				})
        				
    		                    
        				$("#contactUsMessagesContent").html(contactUsMessagesContent);
        				console.log(data);
        			})
        		}
        	})
        
        </script>
    </body>
</html>