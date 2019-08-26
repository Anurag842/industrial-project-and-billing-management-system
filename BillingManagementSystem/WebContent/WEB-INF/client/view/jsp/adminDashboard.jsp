<script type="text/javascript" >
   	function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
<jsp:include page="header.jsp"/>
    <div class="wrapper">
       	<jsp:include page="sidenav.jsp"/>
        <div id="content">
           <jsp:include page="navbar.jsp"/>   
		   <div align= "center" >
				<h1>Welcome ${userObj.developerName}</h1><br>
				<!-- <form action="mark">
					<button type="submit" class="btn btn-primary">Mark Attendance</button>
				</form> -->
			</div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>

       
