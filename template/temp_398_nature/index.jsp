<%@ page language="java" contentType="text/html ;charset=UTF-8" pageEncoding="UTF-8" import="org.jsoup.*,org.json.*"  %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
        <title>Nature CSS Template</title>
    	<meta name="keywords" content="" />
		<meta name="description" content="" />
<!-- 
Nature Template 
https://templatemo.com/tm-398-nature
-->
        <meta name="viewport" content="width=device-width">
        
        <!-- Google Web Font Embed -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,600,500,300,700' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo_main.css">
    </head>
    <body>
        <%!
           public String web_get(int hid ,String data) throws Exception {
                String response;
                JSONArray res_arr;
                JSONObject js;
                String res;
                String url="http://140.128.87.192/NCUTair/ShowAllLast";
    
                
                response = Jsoup.connect(url).ignoreContentType(true).execute().body();
                res_arr=new JSONArray(response);
                js=new JSONObject(res_arr.getString(hid));
                res=js.getString(data);
    
                return res;
           }
        %>
        
        <%

           String time=web_get(1,"add_time");
           String pm25=web_get(1,"PM25");
           String hid=web_get(1,"hid");
        %>
        <div id="main-wrapper">
            <!--[if lt IE 7]>
                <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a rel="nofollow" href="http://browsehappy.com">upgrade your browser</a> or <a rel="nofollow" href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
            <![endif]-->

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 affix text-center" style="z-index: 1;">
                <h1 class="templatemo-site-title">
                        <a href="#">勤益科大空氣品質偵測站</a>
                        <img src="images/btn-menu.png" alt="main menu" id="m-btn" class="pull-right visible-xs visible-sm" >
                </h1>

                <ul id="responsive" style="display:none" class="hidden-lg hidden-md"></ul><!-- /.responsive -->
            </div>

            <div class="menu visible-md visible-lg">
                <ul id="menu-list">
                    <li class="active home-menu"><a href="#home">Home</a></li>
                    <li class="about-menu"><a href="#about">About Us</a></li>
                    <li class="services-menu"><a href="#services">Our Services</a></li>
                    <li class="testimonial-menu"><a href="#testimonial">Testimonials</a></li>
                    <li class="contact-menu"><a href="#contact">Contact</a></li>
                    <li><a rel="nofollow" target="_parent" href="https://fb.com/templatemo" class="external">FB Page</a></li>
                </ul>
            </div><!-- /.menu -->

            <div class="image-section">
                <div class="image-container">
                    <img src="images/nature1.jpg" id="home-img" class="main-img inactive" alt="Home">
                    <img src="images/nature2.jpg" id="about-img" class="inactive" alt="About">
                    <img src="images/nature3.jpg" id="services-img"  class="inactive" alt="Services">
                    <img src="images/nature4.jpg" id="testimonial-img" class="inactive" alt="Testimonial">
                    <img src="images/nature5.jpg" id="contact-img" class="inactive" alt="Contact">
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-lg-offset-6 col-md-offset-6 templatemo-content-wrapper">
                    <div class="templatemo-content">
                        
                        <section id="home-text" class="active templatemo-content-section">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <h2>Welcome to Nature Template</h2>
                                <p>You can edit and use Nature Template for any kind of website. This is free CSS template provided by templatemo. Credit goes to <a rel="nofollow" href="https://unsplash.com" target="_blank">Unsplash</a> for images used in this template. Nulla ut consequat felis, et euismod enim. Etiam at tellus eget dui tristique eleifend pretium eu tellus.</p>
                                <p>Praesent elementum volutpat justo eu porta. Nam gravida, odio eget mattis posuere, massa quam hendrerit velit, in hendrerit eros neque a orci. Curabitur hendrerit tellus sit amet turpis egestas aliquam. Phasellus ipsum dui, dictum non lacus ac, fermentum pulvinar mi.</p>
                            </div>
                        </section><!-- /.home-text -->    

                        <section id="about-text" class="inactive">
                            <h2 class="text-center">About our company</h2>
                            <div class="col-sm-6 col-md-6">
                                <p>In tellus ipsum, ullamcorper vitae justo sit amet, mattis consequat tortor. Pellentesque rutrum, ligula vel fermentum imperdiet, lectus eros volutpat urna, id mollis dolor justo vulputate justo ut sit amet ante luctus metus.</p>
                            </div>
                            <div class="col-sm-6 col-md-6">
                                <p>Suspendisse risus urna, posuere id orci ut, facilisis accumsan ipsum. Etiam sodales consequat purus non vulputate. Aliquam erat volutpat. Sed vehicula lacinia porta. Vivamus faucibus dui nulla, a aliquet nunc porta in.</p>
                            </div>
                        </section><!-- /.about-text --> 

                        <section id="services-text" class="inactive">
                            <h2 class="text-center">Our Services</h2>
                            <div class="col-sm-4 col-md-4">
                                <h3>Marketing</h3>
                                <p>Fusce at accumsan elit. Sed ut urna pulvinar, ultricies orci eu, pretium lectus. Integer vulputate lorem ac nisi eleifend, at egestas mauris eleifend.</p>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <h3>Public Relations</h3>
                                <p>Vivamus aliquam lectus non tortor pellentesque, sit amet ultricies ex rutrum. Nunc ut neque sem. Proin fermentum libero ac vestibulum sollicitudin.</p>
                            </div>
                            <div class="col-sm-4 col-md-4">
                                <h3>Digital Media</h3>
                                <p>In tellus ipsum, ullamcorper vitae justo sit amet, mattis consequat tortor. Suspendisse risus urna, posuere id orci ut, facilisis accumsan ipsum.</p>
                            </div>
                        </section><!-- /.services-text --> 

                        <section id="testimonial-text" class="inactive">
                            <div class="col-sm-12 col-md-12">
                                <h2>Testimonials</h2>
                                <p>Vestibulum sem purus, interdum sit amet varius id, porta sit amet sem. Mauris nec dui ut sapien finibus bibendum eget sit amet nulla. Proin condimentum urna quis tincidunt euismod. Vivamus eget sem at lorem varius pretium. Sed nisl lacus, sollicitudin sed elit et, convallis convallis arcu.</p>
                                <p>Nulla ut consequat felis, et euismod enim. Etiam at tellus eget dui tristique eleifend pretium eu tellus. Integer eu facilisis velit. Proin in mollis metus, id vestibulum enim.</p>
                            </div>
                        </section><!-- /.testimonial-text --> 

                        <section id="contact-text" class="inactive">
                            <div class="col-sm-12 col-md-12">
                                <div class="row">
                                    <div class="col-sm-12 col-md-12"><h2>Contact</h2></div>
                                    <div class="clearfix"></div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-sm-6 col-md-6">
                                        <div id="map-canvas"></div>
                                        <p>990 Digital Street, New Forest Area, San Francisco, CA 10660</p>
                                    </div>

                                    <div class="col-sm-6 col-md-6">
                                        <form action="#" method="post">

                                                <div class="form-group">
                                                    <!--<label for="contact_name">Name:</label>-->
                                                    <input type="text" id="contact_name" class="form-control" placeholder="Name" />
                                                </div>
                                                <div class="form-group">
                                                    <!--<label for="contact_email">Email:</label>-->
                                                    <input type="text" id="contact_email" class="form-control" placeholder="Email Address" />
                                                </div>
                                                <div class="form-group">
                                                    <!--<label for="contact_message">Message:</label>-->
                                                    <textarea id="contact_message" class="form-control" rows="7" placeholder="Write a message"></textarea>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Send</button>

                                        </form>
                                    </div>
                                    
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </section><!-- /.contact-text --> 
                    </div><!-- /.templatemo-content -->  
                </div><!-- /.templatemo-content-wrapper --> 
            </div><!-- /.row --> 

            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer">
                    <p class="footer-text">
                    	<span>Copyright &copy; 2020 Company Name - Design: TemplateMo</span>
                	</p>
                </div><!-- /.footer --> 
            </div>

	</div><!-- /#main-wrapper -->
        
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div><!-- /#preloader -->
        
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/templatemo_script.js"></script>
        <!-- templatemo 398 nature -->
        <script type="text/javascript">

            function creat_map(){
               var time="<%=time%>";
               var pm25="<%=pm25%>";
               var hid="<%=hid%>";
               
              
               var map = L.map('home-img',{
                   center:[24.14446,120.72980],
                   zoom:[18]
                });
               var iocn_device1="airicon/"+pm25+".png";
               var Icon_device1=L.icon({
                   iconUrl: iocn_device1,
                   iconSize: [50, 50],
                   iconAnchor:[25,50],
                   shadowUrl:"https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
                   shadowAnchor:[15,50],
                   shadowSize: [50, 50]
               });
               var maker_d1=L.marker([24.14362,120.73174],{icon:Icon_device1}).addTo(map);//24.14362,120.73162
              
               var pm25_card="pm25card/"+pm25+".jpg";
               maker_d1.bindPopup('<p class="click_device1_id">測站編號:'+hid+'</p>'+'<img style=width:400px;margin-bottom:-22px;margin-top:-20px; src='+pm25_card+'>'+'<p class="click_device1_location">地點：kb103教室</p>',{
               maxWidth : 400
               });
              
               var osm = new L.TileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {minZoom: 8, maxZoom: 18});
               map.addLayer(osm);
            }
            
            creat_map();

        </script>

    </body>
</html>