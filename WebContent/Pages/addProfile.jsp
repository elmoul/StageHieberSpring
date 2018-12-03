

<%@ include file="header.jsp" %>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <%@ include file="menu.jsp" %>

	 
   <div class="col-sm-8 text-left">
      	  <div class="col-sm-12 col-md-12 " style="margin-top:10px;font-size:2ew;color:#989898">
      	  <p>>Gestion des profiles/ajouter un profile</p><hr>
      	  </div>
      	  <div class="col-sm-12 col-md-12"  style="margin:8px;background-color:#f1f1f1;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;padding-bottom:10px">
	      	  <div class="col-sm-12 col-md-12">
	      	  	<h2>Ajouter un Profile</h2><hr style="border-color:#fff">
	      	  	<p style="color:#989898">Les champs en (*) sont obligatoires</p>
	      	  </div>
	      	  <div class="col-sm-12 col-md-12">
	      	  	  <form action="ajoutProfile.aspx" method="post">
					    <div class="form-group col-sm-12 col-md-12 col-xs-12">
					      <label for="nom">Libellé*:</label>
					      <input type="text" class="form-control" name="libelle" placeholder="Enter libellé">
					    </div>
					   
					    <button type="submit" class="btn btn-default">Submit</button>
					    
				  </form>
	      	  </div>
      	  </div>
    </div>
    
  </div>
</div>

</body>
</html>




