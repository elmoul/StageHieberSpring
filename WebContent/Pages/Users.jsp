
<%@ include file="header.jsp" %>
  
<div class="container-fluid text-center" >    
  <div class="row content">
   <%@ include file="menu.jsp" %>
    
    <div class="col-sm-9 text-left ">
      	  <div class="col-sm-12 col-md-12 " style="margin-top:10px;font-size:2ew;color:#989898">
      	  <p>>Gestion des profiles/Lister tous les utilisateur</p><hr>
      	  </div>
      	  <div  class="col-sm-12 col-md-12 "  style="margin:8px;background-color:#f1f1f1;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;">
	      	  <div class="col-sm-12 col-md-12">
	      	  	<h2>Liste des utilisateurs</h2><hr style="border-color: #fff">
	      	  </div>
	      	  <div class="col-sm-12 col-md-12" >
		        <form class="navbar-form" role="search">
			        <div class="input-group" 	>
			           <h2> <input type="search" class="light-table-filter form-control" data-table="order-table" placeholder="Search"  ></h2>
			        </div>
		        </form>
	  		  </div>
	  		  <div class="col-sm-12 col-md-12" style="overflow: scroll !important;">
	      	  		 <table class="table order-table  sortable table-bordered col-sm-12 col-md-12" id="table" style="margin:10px;background-color:#fff;width:100%">
					    <thead>
					      <tr>
					      	<th>#</th>
					        <th>nom</th>
					        <th>prenom</th>
					        <th>email</th>
					        <th></th>
					        
					      </tr>
					    </thead>
					    <tbody>
					     	<c:forEach items="${listUsers}" var="user">
								<tr>
									<td>${user.id }</td>
									<td>${user.nom }</td>
									<td>${user.prenom }</td>
									<td>${user.email }</td>
									<td >
									 <div style="float: right;">
									  <a href="viewUser.aspx?id=${user.id }"><i class="fa fa-eye" ></i></a>
						              <a href="#"><i class="fa fa-pencil"></i></a>
						              <a href="deleteUser.aspx?id=${user.id }" ><i class="fa fa-trash"></i></a>
						             </div>
						            </td>
								</tr>
								
							</c:forEach>
					    </tbody>
					  </table>
			    
	      	  	</div>
	      	  </div>			           
		 </div>
    
  </div>
 
</div>

</body>
</html>




