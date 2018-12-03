 <div class="col-sm-2 sidenav navbar-header" style="display: block !important;height: 100%;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;">
		<div id="myNavbar" class=" sidebar-nav text-left">
		    <h4><i class="glyphicon glyphicon-home"></i>
		        <small><b>MANAGEMENT</b></small>
		    </h4>
		    <ul class="nav nav-pills nav-stacked">
		        <li><a href="redirect.aspx?page=home">Home</a></li>
		    </ul>
		    <h4><i class="glyphicon glyphicon-user"></i>
		        <small><b>Gestion des profiles</b></small>
		    </h4>
		    <ul class="nav nav-pills nav-stacked">
		        <li <c:if test="${page == 'users'}">class="active"</c:if> ><a href="redirect.aspx?page=allUsers">Lister utilisateurs</a></li>
		        <li <c:if test="${page == 'addUser'}">class="active"</c:if> ><a href="redirect.aspx?page=addUser">Ajouter utilisateur</a></li>
		        <li <c:if test="${page == 'profiles'}">class="active"</c:if> ><a href="redirect.aspx?page=allProfiles">Lister profiles</a></li>
		        <li <c:if test="${page == 'addProfile'}">class="active"</c:if> ><a href="redirect.aspx?page=addProfile">Ajouter profile</a></li>
		    </ul>
		</div>
    </div>