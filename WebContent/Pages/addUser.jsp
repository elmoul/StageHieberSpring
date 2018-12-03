

<%@ include file="header.jsp" %>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <%@ include file="menu.jsp" %>

	 
   <div class="col-sm-8 text-left">
      	  <div class="col-sm-12 col-md-12 " style="margin-top:10px;font-size:2ew;color:#989898">
      	  <p>>Gestion des profiles/ajouter un utilisateur</p><hr>
      	  </div>
      	  <div class="col-sm-12 col-md-12"  style="margin:8px;background-color:#f1f1f1;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;padding-bottom:10px">
	      	  <div class="col-sm-12 col-md-12">
	      	  	<h2>Ajouter un utilisateur</h2><hr style="border-color:#fff">
	      	  	<p style="color:#989898">Les champs en (*) sont obligatoires</p>
	      	  </div>
	      	  <div class="col-sm-12 col-md-12">
	      	  	  <form action="ajoutUser.aspx" method="post">
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="nom">Nom*:</label>
					      <input type="text" class="form-control" name="nom" placeholder="Enter nom">
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="Prenom">Prenom*:</label>
					      <input type="text" class="form-control" name="prenom" placeholder="Enter Prenom">
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="email">Email*:</label>
					      <input type="email" class="form-control" name="email" placeholder="Enter email">
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="Role">Role*:</label>
					      <select class="form-control" name="role">
						    <option value="">nothing selected</option>
						    <option value="administrateur">Administrateur</option>
						    <option value="annonyme">Annonyme</option>
						    <option value="invite">Invité</option>
						    <option value="Intervenant sur les projets">Intervenant sur les projets</option>
						  </select>
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="Type:">Type*:</label>
					      <select class="form-control" name="type">
						    <option value="">nothing selected</option>
						    <c:forEach items="${listProfiles}" var="profile">
								<option value="${profile.id }">${profile.libelle }</option>	
							</c:forEach>
						  </select>
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="Username">Username*:</label>
					      <input type="text" class="form-control" name="username" placeholder="Enter Username">
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="pwd">Password*:</label>
					      <input type="password" class="form-control" name="password" id="txtNewPassword" placeholder="Enter password">
					    </div>
					    <div class="form-group col-sm-6 col-md-6 col-xs-12">
					      <label for="pwd">repeat Password*:</label>
					      <input type="password" class="form-control" name="pass" id="txtConfirmPassword" onChange="checkPasswordMatch();" placeholder="Enter password">
					    </div>
					   
					    <button type="submit" class="btn btn-default">Submit</button>
					    <div class="registrationFormAlert" id="divCheckPasswordMatch">
						</div>
				  </form>
	      	  </div>
      	  </div>
    </div>
    
  </div>
</div>

</body>
</html>




