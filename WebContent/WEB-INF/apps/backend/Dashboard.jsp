<!DOCTYPE html>
<html lang="en">
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Material Admin</title>

        <!-- Vendors -->

        <!-- Animate CSS -->
        <link href="assets/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">

        <!-- Material Design Icons -->
        <link href="assets/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

        <!-- Malihu Scrollbar -->
        <link href="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">

        <!-- Full Calendar -->
        <link href="assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">

        <!-- Site CSS -->
        <link href="assets/css/app-1.min.css" rel="stylesheet">

        <!-- Page loader -->
        <script src="assets/js/page-loader.min.js"></script>
    </head>

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
                <div class="card">
                    <div class="card__header">
                        <h2>SSMC Website History<small>Browsing history for 1 hour!</small></h2>

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

                    <div class="flot-chart-edge">
                        <div id="chart-curved-line" class="flot-chart"></div>
                    </div>
                </div>

                <div id="content__grid" data-columns>
                    <div class="card widget-analytic">
                        <div class="card__header">
                            <h2>Website Impressions <small>Consectetur Ultricies Porta Fringilla</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card__body">
                            <div class="widget-analytic__info">
                                <i class="zmdi zmdi-caret-up-circle"></i>
                                <h2>987,453</h2>
                            </div>
                            <div class="widget-analytic__chart">
                                <div class="chart-sparkline-line">9,5,6,3,9,7,5,4,6,5,6,4,9</div>
                            </div>
                        </div>
                    </div>

                    <div class="card widget-analytic">
                        <div class="card__header">
                            <h2>Website Traffics <small>Current active users.</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card__body">
                            <div class="widget-analytic__info">
                                <i class="zmdi zmdi-caret-up-circle"></i>
                                <h2 id="websiteTrafficCount">356,785K</h2>
                            </div>
                            <div class="widget-analytic__chart">
                                <div class="chart-sparkline-line" id="websiteTrafficCountHistory">2,4,6,5,6,4,5,3,7,3,6,5,9,6</div>
                            </div>
                        </div>
                    </div>

                    <div class="card widget-analytic">
                        <div class="card__header">
                            <h2>Total Sales <small>Purus Malesuada Consectetur</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card__body">
                            <div class="widget-analytic__info">
                                <i class="zmdi zmdi-caret-down-circle"></i>
                                <h2>$458,778</h2>
                            </div>
                            <div class="widget-analytic__chart">
                                <div class="chart-sparkline-line">9,4,6,5,6,4,5,7,9,3,6,5,9</div>
                            </div>
                        </div>
                    </div>

                    <div class="card widget-pie-grid">
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="92" data-pie-size="80">
                                <span class="chart-pie__value">92</span>
                            </div>
                            <div class="widget-pie-grid__title">Email<br> Scheduled</div>
                        </div>
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="11" data-pie-size="80">
                                <span class="chart-pie__value">11</span>
                            </div>
                            <div class="widget-pie-grid__title">Email<br> Bounced</div>
                        </div>
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="52" data-pie-size="80">
                                <span class="chart-pie__value">52</span>
                            </div>
                            <div class="widget-pie-grid__title">Email<br> Opened</div>
                        </div>
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="44" data-pie-size="80">
                                <span class="chart-pie__value">44</span>
                            </div>
                            <div class="widget-pie-grid__title">Storage<br>Remaining</div>
                        </div>
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="78" data-pie-size="80">
                                <span class="chart-pie__value">78</span>
                            </div>
                            <div class="widget-pie-grid__title">Web Page<br> Views</div>
                        </div>
                        <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                            <div class="chart-pie" data-percent="32" data-pie-size="80">
                                <span class="chart-pie__value">32</span>
                            </div>
                            <div class="widget-pie-grid__title">Server<br> Processing</div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card__header">
                            <h2>Recent Posts <small>This items need your approval!</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="list-group">
                            <a href="" class="list-group-item media">
                                <div class="pull-left">
                                    <img class="avatar-img" src="demo/img/profile-pics/1.jpg" alt="">
                                </div>

                                <div class="media-body">
                                    <div class="list-group__heading">David Villa Jacobs</div>
                                    <small class="list-group__text">Sorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mattis lobortis sapien non posuere</small>
                                </div>
                            </a>

                            <a href="" class="list-group-item media">
                                <div class="pull-left">
                                    <img class="avatar-img" src="demo/img/profile-pics/5.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="list-group__heading">Candice Barnes</div>
                                    <small class="list-group__text">Quisque non tortor ultricies, posuere elit id, lacinia purus curabitur.</small>
                                </div>
                            </a>

                            <a href="" class="list-group-item media">
                                <div class="pull-left">
                                    <img class="avatar-img" src="demo/img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="list-group__heading">Jeannette Lawson</div>
                                    <small class="list-group__text">Donec congue tempus ligula, varius hendrerit mi hendrerit sit amet. Duis ac quam sit amet leo feugiat iaculis</small>
                                </div>
                            </a>

                            <a href="" class="list-group-item media">
                                <div class="pull-left">
                                    <img class="avatar-img" src="demo/img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="list-group__heading">Darla Mckinney</div>
                                    <small class="list-group__text">Duis tincidunt augue nec sem dignissim scelerisque. Vestibulum rhoncus sapien sed nulla aliquam lacinia</small>
                                </div>
                            </a>

                            <a href="" class="list-group-item media">
                                <div class="pull-left">
                                    <img class="avatar-img" src="demo/img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <div class="list-group__heading">Rudolph Perez</div>
                                    <small class="list-group__text">Phasellus a ullamcorper lectus, sit amet viverra quam. In luctus tortor vel nulla pharetra bibendum</small>
                                </div>
                            </a>

                            <a href="" class="view-more">
                                <i class="zmdi zmdi-long-arrow-right"></i> View all
                            </a>
                        </div>
                    </div>

                    <div class="card widget-past-days">
                        <div class="card__header">
                            <h2>For the past 30 days <small>Pellentesque ornare sem lacinia quam</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="flot-chart-edge">
                            <div class="flot-chart flot-chart--sm" id="chart-past-days"></div>
                        </div>

                        <div class="list-group list-group--striped">
                            <div class="list-group-item">
                                <div class="widget-past-days__chart hidden-sm">
                                    <div class="chart-sparkline-bar">6,9,5,6,3,7,5,4,6,5,6,4,2,5,8,2,6,9</div>
                                </div>

                                <div class="widget-past-days__info">
                                    <small>Page Views</small>
                                    <h3>47,896,536</h3>
                                </div>
                            </div>

                            <div class="list-group-item">
                                <div class="widget-past-days__chart hidden-sm">
                                    <div class="chart-sparkline-bar">5,7,2,5,2,8,6,7,6,5,3,1,9,3,5,8,2,4</div>
                                </div>

                                <div class="widget-past-days__info">
                                    <small>Site Visitors</small>
                                    <h3>24,456,799</h3>
                                </div>
                            </div>

                            <div class="list-group-item">
                                <div class="widget-past-days__chart hidden-sm">
                                    <div class="chart-sparkline-bar">5,7,2,5,2,8,6,7,6,5,3,1,9,3,5,8,2,4</div>
                                </div>

                                <div class="widget-past-days__info">
                                    <small>Total Clicks</small>
                                    <h3>13,965</h3>
                                </div>
                            </div>

                            <div class="list-group-item">
                                <div class="widget-past-days__chart hidden-sm">
                                    <div class="chart-sparkline-bar">3,9,1,3,5,6,7,6,8,2,5,2,7,5,6,7,6,8</div>
                                </div>

                                <div class="widget-past-days__info">
                                    <small>Total Returns</small>
                                    <h3>198</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card widget-recent-signups">
                        <div class="card__header card__header--highlight">
                            <h2>Most Recent Signups <small>Magna Cursus Malesuada</small></h2>
                            <div class="actions">
                                <div class="dropdown">
                                    <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="">Refresh</a></li>
                                        <li><a href="">Manage</a></li>
                                        <li><a href="">Settings</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="chart-sparkline-line m-t-20">9,4,6,5,6,4,5,7,9,3,6,5,9</div>
                        </div>

                        <div class="card__body widget-recent-signups__list">
                            <a href=""><div class="avatar-char">B</div></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/5.jpg" alt=""></a>
                            <a href=""><div class="avatar-char">L</div></a>
                            <a href=""><div class="avatar-char">A</div></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/4.jpg" alt=""></a>
                            <a href=""><div class="avatar-char">Z</div></a>
                            <a href=""><div class="avatar-char">I</div></a>
                            <a href=""><div class="avatar-char">S</div></a>
                            <a href=""><div class="avatar-char">C</div></a>
                            <a href=""><div class="avatar-char">W</div></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/3.jpg" alt=""></a>
                            <a href=""><div class="avatar-char">A</div></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/9.jpg" alt=""></a>
                            <a href=""><div class="avatar-char">N</div></a>
                            <a href=""><div class="avatar-char">X</div></a>
                            <a href=""><div class="avatar-char">V</div></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/7.jpg" alt=""></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/6.jpg" alt=""></a>
                            <a href=""><img class="avatar-img" src="demo/img/profile-pics/8.jpg" alt=""></a>
                            <a href=""><div class="avatar-char">F</div></a>
                            <a href=""><div class="avatar-char">E</div></a>
                            <a href=""><div class="avatar-char">A</div></a>
                            <a href=""><div class="avatar-char">A</div></a>
                            <a href=""><div class="avatar-char">M</div></a>
                            <a href=""><div class="avatar-char">O</div></a>
                            <a href=""><div class="avatar-char">I</div></a>
                        </div>
                    </div>
                </div>
            </section>

            <%@ include file="commons/Footer.jsp"%>
            
        </section>

       

        <!-- jQuery -->
        <script src="assets/vendors/bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Malihu ScrollBar -->
        <script src="assets/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

        <!-- Bootstrap Notify -->
        <script src="assets/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>

        <!-- Moment -->
        <script src="assets/vendors/bower_components/moment/min/moment.min.js"></script>

        <!-- FullCalendar -->
        <script src="assets/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

        <!-- Simple Weather -->
        <script src="assets/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>

        <!-- Salvattore -->
        <script src="assets/vendors/bower_components/salvattore/dist/salvattore.min.js"></script>

        <!-- Flot Charts -->
        <script src="assets/vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="assets/vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="assets/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>

        <!-- Sparkline Charts -->
        <script src="assets/vendors/jquery.sparkline/jquery.sparkline.min.js"></script>

        <!-- EasyPie Charts -->
        <script src="assets/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

        <!-- Demo Only -->
        <script src="assets/demo/js/flot-charts/curved-line.js"></script>
        <script src="assets/demo/js/flot-charts/line.js"></script>
        <script src="assets/demo/js/easy-pie-charts.js"></script>
        <script src="assets/demo/js/misc.js"></script>
        <script src="assets/demo/js/sparkline-charts.js"></script>
        <script src="assets/demo/js/calendar.js"></script>

        <!-- Site Functions & Actions -->
        <script src="assets/js/app.min.js"></script>
        <script src="assets/js/utils.js"></script>
        
        <script type="text/javascript">
        	
        $(document).ready(function(){
        	console.log("asdasdasd");
        	
        	getPendingApprovalList()
        	
        	
        })
        function getPendingApprovalList(){
	        	POST("PendingApprovalList", {}, function(data){
	        		console.log(data);
	        		var html = "";
	        		for (var i = 0; i < data.length; i++) {
						html += '<div class="list-group-item">'+
			                '<div class="checkbox checkbox--char">'+
			                    '<label>'+
			                        '<span class="widget-todo-lists__info">('+data[i].module+') '+data[i].name+'</span>'+
			                    '</label>'+
			                '</div>'+
			
			                '<div class="actions list-group__actions">'+
			                    '<div class="dropdown">'+
			                        '<a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>'+
			
			                        '<ul class="dropdown-menu pull-right">'+
			                            '<li><a href="javascript:void(0)" class="approved-fn" data-moduleid="'+data[i].moduleid+'" data-module="'+data[i].module+'" data-reload="true">Approve</a></li>'+
			                            '<li><a href="'+data[i].updateUrl+'?id='+data[1].moduleid+'&name='+data[1].name+'">Edit</a></li>'+
			                        '</ul>'+
			                    '</div>'+
			                '</div>'+
			            '</div>';
					}
	        		$("#pendingApprovalList").html(html);
	        	})
        	}
        </script>
        
    </body>
</html>
