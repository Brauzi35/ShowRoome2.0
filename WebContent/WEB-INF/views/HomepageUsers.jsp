<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
     
    <%@page import = " web.entity.Artist" %>
    <%@page import = " logic.bean.EventBean" %>
    <%@page import = " logic.bean.ArtistBean" %>
    <%@page import = " logic.utils.SessionUser" %>
    <%@ page import = "java.util.List" %>
        <%@page import = " logic.applicationController.HomepageUserController" %>
    <%	HomepageUserController huc = new HomepageUserController(); %>
<%		List<EventBean> events = huc.liveEventsList();
	SessionUser su = SessionUser.getInstance();
    String username = su.getUsername();
%>
  

<!DOCTYPE html>
<html>

  <head>
   <script src="https://www.paypal.com/sdk/js?currency=EUR&client-id=ASMN00dOM4cH1cFqKX7v1J9auNbG9yaEt2g31rZ4ID8RE8RWmNxdFrT3UEaXWUgS1x510P4QH2SJj7eX"> </script>
      <div style="background-color: green; display: none" id="transition">Grazie per il tuo pagamento!</div>

  

 
 
    <title>Prova</title>
  </head>
  <body style=" height: 512px; background-color: white;"><img src="https://image.flaticon.com/icons/png/512/26/26362.png"

      alt="" style="width: 93px; height: 73px; margin-left: -2px;"><br>
   
    <h1 style="margin-top: -45.5667px; margin-left: 115px;">  Showroome</h1>  
   
     

                                      
    <h1 style="margin-top:84px;margin-left:3px;">
     
      <form action="TastoChart" method="post">
        <p style="margin-top:-74px;margin-left:170px;"><input id="Submit" name="Chart" type="submit" value="Chart" " style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 570px;background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="TastoMap" method="post">
        <p style="margin-top:-74px;margin-left:-170px;"><input id="Submit" name="Map" type="submit" value="Map"  style="height: 35px ; width: 95px; margin-top: -48px; margin-left: 570px;background-color: #4D4D4D;"></input>
        </p>
      </form>
      <form action="Homepage" method="post">
        <p style="margin-top:-74px;margin-left:-555px;"><input id="Submit" type="submit" name="Homepage" value="Homepage" style="height: 35px ; width: 95px; margin-top: -46px; margin-left: 570px;color:white; background-color: #4D4D4D;"></input>
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
     </h1>
    <h1 style="margin-top: -159px; margin-left: 1170px;">
      <input readonly="readonly" value=<%= username %> size="65" maxlength="40" ;style="margin-left: 100px; type="text">
    </h1>
   
    <!-- Primo artista  -->
   
    <p style="margin-top: 300px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    
    </p>
 
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label form="Descrizione artista">    <%=events.get(0).getArtist() %>
    </label></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=events.get(0).getDescription() %>
</textarea></h3>
   


      <input type="text" id="payInput0"  style="height: 35px; width: 90px; margin-top: -90px; margin-left: 1030px; "  /><button id="Dona" onClick="generatePayment0(document.getElementById('payInput0').value)">Dona</button></input> 
  <form action="Tasto2servlet" method="post">   <button name="Informazioni" style="height: 35px; width: 90px; margin-top: 20px; margin-left: 1030px; background-color: #4d4d4d;">Informazioni</button></form>
 <label form="Strada artista" style=" margin-top: px;margin-left: 300px;">-<%=huc.getPlace(events.get(0).getPlace()).getAddress()  %></label>
     <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"><%=huc.getArtist(events.get(0).getArtist()).getTalent() %></label>
         <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"></label>

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade>

<!-- secondo artista --> 

    
 
 
  
   <p style="margin-top: 300px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    
    </p>
 
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label form="Descrizione artista">    <%=events.get(1).getArtist() %>
    </label></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=events.get(1).getDescription() %>
</textarea></h3>
   


      <input type="text" id="payInput1"  style="height: 35px; width: 90px; margin-top: -90px; margin-left: 1030px; "  /><button id="Dona" onClick="generatePayment1(document.getElementById('payInput1').value)">Dona</button></input> 
  <form action="Tasto2servlet" method="post">   <button name="Informazioni" style="height: 35px; width: 90px; margin-top: 20px; margin-left: 1030px; background-color: #4d4d4d;">Informazioni</button></form>
 <label form="Strada artista" style=" margin-top: px;margin-left: 300px;">-<%=huc.getPlace(events.get(1).getPlace()).getAddress()  %></label>
     <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"><%=huc.getArtist(events.get(1).getArtist()).getTalent() %></label>
         <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"></label>

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade>
  
  
  <!-- terzo artista  -->
  
  
   <p style="margin-top: 300px; margin-left: 5px;"> <img src="https://www.focusjunior.it/content/uploads/2018/10/Michelangelo-Buonarroti.jpg"

        h1="" style="width: 235px; height: 155px; margin-left: -4px; margin-top: -357px;">
    
    </p>
 
    <h2 style=" margin-top: -180px;margin-left: 300px;"> <label form="Descrizione artista">    <%=events.get(2).getArtist() %>
    </label></h2>
    <h3 style=" margin-top: px;margin-left: 300px;"> <textarea id="story" name="story" style=" resize: none ;"rows="5" cols="80" readonly disabled="disabled">
<%=events.get(2).getDescription() %>
</textarea></h3>
   


      <input type="text" id="payInput2"  style="height: 35px; width: 90px; margin-top: -90px; margin-left: 1030px; "  /><button id="Dona" onClick="generatePayment2(document.getElementById('payInput2').value)">Dona</button></input> 
  <form action="Tasto2servlet" method="post">   <button name="Informazioni" style="height: 35px; width: 90px; margin-top: 20px; margin-left: 1030px; background-color: #4d4d4d;">Informazioni</button></form>
 <label form="Strada artista" style=" margin-top: px;margin-left: 300px;">-<%=huc.getPlace(events.get(2).getPlace()).getAddress()  %></label>
     <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"><%=huc.getArtist(events.get(2).getArtist()).getTalent() %></label>
         <label form="Tipo di artista" style=" margin-top: px;margin-left: 50px;"></label>

    <hr align=”left” size=”1″ width=”300″ color=”white” noshade>
  
   <form action="&lt;%= request.getContextPath() %&gt;/register" method="post">
        <p style="margin-top:65px;margin-left:410px;"><button name="Chart" style="height: 35px; width: 95px; margin-top: -48px; margin-left: 160px;background-color: #4D4D4D;">Vedi altri</button></p>
      </form>

  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
   

 
     <div id="paypal-button-container0"  style="margin-top: 200px; margin-left: 1000px; width: 115px;height: 85px; fundingicons: 'true';"fundingicons: 'true'> </div>
      <div id="paypal-button-container1"  style="margin-top:300px; margin-left: 1000px; width: 115px;height: 85px; fundingicons: 'true';"fundingicons: 'true'> </div>
      <div id="paypal-button-container2"  style="margin-top:60px; margin-left: 1000px; width: 115px;height: 85px; fundingicons: 'true';"fundingicons: 'true'> </div>
 
   <script>
  function  generatePayment0(value){
    if(value==""){
	alert("inserire un importo");
	return;
	}
	paypal.Buttons({
		 style: {
			  layout: 'horizontal',
			  fundingicons: 'true',
		  },
	createOrder: function(data, actions){
	return actions.order.create({
	purchase_units: [{
	  amount: {
	  value : value
	  }
	  }]
	  });
	  },
	  onApprove : function(data, actions){
	  return actions.order.capture().then(function(details){
	    document.getElementById("transition").style.display = "block";
	  });
	  }
	 
	  }).render('#paypal-button-container0');
	 document.getElementById("Dona").disabled = true;
	 document.getElementById("payInput0").disabled = true;
	  }
	  </script>
 
   <script>
  function  generatePayment1(value){
    if(value==""){
	alert("inserire un importo");
	return;
	}
	paypal.Buttons({
		 style: {
			  layout: 'horizontal',
			  fundingicons: 'true',
		  },
	createOrder: function(data, actions){
	return actions.order.create({
	purchase_units: [{
	  amount: {
	  value : value
	  }
	  }]
	  });
	  },
	  onApprove : function(data, actions){
	  return actions.order.capture().then(function(details){
	    document.getElementById("transition").style.display = "block";
	  });
	  }
	 
	  }).render('#paypal-button-container1');
	 document.getElementById("Dona").disabled = true;
	 document.getElementById("payInput1").disabled = true;
	  }
	  </script>
  
  
  <script>
  function  generatePayment2(value){
    if(value==""){
	alert("inserire un importo");
	return;
	}
	paypal.Buttons({
		 style: {
			  layout: 'horizontal',
			  fundingicons: 'true',
		  },
	createOrder: function(data, actions){
	return actions.order.create({
	purchase_units: [{
	  amount: {
	  value : value
	  }
	  }]
	  });
	  },
	  onApprove : function(data, actions){
	  return actions.order.capture().then(function(details){
	    document.getElementById("transition").style.display = "block";
	  });
	  }
	 
	  }).render('#paypal-button-container2');
	 document.getElementById("Dona").disabled = true;
	 document.getElementById("payInput2").disabled = true;
	  }
	  </script>
  
  </body>
</html>
