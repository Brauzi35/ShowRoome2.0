<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
   <%@page import = "logic.appcontroller.HostShowSponsorController"  %>
   <%@page import = "logic.appcontroller.HomepageUserController"  %>
   <%@page import = "logic.bean.ArtistBean"  %>
    <%@ page import = "java.util.List" %>
   
    <%
    HostShowSponsorController hssc = new HostShowSponsorController();
    List<String> artists = hssc.buildArtistStringArray();
    HomepageUserController huc = new HomepageUserController();
    %>
  
<!DOCTYPE html>
<html>
  <head>
    <title>Prova</title>
  </head>
  <body style=" height: 512px; background-color: white;"><img src="https://image.flaticon.com/icons/png/512/26/26362.png"

 

      alt="" style="width: 93px; height: 73px; margin-left: -2px;"><br>
   
    <h1 style="margin-top: -45.5667px; margin-left: 115px;">Showroome Sponsor</h1>  
     <h1 style="margin-top:84px;margin-left:3px;">
      <form action="TastoProfile" method="post">
        <p style="margin-top:-74px;margin-left:400px;"><input id="Submit" name="Profile" type="submit" value="Organizza"  style="height: 35px; width: 95px; margin-top: -48px; margin-left: 160px;background-color: #4D4D4D;color:white;"></input></p>
      </form>
      
    
      <form action="Homepage" method="post">
        <p style="margin-top:-74px;margin-left:-555px;"><input id="Submit" type="submit" name="Homepage" value="Homepage" style="height: 35px ; width: 95px; margin-top: -46px; margin-left: 570px; background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="HostShowWebController" method="get">
        <p style="margin-top:-74px;margin-left:937px;"><input id="Submit" type="submit" name="Setting" value="Request" style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 210px;background-color: #4D4D4D;"></input></p>
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
 
    <!-- Primo artista  -->
   
    <p style="margin-top: 250px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

 

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    </p>
    <form action="ContattaArtista" method="post"  style=" margin-top: -50px;">
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label ><%= artists.get(0) %></input></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=huc.getArtist(artists.get(0)).getDescription() %></textarea></h3>
<input id="name" name="name" value="<%= artists.get(0) %>"; style="display:none;"></input>
  <button name="Dona" style="height: 35px; width: 90px; margin-left: 1030px; background-color: #4d4d4d;">Contatta</button> </form>
     

 

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade style="margin-top: 100px;">

 

 

    
   
  
  
  
       <p style="margin-top: 300px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

 

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    </p>
     <form action="ContattaArtista" method="post"  style=" margin-top: -50px;">
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label ><%= artists.get(1) %></input></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=huc.getArtist(artists.get(1)).getDescription() %></textarea></h3>
<input id="name" name="name" value="<%= artists.get(1) %>"; style="display:none;"></input>
  <button name="Dona" style="height: 35px; width: 90px; margin-left: 1030px; background-color: #4d4d4d;">Contatta</button> </form>
 
 

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade style="margin-top: 100px;">
  
  
  
  
  
  
  
    <p style="margin-top: 300px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

 

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    </p>
     <form action="ContattaArtista" method="post"  style=" margin-top: -50px;">
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label ><%= artists.get(2) %></input></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=huc.getArtist(artists.get(2)).getDescription() %></textarea></h3>
<input id="name" name="name" value="<%= artists.get(2) %>"; style="display:none;"></input>
  <button name="Dona" style="height: 35px; width: 90px; margin-left: 1030px; background-color: #4d4d4d;">Contatta</button> </form>
 

 

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade style="margin-top: 100px;">
  
   <form action="&lt;%= request.getContextPath() %&gt;/register" method="post">
        <p style="margin-top:65px;margin-left:410px;"><button name="Chart" style="height: 35px; width: 95px; margin-top: -48px; margin-left: 160px;background-color: #4D4D4D;">Vedi altri</button></p>
      </form>
  </body>
</html>
