<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="commons/Headers.jsp"%>
    <body>
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
				       <h2>Faq</h2>
				
				       <div class="actions hidden">
				           
				       </div>
				   </div>
				
				   <div class="card">
				       <div class="card__header">
				           <h2>${sessionScope.TRANSACTION } ${sessionScope.faq}</h2>
				           <c:if test="${sessionScope.faq=='temp'}">
				           		<button class="btn btn-primary pull-right faq-approve-fn" data-module="3" data-moduleId="${requestScope.faq.id}">Approve</button>
				       		</c:if>
				       </div>
				
				       <div class="card__body">
				     		<form role="form" id="faqUpdateForm">
					           	<div class="row">
					               <div class="col-sm-12">
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <input type="text" class="form-control" placeholder="Title" value="${requestScope.faq.title}" name="title">
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					                   <br/>
					                   <div class="input-group">
					                       <span class="input-group-addon"><i class="zmdi zmdi-battery-unknown"></i></span>
					                       <div class="form-group">
					                           <select class="form-control" name="type" id="faqType">
					                          		<option value="HOSPITALS">Hospital</option>
					                          		<option value="CLINIC">Clinic</option>
					                          </select>
					                           <i class="form-group__bar"></i>
					                       </div>
					                   </div>
					               </div>
					           </div>
								<br/>
								<h4>Question</h4>
					
					           <div class="row">
					               <div class="col-sm-12">
					                   <div class="form-group form-group--float">
				                           <textarea class="form-control" rows="20" name="question" id="question">${requestScope.faq.question}</textarea>
				                           <i class="form-group__bar"></i>
				                       </div>
					               </div>
									
					           </div>
					           <h4>Answer</h4>
					
					           <div class="row">
					               <div class="col-sm-12">
					                   <div class="form-group form-group--float">
				                           <textarea class="form-control" rows="20" name="answer" id="answer">${requestScope.faq.answer}</textarea>
				                           <i class="form-group__bar"></i>
				                       </div>
					               </div>
									
					           </div>
					
					           <br/>
					           
					           	<button type="submit" class="btn btn-default" id="saveUpdateFunction">Save Update</button>
					           
					   		</form>
				       </div>
				
				       <br/>
				       
				   </div>
				
			</section>
			
		<%@ include file="commons/Footer.jsp"%>
            
        </section>
		<%@ include file="commons/JsFiles.jsp"%>
        <!-- jQuery -->

	<script type="text/javascript" src="assets/js/backend/faqUpdate.js"></script>
	<script type="text/javascript">
		$("#faqType").val('${requestScope.faq.type}');
		var faqApproveFn = $(".faq-approve-fn");
		var saveUpdateFunction = $("#saveUpdateFunction");
		var approver =  '${sessionScope.user.approver}';
		var faq = getUrlParameter('faq');
		var author = '${requestScope.faq.author}';
		var userId = ${sessionScope.user.id};
		var contains = location.pathname.indexOf("FaqUpdate");
		
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
		
	
		console.log("approver :: ", faq, userId , author, contains);
		if(!approver && faq != 'main' && userId != author){
			console.log("remove button");
			saveUpdateFunction.remove();
		}
		
		
		if(contains >= 0){
			var params = {
				"module" : "FAQ",
				"id" : '${requestScope.faq.id}'
			}
			POST("IsApproved", params, function(data){
				if(data.status == "ERROR"){
					faqApproveFn.remove();
					saveUpdateFunction.remove();
				}
				toastMessage(data);
			})
		}
		
		
		
		faqApproveFn.click(function(e){
			console.log(e);			
			POST("FaqApproval", params, function(data){
				if(data.code == 2){
					location.href="Faq#unpublishedFaq";
				}else{
					toastMessage(data);
				}
				faqApproveFn.remove();
				saveUpdateFunction.remove();
				console.log(data);
			})
			
		});
		
	</script>
        
</body>
</html>
