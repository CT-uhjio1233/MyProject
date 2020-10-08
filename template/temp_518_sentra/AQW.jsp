<%@ page language="java" contentType="text/html ;charset=UTF-8" pageEncoding="UTF-8" import="org.jsoup.*,org.json.*"  %>
<!DOCTYPE html>
<html>
   <head>
       <title>AirQulity</title>
       <meta charset="utf-8">
       <link rel="stylesheet" href="js/leaflet/leaflet.css">
       <script src="js/leaflet/leaflet.js"></script>
       <script src="js/jquery.min.js"></script>

       <style>           
       
           #mapid{
            width: 100%;
            height:700px;
           }
       </style>
       
   </head>
   <body>
        <div id="mapid"></div>
            
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
            <script type="text/javascript">

            function creat_map(){
               var time="<%=time%>";
               var pm25="<%=pm25%>";
               var hid="<%=hid%>";
               
              
               var map = L.map('mapid',{
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
