<%@page isELIgnored="false" %>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <div class="container-fluid">

         <button type="button" id="sidebarCollapse" class="navbar-btn">
         <span></span>
         <span></span>
         <span></span>
         </button>
         <h1 style="padding: 20px 50px">Billing Management System</h1>
         <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
             <i class="fas fa-align-justify"></i>
         </button>

         <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <ul class="nav navbar-nav ml-auto">
                 <li class="nav-item active">
                     <a class="nav-link" href="#">
                       <i class="fas fa-user"></i>
                       ${sessionScope.userObj.developerName }</a>
                 </li>
                 <li class="nav-item">
                     <a class="nav-link" href="logout">
                       <i class="fas fa-sign-out-alt"></i>
                       Logout</a>
                 </li>

             </ul>
         </div>
     </div>
 </nav> 