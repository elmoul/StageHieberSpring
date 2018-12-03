

<%@ include file="header.jsp" %>

<div class="container-fluid text-center">    
  <div class="row content">
    <%@ include file="menu.jsp" %>
 
   <div class="col-sm-8 text-left">
      <div class="container" >
		  <div class="col-sm-12 col-md-12 " style="margin-top:10px;font-size:2ew;color:#989898">
      	  <p>>Gestion des profiles/Lister tous les utilisateur /${user.nom} ${user.prenom}  </p><hr style="width:100%">
      	  </div>
      	 	<div class="col-sm-12 col-md-12" >
	      	 
				  	<ul class="nav nav-tabs faq-cat-tabs">
		                <li class="active"><a href="#faq-cat-1" data-toggle="tab">Info personel</a></li>
		                <li><a href="#faq-cat-2" data-toggle="tab">Projets</a></li>
		                <li><a href="#faq-cat-3" data-toggle="tab">Taches</a></li>
		            </ul>
		    
		            <!-- Tab panes -->
		            <div class="tab-content faq-cat-content">
		                <div class="tab-pane active in fade" id="faq-cat-1">
		                    <div class="panel-group" id="accordion-cat-1">
		                       <div class="row" style="margin-top:40px">
								    <!-- left column -->
								    <div class="col-md-3 col-sm-6 col-xs-12">
								      <div class="text-center">
								        <img src="includes/images/default_img.png" class="avatar img-circle img-thumbnail" alt="avatar">
								        
								      </div>
								    </div>
								    <!-- edit form column -->
								    <div class="col-md-9 col-sm-6 col-xs-12 personal-info">
								      
								     
								      <form class="form-horizontal" role="form">
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Nom:</label>
								          <div class="col-lg-8">
								            <label class=" form-control">${user.nom }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Prenom:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${user.prenom }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Email:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${user.email }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Role:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${user.role }</label>
								          </div>
								        </div>
								       	<div class="form-group">
								          <label class="col-lg-3 control-label">Type:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${type.libelle }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Telephone:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${user.tel }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-lg-3 control-label">Adresse:</label>
								          <div class="col-lg-8">
								             <label class=" form-control">${user.adresse }-${user.ville}</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-md-3 control-label">Username:</label>
								          <div class="col-md-8">
								            <label class=" form-control">${user.username }</label>
								          </div>
								        </div>
								        <div class="form-group">
								          <label class="col-md-3 control-label">Password:</label>
								          <div class="col-md-8">
								            <label class=" form-control">${user.password }</label>
								          </div>
								        </div>
								      </form>
								    </div>
								  </div>
			
		                    </div>
		                </div>
		                <div class="tab-pane fade" id="faq-cat-2">
		                    <div class="panel-group" id="accordion-cat-2">
		                        2
		                    </div>
		                </div>
		                <div class="tab-pane fade" id="faq-cat-3">
		                    <div class="panel-group" id="accordion-cat-3">
		                        3
		                    </div>
		                </div>
		            </div>
			</div>
      	</div>
    </div>
    
  </div>
</div>

</body>
</html>




