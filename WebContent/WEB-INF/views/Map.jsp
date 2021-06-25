<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String place = (String)session.getAttribute("mapPlace");
    String artist = (String)session.getAttribute("mapArtist");
    String description = (String)session.getAttribute("mapDescription");
    
    %>
    
<!DOCTYPE html>
<html>
  <body style="height: 512px; background-color: white;"><img

      src="https://image.flaticon.com/icons/png/512/26/26362.png" alt="" style="width: 93px; height: 73px; margin-left: -2px;"><br>
    <h1 style="margin-top: -45.5667px; margin-left: 115px;"> ShowRoome </h1>
    <h1 style="margin-top:84px;margin-left:3px;">
     
      <form action="TastoChart" method="post">
        <p style="margin-top:-74px;margin-left:170px;"><input id="Submit" name="Chart" type="submit" value="Chart" " style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 570px;background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="TastoMap" method="post">
        <p style="margin-top:-74px;margin-left:-170px;"><input id="Submit" name="Map" type="submit" value="Map"  style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 570px;color:white; background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="Homepage" method="post">
        <p style="margin-top:-74px;margin-left:-555px;"><input id="Submit" type="submit" name="Homepage" value="Homepage" style="height: 35px ; width: 95px; margin-top: -46px; margin-left: 570px; background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="HostShowWebController" method="get">
        <p style="margin-top:-74px;margin-left:937px;"><input id="Submit" type="submit" name="Setting" value="Sponsored" style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 210px;background-color: #4D4D4D;"></input></p>
      </form>
    </h1>
    <h1 style="margin-top: -74px;margin-left:px ;background-color: white;">
      <style>
#rectangle {
    width: 1250px;
    height: 50px;
    background: #10030F;
}
</style> <div id="rectangle"></div>
    </h1>
    
 
 <div id="container2"  style="display:">
  <h1> <label  style="width: 300x; height: 40px;position:absolute;margin-top: 30px;z-index:0;margin-left:1000px"></label>    </h1> 
<textarea name="text1" id="text1" readonly="readonly";  style="resize: none; width: 300x; height: 40px;position:absolute;margin-top: 100px;z-index:0;margin-left:1000px"><%= place %></textarea>
<textarea name="text2" id="text2" readonly="readonly";  style="resize: none; width: 300x; height: 40px;position:absolute;margin-top: 180px;z-index:0;margin-left:1000px"><%= artist %></textarea>
<textarea name="text3" id="text3" readonly="readonly";  style="resize: none; width: 300x; height: 40px;position:absolute;margin-top: 260px;z-index:0;margin-left:1000px"><%= description %></textarea>

 

</div>
 
 <form action ="TastoMap" method = "get">
 <div class="container">
	 <img src="https://www.researchgate.net/profile/Francesco-Mensa/publication/330994606/figure/fig1/AS:724708081283073@1549795279179/Figura-125-Mappa-della-citta-di-Roma-I-punti-colorati-indicano-i-luoghi-visitati.png" alt="" style="width: 976x; height: 976px; margin-left: -2px; overflow:hidden; z-index:-1">
 	
<button type="submit" name="action" value="Eur" onclick="myFunction()" style="width: 60x; height: 60px; background-color: Transparent; border: none; margin-top: 750px; position:absolute; margin-left:-600px; float:left;"><img src="https://image.flaticon.com/icons/png/512/48/48703.png" style="width: 55x; height: 55px;" /></button>
<button  type="submit" name="action" value="Villa" onclick="myFunction()" style="width: 60x; height: 60px; background-color: Transparent; border: none; margin-top: 470px; position:absolute; margin-left:-650px; float:left;"><img src="https://image.flaticon.com/icons/png/512/48/48703.png" style="width: 55x; height: 55px;" /></button>
<button  type="submit" name="action" value="Pigneto" onclick="myFunction()" style="width: 60x; height: 60px; background-color: Transparent; border: none; margin-top: 470px; position:absolute; margin-left:-350px; float:left;"><img src="https://image.flaticon.com/icons/png/512/48/48703.png" style="width: 55x; height: 55px;" /></button>
<button  type="submit" name="action" value="Statuario" onclick="myFunction()" style="width: 60x; height: 60px; background-color: Transparent; border: none; margin-top: 700px; position:absolute; margin-left:-270px; float:left;"><img src="https://image.flaticon.com/icons/png/512/48/48703.png" style="width: 55x; height: 55px;" /></button>
</div>
</form>

<script>
function myFunction() {
    elem=document.getElementById("container2");
    elem.style.display="block";

 

}
</script>
 
    
<div id="risultato"></div>
 

</html>